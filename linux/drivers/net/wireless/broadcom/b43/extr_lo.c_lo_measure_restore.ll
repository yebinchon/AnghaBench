; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_measure_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_measure_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i64, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32 }
%struct.lo_g_saved_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@B43_PHY_PGACTL = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_PHY_SYNCCTL = common dso_local global i32 0, align 4
@B43_PHY_DACCTL = common dso_local global i32 0, align 4
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@B43_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_CLASSCTL = common dso_local global i32 0, align 4
@B43_PHY_RFOVER = common dso_local global i32 0, align 4
@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@B43_PHY_LO_MASK = common dso_local global i32 0, align 4
@B43_PHY_HPWR_TSSICTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.lo_g_saved_values*)* @lo_measure_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_measure_restore(%struct.b43_wldev* %0, %struct.lo_g_saved_values* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.lo_g_saved_values*, align 8
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_g*, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.lo_g_saved_values* %1, %struct.lo_g_saved_values** %4, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  store %struct.b43_phy* %9, %struct.b43_phy** %5, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 4
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %6, align 8
  %13 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 2
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load i32, i32* @B43_PHY_PGACTL, align 4
  %20 = call i32 @b43_phy_write(%struct.b43_wldev* %18, i32 %19, i32 58112)
  %21 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %22 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 160
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %25, i32 %26, i32 %28)
  %30 = call i32 @udelay(i32 5)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, 162
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 %32, i32 %34)
  %36 = call i32 @udelay(i32 2)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 163
  %41 = call i32 @b43_phy_write(%struct.b43_wldev* %37, i32 %38, i32 %40)
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %44 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 61344
  store i32 %46, i32* %7, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load i32, i32* @B43_PHY_PGACTL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %17
  %52 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @B43_PHYTYPE_G, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %59 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 3
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = call i32 @B43_PHY_CCK(i32 46)
  %65 = call i32 @b43_phy_write(%struct.b43_wldev* %63, i32 %64, i32 49272)
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = call i32 @B43_PHY_CCK(i32 46)
  %69 = call i32 @b43_phy_write(%struct.b43_wldev* %67, i32 %68, i32 32888)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %72 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = call i32 @B43_PHY_CCK(i32 47)
  %78 = call i32 @b43_phy_write(%struct.b43_wldev* %76, i32 %77, i32 514)
  br label %83

79:                                               ; preds = %70
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = call i32 @B43_PHY_CCK(i32 47)
  %82 = call i32 @b43_phy_write(%struct.b43_wldev* %80, i32 %81, i32 257)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %51
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %86 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %87 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %86, i32 0, i32 23
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @b43_write16(%struct.b43_wldev* %85, i32 1012, i32 %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = load i32, i32* @B43_PHY_PGACTL, align 4
  %92 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %93 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @b43_phy_write(%struct.b43_wldev* %90, i32 %91, i32 %94)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = call i32 @B43_PHY_CCK(i32 42)
  %98 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %99 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @b43_phy_write(%struct.b43_wldev* %96, i32 %97, i32 %100)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = load i32, i32* @B43_PHY_SYNCCTL, align 4
  %104 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %105 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @b43_phy_write(%struct.b43_wldev* %102, i32 %103, i32 %106)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = load i32, i32* @B43_PHY_DACCTL, align 4
  %110 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %111 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @b43_phy_write(%struct.b43_wldev* %108, i32 %109, i32 %112)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %116 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %115, i32 0, i32 22
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @b43_radio_write16(%struct.b43_wldev* %114, i32 67, i32 %117)
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %121 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %120, i32 0, i32 21
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @b43_radio_write16(%struct.b43_wldev* %119, i32 122, i32 %122)
  %124 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %125 = call i32 @has_tx_magnification(%struct.b43_phy* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %84
  %128 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %129 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %7, align 4
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @b43_radio_maskset(%struct.b43_wldev* %131, i32 82, i32 65295, i32 %132)
  br label %134

134:                                              ; preds = %127, %84
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %137 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %136, i32 0, i32 20
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @b43_write16(%struct.b43_wldev* %135, i32 994, i32 %138)
  %140 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %141 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @B43_PHYTYPE_B, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %168

145:                                              ; preds = %134
  %146 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %147 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 8272
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %152 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp sle i32 %153, 5
  br i1 %154, label %155, label %168

155:                                              ; preds = %150
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %157 = call i32 @B43_PHY_CCK(i32 48)
  %158 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %159 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @b43_phy_write(%struct.b43_wldev* %156, i32 %157, i32 %160)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %163 = call i32 @B43_PHY_CCK(i32 6)
  %164 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %165 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @b43_phy_write(%struct.b43_wldev* %162, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %155, %150, %145, %134
  %169 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %170 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %171, 2
  br i1 %172, label %173, label %216

173:                                              ; preds = %168
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %175 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %176 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %177 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @b43_phy_write(%struct.b43_wldev* %174, i32 %175, i32 %178)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %181 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %182 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %183 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @b43_phy_write(%struct.b43_wldev* %180, i32 %181, i32 %184)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %187 = load i32, i32* @B43_PHY_CLASSCTL, align 4
  %188 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %189 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @b43_phy_write(%struct.b43_wldev* %186, i32 %187, i32 %190)
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %193 = load i32, i32* @B43_PHY_RFOVER, align 4
  %194 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %195 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @b43_phy_write(%struct.b43_wldev* %192, i32 %193, i32 %196)
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %199 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %200 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %201 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %200, i32 0, i32 11
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @b43_phy_write(%struct.b43_wldev* %198, i32 %199, i32 %202)
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %205 = call i32 @B43_PHY_CCK(i32 62)
  %206 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %207 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @b43_phy_write(%struct.b43_wldev* %204, i32 %205, i32 %208)
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %211 = load i32, i32* @B43_PHY_CRS0, align 4
  %212 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %213 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %212, i32 0, i32 13
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @b43_phy_write(%struct.b43_wldev* %210, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %173, %168
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %218 = call i64 @b43_has_hardware_pctl(%struct.b43_wldev* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %253

220:                                              ; preds = %216
  %221 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %222 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %221, i32 0, i32 14
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 49151
  store i32 %224, i32* %7, align 4
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %226 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @b43_phy_write(%struct.b43_wldev* %225, i32 %226, i32 %227)
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %230 = call i32 @B43_PHY_EXTG(i32 1)
  %231 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %232 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %231, i32 0, i32 15
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @b43_phy_write(%struct.b43_wldev* %229, i32 %230, i32 %233)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %236 = load i32, i32* @B43_PHY_DACCTL, align 4
  %237 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %238 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %237, i32 0, i32 16
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @b43_phy_write(%struct.b43_wldev* %235, i32 %236, i32 %239)
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %242 = call i32 @B43_PHY_CCK(i32 20)
  %243 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %244 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %243, i32 0, i32 17
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @b43_phy_write(%struct.b43_wldev* %241, i32 %242, i32 %245)
  %247 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %248 = load i32, i32* @B43_PHY_HPWR_TSSICTL, align 4
  %249 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %250 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %249, i32 0, i32 18
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @b43_phy_write(%struct.b43_wldev* %247, i32 %248, i32 %251)
  br label %253

253:                                              ; preds = %220, %216
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %255 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %256 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %255, i32 0, i32 19
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %254, i32 %257, i32 1)
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @B43_PHY_CCK(i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @has_tx_magnification(%struct.b43_phy*) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_has_hardware_pctl(%struct.b43_wldev*) #1

declare dso_local i32 @B43_PHY_EXTG(i32) #1

declare dso_local i32 @b43_gphy_channel_switch(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
