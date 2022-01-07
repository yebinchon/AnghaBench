; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_bus_status_to_can_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_bus_status_to_can_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32 }
%struct.can_berr_counter = type { i32, i32 }

@KVASER_USB_HYDRA_BUS_BUS_OFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_BUS_ERR_PASS = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_BUS_ERR_ACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ERR_ACTIVE but err tx=%u or rx=%u >=128\0A\00", align 1
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb_net_priv*, i32, %struct.can_berr_counter*, i32*)* @kvaser_usb_hydra_bus_status_to_can_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_bus_status_to_can_state(%struct.kvaser_usb_net_priv* %0, i32 %1, %struct.can_berr_counter* %2, i32* %3) #0 {
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.can_berr_counter*, align 8
  %8 = alloca i32*, align 8
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.can_berr_counter* %2, %struct.can_berr_counter** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @KVASER_USB_HYDRA_BUS_BUS_OFF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  br label %71

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @KVASER_USB_HYDRA_BUS_ERR_PASS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %70

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @KVASER_USB_HYDRA_BUS_ERR_ACT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %30 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 128
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %35 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 128
  br i1 %37, label %38, label %51

38:                                               ; preds = %33, %28
  %39 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %40 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %43 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %46 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netdev_warn(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %68

51:                                               ; preds = %33
  %52 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %53 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 96
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.can_berr_counter*, %struct.can_berr_counter** %7, align 8
  %58 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 96
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %38
  br label %69

69:                                               ; preds = %68, %24
  br label %70

70:                                               ; preds = %69, %21
  br label %71

71:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
