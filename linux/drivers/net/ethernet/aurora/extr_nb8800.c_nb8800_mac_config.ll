; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_mac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nb8800_priv = type { i64, i32, i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@RGMII_MODE = common dso_local global i32 0, align 4
@HALF_DUPLEX = common dso_local global i32 0, align 4
@GMAC_MODE = common dso_local global i32 0, align 4
@NB8800_IC_THRESHOLD = common dso_local global i32 0, align 4
@NB8800_SLOT_TIME = common dso_local global i32 0, align 4
@NB8800_MAC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nb8800_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_mac_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.nb8800_priv* %11, %struct.nb8800_priv** %3, align 8
  %12 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %13 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_1000, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @RGMII_MODE, align 4
  %19 = load i32, i32* @HALF_DUPLEX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GMAC_MODE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %23 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %24 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @HALF_DUPLEX, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @phy_interface_is_rgmii(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @RGMII_MODE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* @GMAC_MODE, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  store i32 125000000, i32* %8, align 4
  store i32 255, i32* %7, align 4
  br label %49

48:                                               ; preds = %31
  store i32 25000000, i32* %8, align 4
  store i32 128, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %52 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_get_rate(i32 %53)
  %55 = call i32 @DIV_ROUND_UP(i32 %50, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %57 = load i32, i32* @NB8800_IC_THRESHOLD, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @nb8800_writeb(%struct.nb8800_priv* %56, i32 %57, i32 %58)
  %60 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %61 = load i32, i32* @NB8800_SLOT_TIME, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @nb8800_writeb(%struct.nb8800_priv* %60, i32 %61, i32 %62)
  %64 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %65 = load i32, i32* @NB8800_MAC_MODE, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @nb8800_maskb(%struct.nb8800_priv* %64, i32 %65, i32 %66, i32 %67)
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @phy_interface_is_rgmii(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @nb8800_writeb(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @nb8800_maskb(%struct.nb8800_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
