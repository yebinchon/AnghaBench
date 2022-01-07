; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_get_berr_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_get_berr_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_berr_counter = type { i32, i32 }
%struct.sun4ican_priv = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"could not enable clock\0A\00", align 1
@SUN4I_REG_ERRC_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_berr_counter*)* @sun4ican_get_berr_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4ican_get_berr_counter(%struct.net_device* %0, %struct.can_berr_counter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_berr_counter*, align 8
  %6 = alloca %struct.sun4ican_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_berr_counter* %1, %struct.can_berr_counter** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.sun4ican_priv* %10, %struct.sun4ican_priv** %6, align 8
  %11 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %12 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netdev_err(%struct.net_device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %23 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SUN4I_REG_ERRC_ADDR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = load %struct.can_berr_counter*, %struct.can_berr_counter** %5, align 8
  %31 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = load %struct.can_berr_counter*, %struct.can_berr_counter** %5, align 8
  %36 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %38 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %21, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
