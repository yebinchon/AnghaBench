; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_ctx_set_claimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_ctx_set_claimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.mmc_ctx*, %struct.mmc_ctx }
%struct.mmc_ctx = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ctx*, %struct.task_struct*)* @mmc_ctx_set_claimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_ctx_set_claimer(%struct.mmc_host* %0, %struct.mmc_ctx* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_ctx*, align 8
  %6 = alloca %struct.task_struct*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_ctx* %1, %struct.mmc_ctx** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 0
  %9 = load %struct.mmc_ctx*, %struct.mmc_ctx** %8, align 8
  %10 = icmp ne %struct.mmc_ctx* %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %13 = icmp ne %struct.mmc_ctx* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.mmc_ctx*, %struct.mmc_ctx** %5, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  store %struct.mmc_ctx* %15, %struct.mmc_ctx** %17, align 8
  br label %23

18:                                               ; preds = %11
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 1
  %21 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 0
  store %struct.mmc_ctx* %20, %struct.mmc_ctx** %22, align 8
  br label %23

23:                                               ; preds = %18, %14
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %26 = icmp ne %struct.task_struct* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 0
  %31 = load %struct.mmc_ctx*, %struct.mmc_ctx** %30, align 8
  %32 = getelementptr inbounds %struct.mmc_ctx, %struct.mmc_ctx* %31, i32 0, i32 0
  store %struct.task_struct* %28, %struct.task_struct** %32, align 8
  br label %33

33:                                               ; preds = %27, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
