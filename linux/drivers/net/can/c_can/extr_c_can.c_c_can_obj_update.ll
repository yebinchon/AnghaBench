; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_obj_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_obj_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32, i32)* }

@COMREQ_REG = common dso_local global i32 0, align 4
@MIN_TIMEOUT_VALUE = common dso_local global i32 0, align 4
@IF_COMR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Updating object timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @c_can_obj_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_obj_update(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.c_can_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.c_can_priv* %13, %struct.c_can_priv** %9, align 8
  %14 = load i32, i32* @COMREQ_REG, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @C_CAN_IFACE(i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %18 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %17, i32 0, i32 1
  %19 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %18, align 8
  %20 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %23, %24
  %26 = call i32 %19(%struct.c_can_priv* %20, i32 %21, i32 %25)
  %27 = load i32, i32* @MIN_TIMEOUT_VALUE, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %44, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %33 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %32, i32 0, i32 0
  %34 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %33, align 8
  %35 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 %34(%struct.c_can_priv* %35, i32 %36)
  %38 = load i32, i32* @IF_COMR_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %50

42:                                               ; preds = %31
  %43 = call i32 @udelay(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  ret void
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @C_CAN_IFACE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
