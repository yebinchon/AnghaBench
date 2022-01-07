; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_cqe_issue_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_queue.c_mmc_cqe_issue_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.request = type { i32 }

@MMC_ISSUE_SYNC = common dso_local global i32 0, align 4
@MMC_ISSUE_DCMD = common dso_local global i32 0, align 4
@MMC_ISSUE_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.request*)* @mmc_cqe_issue_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_cqe_issue_type(%struct.mmc_host* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.request*, %struct.request** %5, align 8
  %7 = call i32 @req_op(%struct.request* %6)
  switch i32 %7, label %20 [
    i32 131, label %8
    i32 130, label %8
    i32 132, label %8
    i32 128, label %8
    i32 129, label %10
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load i32, i32* @MMC_ISSUE_SYNC, align 4
  store i32 %9, i32* %3, align 4
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %12 = call i32 @mmc_cqe_can_dcmd(%struct.mmc_host* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @MMC_ISSUE_DCMD, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @MMC_ISSUE_SYNC, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MMC_ISSUE_ASYNC, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @mmc_cqe_can_dcmd(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
