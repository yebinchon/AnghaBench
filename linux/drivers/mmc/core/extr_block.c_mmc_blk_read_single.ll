; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_read_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_read_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.mmc_card* }
%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { i32 }
%struct.mmc_queue_req = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mmc_request }
%struct.mmc_request = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32*, i64 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@MMC_READ_SINGLE_RETRIES = common dso_local global i32 0, align 4
@CMD_ERRORS = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@MMC_MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_queue*, %struct.request*)* @mmc_blk_read_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_blk_read_single(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.mmc_queue_req*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = call %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request* %13)
  store %struct.mmc_queue_req* %14, %struct.mmc_queue_req** %5, align 8
  %15 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.mmc_request* %17, %struct.mmc_request** %6, align 8
  %18 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %18, i32 0, i32 0
  %20 = load %struct.mmc_card*, %struct.mmc_card** %19, align 8
  store %struct.mmc_card* %20, %struct.mmc_card** %7, align 8
  %21 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = load %struct.mmc_host*, %struct.mmc_host** %22, align 8
  store %struct.mmc_host* %23, %struct.mmc_host** %8, align 8
  %24 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %106, %2
  %26 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %27 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %28 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %29 = call i32 @mmc_blk_rw_rq_prep(%struct.mmc_queue_req* %26, %struct.mmc_card* %27, i32 1, %struct.mmc_queue* %28)
  %30 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %31 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %32 = call i32 @mmc_wait_for_req(%struct.mmc_host* %30, %struct.mmc_request* %31)
  %33 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %34 = call i32 @mmc_send_status(%struct.mmc_card* %33, i32* %11)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %112

38:                                               ; preds = %25
  %39 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %40 = call i32 @mmc_host_is_spi(%struct.mmc_host* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @mmc_blk_in_tran_state(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = call i32 @mmc_blk_fix_state(%struct.mmc_card* %47, %struct.request* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %112

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %42, %38
  %55 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %56 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @MMC_READ_SINGLE_RETRIES, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %106

67:                                               ; preds = %61, %54
  store i32 0, i32* %10, align 4
  %68 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %69 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %67
  %75 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %76 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %74
  %82 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %83 = call i32 @mmc_host_is_spi(%struct.mmc_host* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %81
  %86 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %87 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CMD_ERRORS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @CMD_ERRORS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96, %85, %74, %67
  %102 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %102, i32* %9, align 4
  br label %105

103:                                              ; preds = %96, %81
  %104 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %66
  %107 = load %struct.request*, %struct.request** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @blk_update_request(%struct.request* %107, i32 %108, i32 512)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %25, label %111

111:                                              ; preds = %106
  br label %131

112:                                              ; preds = %52, %37
  %113 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %114 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.request*, %struct.request** %4, align 8
  %118 = load i32, i32* @BLK_STS_IOERR, align 4
  %119 = call i64 @blk_update_request(%struct.request* %117, i32 %118, i32 512)
  %120 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %121 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MMC_MAX_RETRIES, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = load i32, i32* @MMC_MAX_RETRIES, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load %struct.mmc_queue_req*, %struct.mmc_queue_req** %5, align 8
  %130 = getelementptr inbounds %struct.mmc_queue_req, %struct.mmc_queue_req* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %111, %126, %112
  ret void
}

declare dso_local %struct.mmc_queue_req* @req_to_mmc_queue_req(%struct.request*) #1

declare dso_local i32 @mmc_blk_rw_rq_prep(%struct.mmc_queue_req*, %struct.mmc_card*, i32, %struct.mmc_queue*) #1

declare dso_local i32 @mmc_wait_for_req(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_send_status(%struct.mmc_card*, i32*) #1

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_blk_in_tran_state(i32) #1

declare dso_local i32 @mmc_blk_fix_state(%struct.mmc_card*, %struct.request*) #1

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
