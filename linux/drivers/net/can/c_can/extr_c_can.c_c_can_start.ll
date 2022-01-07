; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pinctrl = type { i32 }

@BOSCH_D_CAN = common dso_local global i64 0, align 8
@IF_COMM_RCV_LOW = common dso_local global i32 0, align 4
@IF_COMM_RCV_HIGH = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @c_can_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_start(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.c_can_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.c_can_priv* %8, %struct.c_can_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @c_can_chip_config(%struct.net_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %17 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BOSCH_D_CAN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @IF_COMM_RCV_LOW, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @IF_COMM_RCV_HIGH, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %28 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %30 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %31 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %34 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.pinctrl* @pinctrl_get_select(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.pinctrl* %36, %struct.pinctrl** %6, align 8
  %37 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %38 = call i32 @IS_ERR(%struct.pinctrl* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load %struct.pinctrl*, %struct.pinctrl** %6, align 8
  %42 = call i32 @pinctrl_put(%struct.pinctrl* %41)
  br label %48

43:                                               ; preds = %25
  %44 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %45 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pinctrl_pm_select_default_state(i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @c_can_chip_config(%struct.net_device*) #1

declare dso_local %struct.pinctrl* @pinctrl_get_select(i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.pinctrl*) #1

declare dso_local i32 @pinctrl_put(%struct.pinctrl*) #1

declare dso_local i32 @pinctrl_pm_select_default_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
