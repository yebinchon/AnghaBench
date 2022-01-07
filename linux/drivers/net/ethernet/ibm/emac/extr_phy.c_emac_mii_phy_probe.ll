; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_emac_mii_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_emac_mii_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy_def = type { i32, i32, i32 }
%struct.mii_phy = type { i32, i32, i32, %struct.mii_phy_def*, i64, i64, i32, i32, i32 }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@mii_phy_table = common dso_local global %struct.mii_phy_def** null, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_mii_phy_probe(%struct.mii_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_phy_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @AUTONEG_DISABLE, align 4
  %12 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %13 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 8
  %14 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %15 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %14, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %18 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @SPEED_10, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %21 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DUPLEX_HALF, align 4
  %23 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %24 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %26 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %28 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %30 = call i64 @emac_mii_reset_phy(%struct.mii_phy* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %186

35:                                               ; preds = %2
  %36 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %37 = load i32, i32* @MII_PHYSID1, align 4
  %38 = call i32 @phy_read(%struct.mii_phy* %36, i32 %37)
  %39 = shl i32 %38, 16
  %40 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %41 = load i32, i32* @MII_PHYSID2, align 4
  %42 = call i32 @phy_read(%struct.mii_phy* %40, i32 %41)
  %43 = or i32 %39, %42
  store i32 %43, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %63, %35
  %45 = load %struct.mii_phy_def**, %struct.mii_phy_def*** @mii_phy_table, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mii_phy_def*, %struct.mii_phy_def** %45, i64 %47
  %49 = load %struct.mii_phy_def*, %struct.mii_phy_def** %48, align 8
  store %struct.mii_phy_def* %49, %struct.mii_phy_def** %6, align 8
  %50 = icmp ne %struct.mii_phy_def* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mii_phy_def*, %struct.mii_phy_def** %6, align 8
  %54 = getelementptr inbounds %struct.mii_phy_def, %struct.mii_phy_def* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %52, %55
  %57 = load %struct.mii_phy_def*, %struct.mii_phy_def** %6, align 8
  %58 = getelementptr inbounds %struct.mii_phy_def, %struct.mii_phy_def* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %44

66:                                               ; preds = %61, %44
  %67 = load %struct.mii_phy_def*, %struct.mii_phy_def** %6, align 8
  %68 = icmp ne %struct.mii_phy_def* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %186

72:                                               ; preds = %66
  %73 = load %struct.mii_phy_def*, %struct.mii_phy_def** %6, align 8
  %74 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %75 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %74, i32 0, i32 3
  store %struct.mii_phy_def* %73, %struct.mii_phy_def** %75, align 8
  %76 = load %struct.mii_phy_def*, %struct.mii_phy_def** %6, align 8
  %77 = getelementptr inbounds %struct.mii_phy_def, %struct.mii_phy_def* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %80 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %82 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %180, label %85

85:                                               ; preds = %72
  %86 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %87 = load i32, i32* @MII_BMSR, align 4
  %88 = call i32 @phy_read(%struct.mii_phy* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %95 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %96 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %85
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @BMSR_10HALF, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %106 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %107 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @BMSR_10FULL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %117 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %118 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @BMSR_100HALF, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %128 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %129 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @BMSR_100FULL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %139 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %140 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @BMSR_ESTATEN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %143
  %149 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %150 = load i32, i32* @MII_ESTATUS, align 4
  %151 = call i32 @phy_read(%struct.mii_phy* %149, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %158 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %159 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %148
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %169 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %170 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %162
  br label %174

174:                                              ; preds = %173, %143
  %175 = load i32, i32* @SUPPORTED_MII, align 4
  %176 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %177 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %72
  %181 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %182 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %185 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %180, %69, %32
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i64 @emac_mii_reset_phy(%struct.mii_phy*) #1

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
