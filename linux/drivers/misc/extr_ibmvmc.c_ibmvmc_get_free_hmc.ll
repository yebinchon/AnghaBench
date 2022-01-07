; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_get_free_hmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_get_free_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ibmvmc_hmc = type { i64, i64, i32 }

@ibmvmc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hmcs = common dso_local global %struct.ibmvmc_hmc* null, align 8
@ibmhmc_state_free = common dso_local global i64 0, align 8
@ibmhmc_state_initial = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibmvmc_hmc* ()* @ibmvmc_get_free_hmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibmvmc_hmc* @ibmvmc_get_free_hmc() #0 {
  %1 = alloca %struct.ibmvmc_hmc*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %49, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ibmvmc, i32 0, i32 0), align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  %9 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %9, i64 %10
  %12 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %11, i32 0, i32 2
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %15, i64 %16
  %18 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ibmhmc_state_free, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %8
  %23 = load i64, i64* %2, align 8
  %24 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %24, i64 %25
  %27 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %26, i32 0, i32 1
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* @ibmhmc_state_initial, align 8
  %29 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %29, i64 %30
  %32 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %31, i32 0, i32 0
  store i64 %28, i64* %32, align 8
  %33 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %33, i64 %34
  %36 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %35, i32 0, i32 2
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %39, i64 %40
  store %struct.ibmvmc_hmc* %41, %struct.ibmvmc_hmc** %1, align 8
  br label %53

42:                                               ; preds = %8
  %43 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %44 = load i64, i64* %2, align 8
  %45 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %43, i64 %44
  %46 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %45, i32 0, i32 2
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %2, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %2, align 8
  br label %4

52:                                               ; preds = %4
  store %struct.ibmvmc_hmc* null, %struct.ibmvmc_hmc** %1, align 8
  br label %53

53:                                               ; preds = %52, %22
  %54 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %1, align 8
  ret %struct.ibmvmc_hmc* %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
