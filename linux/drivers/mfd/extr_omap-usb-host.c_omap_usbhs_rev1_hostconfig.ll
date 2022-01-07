; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_rev1_hostconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_rev1_hostconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_hcd_omap = type { i32, %struct.usbhs_omap_platform_data* }
%struct.usbhs_omap_platform_data = type { i32*, i64 }

@OMAP_UHH_HOSTCONFIG_P1_CONNECT_STATUS = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS = common dso_local global i32 0, align 4
@OMAP_UHH_HOSTCONFIG_ULPI_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_hcd_omap*, i32)* @omap_usbhs_rev1_hostconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usbhs_rev1_hostconfig(%struct.usbhs_hcd_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_hcd_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_omap_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.usbhs_hcd_omap* %0, %struct.usbhs_hcd_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %8 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %7, i32 0, i32 1
  %9 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %8, align 8
  store %struct.usbhs_omap_platform_data* %9, %struct.usbhs_omap_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %76, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %13 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %10
  %17 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %54 [
    i32 128, label %24
    i32 129, label %31
  ]

24:                                               ; preds = %16
  %25 = load i32, i32* @OMAP_UHH_HOSTCONFIG_P1_CONNECT_STATUS, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %16
  %32 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %75

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* @OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 %46, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %40
  br label %75

54:                                               ; preds = %16
  %55 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %56 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %75

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @OMAP_UHH_HOSTCONFIG_ULPI_P1_BYPASS, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %74

67:                                               ; preds = %60
  %68 = load i32, i32* @OMAP_UHH_HOSTCONFIG_ULPI_P2_BYPASS, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = shl i32 %68, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74, %59, %53, %36, %24
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %10

79:                                               ; preds = %10
  %80 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %81 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %79
  %85 = load i32, i32* @OMAP_UHH_HOSTCONFIG_ULPI_BYPASS, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %110, %84
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %91 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %96 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @is_ehci_phy_mode(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load i32, i32* @OMAP_UHH_HOSTCONFIG_ULPI_BYPASS, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %4, align 4
  br label %113

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %88

113:                                              ; preds = %104, %88
  br label %114

114:                                              ; preds = %113, %79
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @is_ehci_phy_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
