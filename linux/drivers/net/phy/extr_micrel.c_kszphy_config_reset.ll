; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.kszphy_priv* }
%struct.kszphy_priv = type { i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to set rmii reference clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @kszphy_config_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kszphy_config_reset(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.kszphy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load %struct.kszphy_priv*, %struct.kszphy_priv** %7, align 8
  store %struct.kszphy_priv* %8, %struct.kszphy_priv** %4, align 8
  %9 = load %struct.kszphy_priv*, %struct.kszphy_priv** %4, align 8
  %10 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = load %struct.kszphy_priv*, %struct.kszphy_priv** %4, align 8
  %16 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kszphy_rmii_clk_sel(%struct.phy_device* %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = call i32 @phydev_err(%struct.phy_device* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.kszphy_priv*, %struct.kszphy_priv** %4, align 8
  %28 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load %struct.kszphy_priv*, %struct.kszphy_priv** %4, align 8
  %34 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kszphy_priv*, %struct.kszphy_priv** %4, align 8
  %39 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @kszphy_setup_led(%struct.phy_device* %32, i32 %37, i64 %40)
  br label %42

42:                                               ; preds = %31, %26
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @kszphy_rmii_clk_sel(%struct.phy_device*, i32) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*) #1

declare dso_local i32 @kszphy_setup_led(%struct.phy_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
