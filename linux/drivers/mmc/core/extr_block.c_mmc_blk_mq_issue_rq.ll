; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_issue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_mq_issue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { i32, %struct.mmc_blk_data* }
%struct.mmc_blk_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_card* }
%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.request = type { i32 }

@MMC_REQ_FAILED_TO_START = common dso_local global i32 0, align 4
@MMC_REQ_BUSY = common dso_local global i32 0, align 4
@MMC_REQ_FINISHED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC_REQ_STARTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_blk_mq_issue_rq(%struct.mmc_queue* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.mmc_blk_data*, align 8
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_queue* %0, %struct.mmc_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %10 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %10, i32 0, i32 1
  %12 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %11, align 8
  store %struct.mmc_blk_data* %12, %struct.mmc_blk_data** %6, align 8
  %13 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %6, align 8
  %14 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mmc_card*, %struct.mmc_card** %15, align 8
  store %struct.mmc_card* %16, %struct.mmc_card** %7, align 8
  %17 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 0
  %19 = load %struct.mmc_host*, %struct.mmc_host** %18, align 8
  store %struct.mmc_host* %19, %struct.mmc_host** %8, align 8
  %20 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %21 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %6, align 8
  %22 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mmc_blk_part_switch(%struct.mmc_card* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MMC_REQ_FAILED_TO_START, align 4
  store i32 %28, i32* %3, align 4
  br label %109

29:                                               ; preds = %2
  %30 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %31 = load %struct.request*, %struct.request** %5, align 8
  %32 = call i32 @mmc_issue_type(%struct.mmc_queue* %30, %struct.request* %31)
  switch i32 %32, label %106 [
    i32 135, label %33
    i32 136, label %65
    i32 137, label %65
  ]

33:                                               ; preds = %29
  %34 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %35 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %36 = call i32 @mmc_blk_wait_for_idle(%struct.mmc_queue* %34, %struct.mmc_host* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @MMC_REQ_BUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %109

41:                                               ; preds = %33
  %42 = load %struct.request*, %struct.request** %5, align 8
  %43 = call i32 @req_op(%struct.request* %42)
  switch i32 %43, label %60 [
    i32 133, label %44
    i32 132, label %44
    i32 134, label %48
    i32 129, label %52
    i32 131, label %56
  ]

44:                                               ; preds = %41, %41
  %45 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %46 = load %struct.request*, %struct.request** %5, align 8
  %47 = call i32 @mmc_blk_issue_drv_op(%struct.mmc_queue* %45, %struct.request* %46)
  br label %63

48:                                               ; preds = %41
  %49 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = call i32 @mmc_blk_issue_discard_rq(%struct.mmc_queue* %49, %struct.request* %50)
  br label %63

52:                                               ; preds = %41
  %53 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %54 = load %struct.request*, %struct.request** %5, align 8
  %55 = call i32 @mmc_blk_issue_secdiscard_rq(%struct.mmc_queue* %53, %struct.request* %54)
  br label %63

56:                                               ; preds = %41
  %57 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %58 = load %struct.request*, %struct.request** %5, align 8
  %59 = call i32 @mmc_blk_issue_flush(%struct.mmc_queue* %57, %struct.request* %58)
  br label %63

60:                                               ; preds = %41
  %61 = call i32 @WARN_ON_ONCE(i32 1)
  %62 = load i32, i32* @MMC_REQ_FAILED_TO_START, align 4
  store i32 %62, i32* %3, align 4
  br label %109

63:                                               ; preds = %56, %52, %48, %44
  %64 = load i32, i32* @MMC_REQ_FINISHED, align 4
  store i32 %64, i32* %3, align 4
  br label %109

65:                                               ; preds = %29, %29
  %66 = load %struct.request*, %struct.request** %5, align 8
  %67 = call i32 @req_op(%struct.request* %66)
  switch i32 %67, label %86 [
    i32 131, label %68
    i32 130, label %72
    i32 128, label %72
  ]

68:                                               ; preds = %65
  %69 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %70 = load %struct.request*, %struct.request** %5, align 8
  %71 = call i32 @mmc_blk_cqe_issue_flush(%struct.mmc_queue* %69, %struct.request* %70)
  store i32 %71, i32* %9, align 4
  br label %90

72:                                               ; preds = %65, %65
  %73 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %79 = load %struct.request*, %struct.request** %5, align 8
  %80 = call i32 @mmc_blk_cqe_issue_rw_rq(%struct.mmc_queue* %78, %struct.request* %79)
  store i32 %80, i32* %9, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.mmc_queue*, %struct.mmc_queue** %4, align 8
  %83 = load %struct.request*, %struct.request** %5, align 8
  %84 = call i32 @mmc_blk_mq_issue_rw_rq(%struct.mmc_queue* %82, %struct.request* %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %90

86:                                               ; preds = %65
  %87 = call i32 @WARN_ON_ONCE(i32 1)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %85, %68
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @MMC_REQ_STARTED, align 4
  store i32 %94, i32* %3, align 4
  br label %109

95:                                               ; preds = %90
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @MMC_REQ_BUSY, align 4
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @MMC_REQ_FAILED_TO_START, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %3, align 4
  br label %109

106:                                              ; preds = %29
  %107 = call i32 @WARN_ON_ONCE(i32 1)
  %108 = load i32, i32* @MMC_REQ_FAILED_TO_START, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %104, %93, %63, %60, %39, %27
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @mmc_blk_part_switch(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_issue_type(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_wait_for_idle(%struct.mmc_queue*, %struct.mmc_host*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @mmc_blk_issue_drv_op(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_issue_discard_rq(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_issue_secdiscard_rq(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_issue_flush(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mmc_blk_cqe_issue_flush(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_cqe_issue_rw_rq(%struct.mmc_queue*, %struct.request*) #1

declare dso_local i32 @mmc_blk_mq_issue_rw_rq(%struct.mmc_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
