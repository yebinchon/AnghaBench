; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_set_normal_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_set_normal_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sun4ican_priv = type { i64 }

@SUN4I_MODE_MAX_RETRIES = common dso_local global i32 0, align 4
@SUN4I_REG_MSEL_ADDR = common dso_local global i64 0, align 8
@SUN4I_MSEL_RESET_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"setting controller into normal mode failed!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @set_normal_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_normal_mode(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sun4ican_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.sun4ican_priv* %8, %struct.sun4ican_priv** %4, align 8
  %9 = load i32, i32* @SUN4I_MODE_MAX_RETRIES, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %12 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SUN4I_REG_MSEL_ADDR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @SUN4I_MSEL_RESET_MODE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %23 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SUN4I_REG_MSEL_ADDR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %10
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SUN4I_MSEL_RESET_MODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  br i1 %38, label %10, label %39

39:                                               ; preds = %37
  %40 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %4, align 8
  %41 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SUN4I_REG_MSEL_ADDR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load i32, i32* @SUN4I_MSEL_RESET_MODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
