; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpni_irq0_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpni_irq0_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_mc_device = type { i32, i32 }
%struct.net_device = type { i32 }

@DPNI_IRQ_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't get irq status (err %d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DPNI_IRQ_EVENT_LINK_CHANGED = common dso_local global i32 0, align 4
@DPNI_IRQ_EVENT_ENDPOINT_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dpni_irq0_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpni_irq0_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.fsl_mc_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %13)
  store %struct.fsl_mc_device* %14, %struct.fsl_mc_device** %8, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.net_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DPNI_IRQ_INDEX, align 4
  %24 = call i32 @dpni_get_irq_status(i32 %19, i32 0, i32 %22, i32 %23, i32* %6)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @netdev_err(%struct.net_device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %53

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DPNI_IRQ_EVENT_LINK_CHANGED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = call i32 @netdev_priv(%struct.net_device* %39)
  %41 = call i32 @link_state_update(i32 %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @DPNI_IRQ_EVENT_ENDPOINT_CHANGED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = call i32 @netdev_priv(%struct.net_device* %48)
  %50 = call i32 @set_mac_addr(i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dpni_get_irq_status(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @link_state_update(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_mac_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
