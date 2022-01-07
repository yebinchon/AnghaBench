; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_wait_for_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_wait_for_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)* }

@C_CAN_CTRL_REG = common dso_local global i32 0, align 4
@CONTROL_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CCTRL: set CONTROL_INIT failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.c_can_priv*, i32)* @c_can_wait_for_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_wait_for_ctrl_init(%struct.net_device* %0, %struct.c_can_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.c_can_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.c_can_priv* %1, %struct.c_can_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %12 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %11, i32 0, i32 0
  %13 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %12, align 8
  %14 = load %struct.c_can_priv*, %struct.c_can_priv** %6, align 8
  %15 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %16 = call i32 %13(%struct.c_can_priv* %14, i32 %15)
  %17 = load i32, i32* @CONTROL_INIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %10, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %9
  %21 = call i32 @udelay(i32 10)
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = icmp sgt i32 %22, 1000
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %20
  br label %9

31:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
