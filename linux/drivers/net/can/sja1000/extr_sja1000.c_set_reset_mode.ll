; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_set_reset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_set_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i8 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i8)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SJA1000_MOD = common dso_local global i32 0, align 4
@SJA1000_IER = common dso_local global i32 0, align 4
@IRQ_OFF = common dso_local global i8 0, align 1
@MOD_RM = common dso_local global i8 0, align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"setting SJA1000 into reset mode failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reset_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sja1000_priv* %7, %struct.sja1000_priv** %3, align 8
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %8, i32 0, i32 0
  %10 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %9, align 8
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %12 = load i32, i32* @SJA1000_MOD, align 4
  %13 = call zeroext i8 %10(%struct.sja1000_priv* %11, i32 %12)
  store i8 %13, i8* %4, align 1
  %14 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %14, i32 0, i32 1
  %16 = load i32 (%struct.sja1000_priv*, i32, i8)*, i32 (%struct.sja1000_priv*, i32, i8)** %15, align 8
  %17 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %18 = load i32, i32* @SJA1000_IER, align 4
  %19 = load i8, i8* @IRQ_OFF, align 1
  %20 = call i32 %16(%struct.sja1000_priv* %17, i32 %18, i8 zeroext %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %51, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 100
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @MOD_RM, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %33 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %34 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  br label %57

36:                                               ; preds = %24
  %37 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %38 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %37, i32 0, i32 1
  %39 = load i32 (%struct.sja1000_priv*, i32, i8)*, i32 (%struct.sja1000_priv*, i32, i8)** %38, align 8
  %40 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %41 = load i32, i32* @SJA1000_MOD, align 4
  %42 = load i8, i8* @MOD_RM, align 1
  %43 = call i32 %39(%struct.sja1000_priv* %40, i32 %41, i8 zeroext %42)
  %44 = call i32 @udelay(i32 10)
  %45 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %46 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %45, i32 0, i32 0
  %47 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %46, align 8
  %48 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %49 = load i32, i32* @SJA1000_MOD, align 4
  %50 = call zeroext i8 %47(%struct.sja1000_priv* %48, i32 %49)
  store i8 %50, i8* %4, align 1
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %31
  ret void
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
