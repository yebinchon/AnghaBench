; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_submit_scat_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_submit_scat_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hif_scatter_req = type { i64, i32, i64, i32 (i32, %struct.hif_scatter_req*)*, i32, i32, i32 }

@HIF_RD_SYNC_BLOCK_FIX = common dso_local global i32 0, align 4
@HIF_WR_ASYNC_BLOCK_INC = common dso_local global i32 0, align 4
@HIF_MBOX_WIDTH = common dso_local global i64 0, align 8
@ATH6KL_DBG_HIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"hif submit scatter request entries %d len %d mbox 0x%x %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_hif_submit_scat_req(%struct.ath6kl_device* %0, %struct.hif_scatter_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl_device*, align 8
  %6 = alloca %struct.hif_scatter_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %5, align 8
  store %struct.hif_scatter_req* %1, %struct.hif_scatter_req** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* @HIF_RD_SYNC_BLOCK_FIX, align 4
  %13 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %14 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %16 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %22 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  br label %50

23:                                               ; preds = %3
  %24 = load i32, i32* @HIF_WR_ASYNC_BLOCK_INC, align 4
  %25 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %26 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %28 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HIF_MBOX_WIDTH, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %34 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %46

39:                                               ; preds = %23
  %40 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %41 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i32 [ %38, %32 ], [ %45, %39 ]
  %48 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %49 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %11
  %51 = load i32, i32* @ATH6KL_DBG_HIF, align 4
  %52 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %53 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %56 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %59 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %70 = call i32 @ath6kl_dbg(i32 %51, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57, i32 %60, i8* %65, i8* %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %50
  %74 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %75 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %80 = call i8* @ath6kl_hif_cp_scat_dma_buf(%struct.hif_scatter_req* %79, i32 0)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %87 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %89 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %88, i32 0, i32 3
  %90 = load i32 (i32, %struct.hif_scatter_req*)*, i32 (i32, %struct.hif_scatter_req*)** %89, align 8
  %91 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %92 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %97 = call i32 %90(i32 %95, %struct.hif_scatter_req* %96)
  store i32 0, i32* %4, align 4
  br label %127

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %73, %50
  %100 = load %struct.ath6kl_device*, %struct.ath6kl_device** %5, align 8
  %101 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %104 = call i32 @ath6kl_hif_scat_req_rw(%struct.TYPE_4__* %102, %struct.hif_scatter_req* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %110 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %107
  %114 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %115 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %120 = call i8* @ath6kl_hif_cp_scat_dma_buf(%struct.hif_scatter_req* %119, i32 1)
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %6, align 8
  %123 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %118, %113, %107
  br label %125

125:                                              ; preds = %124, %99
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %84
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i64, i32, i8*, i8*) #1

declare dso_local i8* @ath6kl_hif_cp_scat_dma_buf(%struct.hif_scatter_req*, i32) #1

declare dso_local i32 @ath6kl_hif_scat_req_rw(%struct.TYPE_4__*, %struct.hif_scatter_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
