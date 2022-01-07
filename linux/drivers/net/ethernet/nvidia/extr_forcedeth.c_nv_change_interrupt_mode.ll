; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_change_interrupt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_change_interrupt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i64, i64 }

@optimization_mode = common dso_local global i64 0, align 8
@NV_OPTIMIZATION_MODE_DYNAMIC = common dso_local global i64 0, align 8
@NV_DYNAMIC_THRESHOLD = common dso_local global i32 0, align 4
@NVREG_IRQMASK_CPU = common dso_local global i64 0, align 8
@NV_DYNAMIC_MAX_QUIET_COUNT = common dso_local global i64 0, align 8
@NVREG_IRQMASK_THROUGHPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nv_change_interrupt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_change_interrupt_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %6, align 8
  %9 = load i64, i64* @optimization_mode, align 8
  %10 = load i64, i64* @NV_OPTIMIZATION_MODE_DYNAMIC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NV_DYNAMIC_THRESHOLD, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %18 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NVREG_IRQMASK_CPU, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i64, i64* @NVREG_IRQMASK_CPU, align 8
  %26 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %27 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  store i32 1, i32* %3, align 4
  br label %54

28:                                               ; preds = %16
  br label %52

29:                                               ; preds = %12
  %30 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %31 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NV_DYNAMIC_MAX_QUIET_COUNT, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %37 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %51

40:                                               ; preds = %29
  %41 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %42 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NVREG_IRQMASK_THROUGHPUT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @NVREG_IRQMASK_THROUGHPUT, align 8
  %48 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %49 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  store i32 1, i32* %3, align 4
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %46, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
