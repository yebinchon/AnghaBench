; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.ethtool_eeprom = type { i64, i32 }

@SFF_8472_NUM_PAGES = common dso_local global i32 0, align 4
@SFF_8079_NUM_PAGES = common dso_local global i32 0, align 4
@SFF_8436_NUM_PAGES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SFP_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.ethtool_eeprom*, i32*)* @efx_mcdi_phy_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_get_module_eeprom(%struct.efx_nic* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %19 = call i32 @efx_mcdi_phy_module_type(%struct.efx_nic* %18)
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 129, label %30
  ]

20:                                               ; preds = %3
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = call i32 @efx_mcdi_phy_sff_8472_level(%struct.efx_nic* %21)
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SFF_8472_NUM_PAGES, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SFF_8079_NUM_PAGES, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load i32, i32* @SFF_8436_NUM_PAGES, align 4
  store i32 %31, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %115

35:                                               ; preds = %30, %28
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %40 = srem i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %113, %35
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %114

57:                                               ; preds = %55
  %58 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @efx_mcdi_phy_get_module_eeprom_page(%struct.efx_nic* %58, i32 %59, i32* %60, i32 %61, i64 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %113

77:                                               ; preds = %57
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i64 0, i64* %9, align 8
  br label %112

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = load i32, i32* @SFP_PAGE_SIZE, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %9, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i64 0, i64* %9, align 8
  br label %108

98:                                               ; preds = %87
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @memset(i32* %99, i32 0, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %98, %97
  br label %111

109:                                              ; preds = %84, %81
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %115

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %80
  br label %113

113:                                              ; preds = %112, %66
  br label %48

114:                                              ; preds = %55
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %109, %32
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @efx_mcdi_phy_module_type(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_phy_sff_8472_level(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_phy_get_module_eeprom_page(%struct.efx_nic*, i32, i32*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
