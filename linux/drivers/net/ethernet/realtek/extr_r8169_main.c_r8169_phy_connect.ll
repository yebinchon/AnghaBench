; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, i32, %struct.phy_device* }
%struct.phy_device = type { i32 }

@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@r8169_phylink_handler = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @r8169_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8169_phy_connect(%struct.rtl8169_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 2
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %11 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %21 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = load i32, i32* @r8169_phylink_handler, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @phy_connect_direct(i32 %22, %struct.phy_device* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %33 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = load i32, i32* @SPEED_100, align 4
  %39 = call i32 @phy_set_max_speed(%struct.phy_device* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = call i32 @phy_support_asym_pause(%struct.phy_device* %41)
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = call i32 @phy_attached_info(%struct.phy_device* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @phy_connect_direct(i32, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
