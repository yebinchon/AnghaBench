; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_ctx_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_ctx_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.mmc_ctx* }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ctx*, %struct.task_struct*)* @mmc_ctx_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_ctx_matches(%struct.mmc_host* %0, %struct.mmc_ctx* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ctx*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ctx* %1, %struct.mmc_ctx** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 0
  %9 = load %struct.mmc_ctx*, %struct.mmc_ctx** %8, align 8
  %10 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %11 = icmp eq %struct.mmc_ctx* %9, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %3
  %13 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %14 = icmp ne %struct.mmc_ctx* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  %21 = load %struct.mmc_ctx*, %struct.mmc_ctx** %20, align 8
  %22 = getelementptr inbounds %struct.mmc_ctx, %struct.mmc_ctx* %21, i32 0, i32 0
  %23 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = icmp eq %struct.task_struct* %23, %24
  br label %26

26:                                               ; preds = %18, %15, %12
  %27 = phi i1 [ false, %15 ], [ false, %12 ], [ %25, %18 ]
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i1 [ true, %3 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
