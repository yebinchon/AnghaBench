; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sun4ican_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not enter reset mode\0A\00", align 1
@SUN4I_REG_ACPC_ADDR = common dso_local global i64 0, align 8
@SUN4I_REG_ACPM_ADDR = common dso_local global i64 0, align 8
@SUN4I_REG_ERRC_ADDR = common dso_local global i64 0, align 8
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@SUN4I_REG_INTEN_ADDR = common dso_local global i64 0, align 8
@SUN4I_INTEN_BERR = common dso_local global i32 0, align 4
@SUN4I_REG_MSEL_ADDR = common dso_local global i64 0, align 8
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@SUN4I_MSEL_LOOPBACK_MODE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@SUN4I_MSEL_LISTEN_ONLY_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not enter normal mode\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sun4i_can_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_can_start(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sun4ican_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.sun4ican_priv* %8, %struct.sun4ican_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @set_reset_mode(%struct.net_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %19 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SUN4I_REG_ACPC_ADDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SUN4I_REG_ACPM_ADDR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 -1, i64 %28)
  %30 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %31 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SUN4I_REG_ERRC_ADDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 0, i64 %34)
  %36 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %37 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %17
  %44 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %45 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SUN4I_REG_INTEN_ADDR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 255, i64 %48)
  br label %60

50:                                               ; preds = %17
  %51 = load i32, i32* @SUN4I_INTEN_BERR, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 255, %52
  %54 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %55 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SUN4I_REG_INTEN_ADDR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %50, %43
  %61 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %62 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SUN4I_REG_MSEL_ADDR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %68 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load i32, i32* @SUN4I_MSEL_LOOPBACK_MODE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %91

78:                                               ; preds = %60
  %79 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %80 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @SUN4I_MSEL_LISTEN_ONLY_MODE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %78
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %94 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SUN4I_REG_MSEL_ADDR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @sun4ican_set_bittiming(%struct.net_device* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %119

105:                                              ; preds = %91
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @set_normal_mode(%struct.net_device* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = call i32 @netdev_err(%struct.net_device* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %119

114:                                              ; preds = %105
  %115 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %116 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %117 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %110, %103, %13
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sun4ican_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @set_normal_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
