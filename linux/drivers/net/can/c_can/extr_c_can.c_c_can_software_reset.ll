; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_software_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_software_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i64, i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32, i32)* }

@BOSCH_D_CAN = common dso_local global i64 0, align 8
@C_CAN_CTRL_REG = common dso_local global i32 0, align 4
@CONTROL_SWR = common dso_local global i32 0, align 4
@CONTROL_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CCTRL: software reset failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @c_can_software_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_software_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.c_can_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.c_can_priv* %7, %struct.c_can_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %9 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BOSCH_D_CAN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %16 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %15, i32 0, i32 2
  %17 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %16, align 8
  %18 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %19 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %20 = load i32, i32* @CONTROL_SWR, align 4
  %21 = load i32, i32* @CONTROL_INIT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 %17(%struct.c_can_priv* %18, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %44, %14
  %25 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %26 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %25, i32 0, i32 1
  %27 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %26, align 8
  %28 = load %struct.c_can_priv*, %struct.c_can_priv** %4, align 8
  %29 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %30 = call i32 %27(%struct.c_can_priv* %28, i32 %29)
  %31 = load i32, i32* @CONTROL_SWR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = call i32 @msleep(i32 20)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = icmp sgt i32 %36, 100
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netdev_err(%struct.net_device* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  br label %24

45:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %39, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
