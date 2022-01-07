; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_get_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_get_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@REG_PORT_XMII_CTRL_1 = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@PORT_RGMII_ID_EG_ENABLE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@PORT_RGMII_ID_IG_ENABLE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i32)* @ksz9477_get_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_get_interface(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %12 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @REG_PORT_XMII_CTRL_1, align 4
  %21 = call i32 @ksz_pread8(%struct.ksz_device* %18, i32 %19, i32 %20, i32* %9)
  %22 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ksz9477_get_gbit(%struct.ksz_device* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ksz9477_get_xmii(%struct.ksz_device* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %39 [
    i32 2, label %29
    i32 0, label %35
    i32 1, label %37
  ]

29:                                               ; preds = %17
  %30 = load i32, i32* @PHY_INTERFACE_MODE_GMII, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %62

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %17, %34
  %36 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  store i32 %36, i32* %6, align 4
  br label %62

37:                                               ; preds = %17
  %38 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  store i32 %38, i32* %6, align 4
  br label %62

39:                                               ; preds = %17
  %40 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PORT_RGMII_ID_EG_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PORT_RGMII_ID_IG_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_RXID, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @PORT_RGMII_ID_EG_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %37, %35, %33
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i32, i32, i32*) #1

declare dso_local i32 @ksz9477_get_gbit(%struct.ksz_device*, i32) #1

declare dso_local i32 @ksz9477_get_xmii(%struct.ksz_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
