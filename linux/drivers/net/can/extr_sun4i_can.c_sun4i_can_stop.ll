; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sun4ican_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not enter reset mode\0A\00", align 1
@SUN4I_REG_INTEN_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sun4i_can_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_can_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sun4ican_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sun4ican_priv* %7, %struct.sun4ican_priv** %4, align 8
  %8 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %9 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %10 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @set_reset_mode(%struct.net_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %22 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SUN4I_REG_INTEN_ADDR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
