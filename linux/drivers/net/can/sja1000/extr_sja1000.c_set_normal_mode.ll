; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i8 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SJA1000_MOD = common dso_local global i32 0, align 4
@MOD_RM = common dso_local global i8 0, align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@SJA1000_IER = common dso_local global i32 0, align 4
@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_BEI = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@MOD_LOM = common dso_local global i32 0, align 4
@CAN_CTRLMODE_PRESUME_ACK = common dso_local global i32 0, align 4
@MOD_STM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"setting SJA1000 into normal mode failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_normal_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.sja1000_priv* %8, %struct.sja1000_priv** %3, align 8
  %9 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %10 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %9, i32 0, i32 0
  %11 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %10, align 8
  %12 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %13 = load i32, i32* @SJA1000_MOD, align 4
  %14 = call zeroext i8 %11(%struct.sja1000_priv* %12, i32 %13)
  store i8 %14, i8* %4, align 1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %96, %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 100
  br i1 %17, label %18, label %99

18:                                               ; preds = %15
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @MOD_RM, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %18
  %26 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %27 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %31 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %39 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %38, i32 0, i32 1
  %40 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %39, align 8
  %41 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %42 = load i32, i32* @SJA1000_IER, align 4
  %43 = load i32, i32* @IRQ_ALL, align 4
  %44 = call i32 %40(%struct.sja1000_priv* %41, i32 %42, i32 %43)
  br label %56

45:                                               ; preds = %25
  %46 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %47 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %46, i32 0, i32 1
  %48 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %47, align 8
  %49 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %50 = load i32, i32* @SJA1000_IER, align 4
  %51 = load i32, i32* @IRQ_ALL, align 4
  %52 = load i32, i32* @IRQ_BEI, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 %48(%struct.sja1000_priv* %49, i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %45, %37
  br label %102

57:                                               ; preds = %18
  %58 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %59 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @MOD_LOM, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %57
  %70 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %71 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CAN_CTRLMODE_PRESUME_ACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32, i32* @MOD_STM, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %69
  %82 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %83 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %82, i32 0, i32 1
  %84 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %83, align 8
  %85 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %86 = load i32, i32* @SJA1000_MOD, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 %84(%struct.sja1000_priv* %85, i32 %86, i32 %87)
  %89 = call i32 @udelay(i32 10)
  %90 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %91 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %90, i32 0, i32 0
  %92 = load i8 (%struct.sja1000_priv*, i32)*, i8 (%struct.sja1000_priv*, i32)** %91, align 8
  %93 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %94 = load i32, i32* @SJA1000_MOD, align 4
  %95 = call zeroext i8 %92(%struct.sja1000_priv* %93, i32 %94)
  store i8 %95, i8* %4, align 1
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %15

99:                                               ; preds = %15
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = call i32 @netdev_err(%struct.net_device* %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %56
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
