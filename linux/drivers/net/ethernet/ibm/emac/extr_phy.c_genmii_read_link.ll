; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_genmii_read_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_phy.c_genmii_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i64, i32, i64, i32, i32, i8* }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_1000FULL = common dso_local global i32 0, align 4
@LPA_1000HALF = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@LPA_100FULL = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@LPA_10FULL = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @genmii_read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genmii_read_link(%struct.mii_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  %8 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %9 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AUTONEG_ENABLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %139

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %14 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %15 = load i32, i32* @MII_LPA, align 4
  %16 = call i32 @phy_read(%struct.mii_phy* %14, i32 %15)
  %17 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %18 = load i32, i32* @MII_ADVERTISE, align 4
  %19 = call i32 @phy_read(%struct.mii_phy* %17, i32 %18)
  %20 = and i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %190

25:                                               ; preds = %13
  %26 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %27 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %30 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %36 = load i32, i32* @MII_CTRL1000, align 4
  %37 = call i32 @phy_read(%struct.mii_phy* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %39 = load i32, i32* @MII_STAT1000, align 4
  %40 = call i32 @phy_read(%struct.mii_phy* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %34
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %190

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %25
  %54 = load i8*, i8** @SPEED_10, align 8
  %55 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %56 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @DUPLEX_HALF, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %60 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %62 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %61, i32 0, i32 4
  store i32 0, i32* %62, align 4
  %63 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %64 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %63, i32 0, i32 3
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @LPA_1000FULL, align 4
  %67 = load i32, i32* @LPA_1000HALF, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %53
  %72 = load i8*, i8** @SPEED_1000, align 8
  %73 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %74 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @LPA_1000FULL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i64, i64* @DUPLEX_FULL, align 8
  %81 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %82 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %71
  br label %115

84:                                               ; preds = %53
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @LPA_100FULL, align 4
  %87 = load i32, i32* @LPA_100HALF, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = load i8*, i8** @SPEED_100, align 8
  %93 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %94 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @LPA_100FULL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i64, i64* @DUPLEX_FULL, align 8
  %101 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %102 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %91
  br label %114

104:                                              ; preds = %84
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @LPA_10FULL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i64, i64* @DUPLEX_FULL, align 8
  %111 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %112 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %113, %103
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %117 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DUPLEX_FULL, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @LPA_PAUSE_CAP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %129 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 1, i32 0
  %136 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %137 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %121, %115
  br label %189

139:                                              ; preds = %1
  %140 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %141 = load i32, i32* @MII_BMCR, align 4
  %142 = call i32 @phy_read(%struct.mii_phy* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %190

147:                                              ; preds = %139
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @BMCR_FULLDPLX, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i64, i64* @DUPLEX_FULL, align 8
  %154 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %155 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  br label %161

156:                                              ; preds = %147
  %157 = load i8*, i8** @DUPLEX_HALF, align 8
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %160 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %156, %152
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @BMCR_SPEED1000, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i8*, i8** @SPEED_1000, align 8
  %168 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %169 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  br label %184

170:                                              ; preds = %161
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @BMCR_SPEED100, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load i8*, i8** @SPEED_100, align 8
  %177 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %178 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %177, i32 0, i32 5
  store i8* %176, i8** %178, align 8
  br label %183

179:                                              ; preds = %170
  %180 = load i8*, i8** @SPEED_10, align 8
  %181 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %182 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %175
  br label %184

184:                                              ; preds = %183, %166
  %185 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %186 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %185, i32 0, i32 4
  store i32 0, i32* %186, align 4
  %187 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %188 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %187, i32 0, i32 3
  store i32 0, i32* %188, align 8
  br label %189

189:                                              ; preds = %184, %138
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %145, %46, %23
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @phy_read(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
