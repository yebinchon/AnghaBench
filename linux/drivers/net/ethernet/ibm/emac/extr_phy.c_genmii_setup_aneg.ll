; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_genmii_setup_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_genmii_setup_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i64, i64, i32, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32)* @genmii_setup_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genmii_setup_aneg(%struct.mii_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @AUTONEG_ENABLE, align 4
  %9 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %10 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @SPEED_10, align 4
  %12 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %13 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DUPLEX_HALF, align 4
  %15 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %16 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %18 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %20 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %23 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %25 = load i32, i32* @MII_BMCR, align 4
  %26 = call i32 @phy_read(%struct.mii_phy* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %180

31:                                               ; preds = %2
  %32 = load i32, i32* @BMCR_FULLDPLX, align 4
  %33 = load i32, i32* @BMCR_SPEED100, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BMCR_SPEED1000, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BMCR_ANENABLE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %43 = load i32, i32* @MII_BMCR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @phy_write(%struct.mii_phy* %42, i32 %43, i32 %44)
  %46 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %47 = load i32, i32* @MII_ADVERTISE, align 4
  %48 = call i32 @phy_read(%struct.mii_phy* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %180

53:                                               ; preds = %31
  %54 = load i32, i32* @ADVERTISE_ALL, align 4
  %55 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32, i32* @ADVERTISE_10HALF, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %53
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @ADVERTISE_10FULL, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @ADVERTISE_100HALF, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @ADVERTISE_100FULL, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @ADVERTISED_Pause, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %119 = load i32, i32* @MII_ADVERTISE, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @phy_write(%struct.mii_phy* %118, i32 %119, i32 %120)
  %122 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %123 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %126 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %117
  %131 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %132 = load i32, i32* @MII_CTRL1000, align 4
  %133 = call i32 @phy_read(%struct.mii_phy* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %180

138:                                              ; preds = %130
  %139 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %140 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %141 = or i32 %139, %140
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %138
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %164 = load i32, i32* @MII_CTRL1000, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @phy_write(%struct.mii_phy* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %117
  %168 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %169 = load i32, i32* @MII_BMCR, align 4
  %170 = call i32 @phy_read(%struct.mii_phy* %168, i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @BMCR_ANENABLE, align 4
  %172 = load i32, i32* @BMCR_ANRESTART, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %177 = load i32, i32* @MII_BMCR, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @phy_write(%struct.mii_phy* %176, i32 %177, i32 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %167, %136, %51, %29
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
