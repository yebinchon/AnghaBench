; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64, i64, i32, i64, i64, i64, i32 }

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MV_PCS_BASE_R = common dso_local global i64 0, align 8
@MDIO_STAT1 = common dso_local global i64 0, align 8
@MDIO_STAT1_LSTATUS = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_COMPLETE = common dso_local global i32 0, align 4
@MV_AN_STAT1000 = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@MV_PCS_PAIRSWAP = common dso_local global i64 0, align 8
@MV_PCS_PAIRSWAP_MASK = common dso_local global i32 0, align 4
@ETH_TP_MDI_X = common dso_local global i64 0, align 8
@ETH_TP_MDI = common dso_local global i64 0, align 8
@ETH_TP_MDI_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mv3310_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv3310_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load i64, i64* @SPEED_UNKNOWN, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @linkmode_zero(i32 %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @MDIO_MMD_PCS, align 4
  %25 = load i64, i64* @MV_PCS_BASE_R, align 8
  %26 = load i64, i64* @MDIO_STAT1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @phy_read_mmd(%struct.phy_device* %23, i32 %24, i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %150

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = call i32 @mv3310_read_10gbr_status(%struct.phy_device* %39)
  store i32 %40, i32* %2, align 4
  br label %150

41:                                               ; preds = %33
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @genphy_c45_read_link(%struct.phy_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %150

48:                                               ; preds = %41
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = load i32, i32* @MDIO_MMD_AN, align 4
  %51 = load i64, i64* @MDIO_STAT1, align 8
  %52 = call i32 @phy_read_mmd(%struct.phy_device* %49, i32 %50, i64 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %150

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MDIO_AN_STAT1_COMPLETE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = call i32 @genphy_c45_read_lpa(%struct.phy_device* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %150

69:                                               ; preds = %62
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = load i32, i32* @MDIO_MMD_AN, align 4
  %72 = load i64, i64* @MV_AN_STAT1000, align 8
  %73 = call i32 @phy_read_mmd(%struct.phy_device* %70, i32 %71, i64 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %150

78:                                               ; preds = %69
  %79 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @mii_stat1000_mod_linkmode_lpa_t(i32 %81, i32 %82)
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AUTONEG_ENABLE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = call i32 @phy_resolve_aneg_linkmode(%struct.phy_device* %90)
  br label %92

92:                                               ; preds = %89, %78
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AUTONEG_ENABLE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %101 = call i32 @genphy_c45_read_pma(%struct.phy_device* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %150

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %93
  %108 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %109 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SPEED_10000, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %115 = call i32 @genphy_c45_read_mdix(%struct.phy_device* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %150

120:                                              ; preds = %113
  br label %147

121:                                              ; preds = %107
  %122 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %123 = load i32, i32* @MDIO_MMD_PCS, align 4
  %124 = load i64, i64* @MV_PCS_PAIRSWAP, align 8
  %125 = call i32 @phy_read_mmd(%struct.phy_device* %122, i32 %123, i64 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %150

130:                                              ; preds = %121
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @MV_PCS_PAIRSWAP_MASK, align 4
  %133 = and i32 %131, %132
  switch i32 %133, label %142 [
    i32 129, label %134
    i32 128, label %138
  ]

134:                                              ; preds = %130
  %135 = load i64, i64* @ETH_TP_MDI_X, align 8
  %136 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %137 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  br label %146

138:                                              ; preds = %130
  %139 = load i64, i64* @ETH_TP_MDI, align 8
  %140 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %141 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  br label %146

142:                                              ; preds = %130
  %143 = load i64, i64* @ETH_TP_MDI_INVALID, align 8
  %144 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %145 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %142, %138, %134
  br label %147

147:                                              ; preds = %146, %120
  %148 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %149 = call i32 @mv3310_update_interface(%struct.phy_device* %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %147, %128, %118, %104, %76, %67, %55, %46, %38, %31
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @linkmode_zero(i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i64) #1

declare dso_local i32 @mv3310_read_10gbr_status(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_read_link(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_read_lpa(%struct.phy_device*) #1

declare dso_local i32 @mii_stat1000_mod_linkmode_lpa_t(i32, i32) #1

declare dso_local i32 @phy_resolve_aneg_linkmode(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_read_pma(%struct.phy_device*) #1

declare dso_local i32 @genphy_c45_read_mdix(%struct.phy_device*) #1

declare dso_local i32 @mv3310_update_interface(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
