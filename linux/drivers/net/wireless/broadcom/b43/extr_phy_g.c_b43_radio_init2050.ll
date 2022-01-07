; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_radio_init2050.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_radio_init2050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32, i32, i32, i64, i32 }
%struct.init2050_saved_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@B43_PHY_PGACTL = common dso_local global i32 0, align 4
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@B43_PHY_RFOVER = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@B43_PHY_CLASSCTL = common dso_local global i32 0, align 4
@B43_PHY_LO_MASK = common dso_local global i32 0, align 4
@B43_PHY_LO_CTL = common dso_local global i32 0, align 4
@B43_PHY_SYNCCTL = common dso_local global i32 0, align 4
@B43_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4
@B43_PHY_LO_LEAKAGE = common dso_local global i32 0, align 4
@B43_MMIO_PHY_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_radio_init2050 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_radio_init2050(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.init2050_saved_values, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  store %struct.b43_phy* %13, %struct.b43_phy** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = call i32 @memset(%struct.init2050_saved_values* %4, i32 0, i32 80)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i8* @b43_radio_read16(%struct.b43_wldev* %15, i32 67)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = call i8* @b43_radio_read16(%struct.b43_wldev* %19, i32 81)
  %21 = ptrtoint i8* %20 to i32
  %22 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i8* @b43_radio_read16(%struct.b43_wldev* %23, i32 82)
  %25 = ptrtoint i8* %24 to i32
  %26 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_PHY_PGACTL, align 4
  %29 = call i8* @b43_phy_read(%struct.b43_wldev* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @B43_PHY_CCK(i32 90)
  %34 = call i8* @b43_phy_read(%struct.b43_wldev* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @B43_PHY_CCK(i32 89)
  %39 = call i8* @b43_phy_read(%struct.b43_wldev* %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 5
  store i32 %40, i32* %41, align 4
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = call i32 @B43_PHY_CCK(i32 88)
  %44 = call i8* @b43_phy_read(%struct.b43_wldev* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @B43_PHYTYPE_B, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %1
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @B43_PHY_CCK(i32 48)
  %55 = call i8* @b43_phy_read(%struct.b43_wldev* %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 7
  store i32 %56, i32* %57, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @b43_read16(%struct.b43_wldev* %58, i32 1004)
  %60 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @B43_PHY_CCK(i32 48)
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 255)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_write16(%struct.b43_wldev* %64, i32 1004, i32 16191)
  br label %164

66:                                               ; preds = %1
  %67 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %73 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %163

76:                                               ; preds = %71, %66
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @B43_PHY_RFOVER, align 4
  %79 = call i8* @b43_phy_read(%struct.b43_wldev* %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 9
  store i32 %80, i32* %81, align 4
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %84 = call i8* @b43_phy_read(%struct.b43_wldev* %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 10
  store i32 %85, i32* %86, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %89 = call i8* @b43_phy_read(%struct.b43_wldev* %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 11
  store i32 %90, i32* %91, align 4
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %94 = call i8* @b43_phy_read(%struct.b43_wldev* %92, i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 12
  store i32 %95, i32* %96, align 4
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B43_PHY_CRS0, align 4
  %99 = call i8* @b43_phy_read(%struct.b43_wldev* %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 13
  store i32 %100, i32* %101, align 4
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @B43_PHY_CLASSCTL, align 4
  %104 = call i8* @b43_phy_read(%struct.b43_wldev* %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 14
  store i32 %105, i32* %106, align 4
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %109 = call i32 @b43_phy_set(%struct.b43_wldev* %107, i32 %108, i32 3)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %112 = call i32 @b43_phy_mask(%struct.b43_wldev* %110, i32 %111, i32 65532)
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = load i32, i32* @B43_PHY_CRS0, align 4
  %115 = call i32 @b43_phy_mask(%struct.b43_wldev* %113, i32 %114, i32 32767)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = load i32, i32* @B43_PHY_CLASSCTL, align 4
  %118 = call i32 @b43_phy_mask(%struct.b43_wldev* %116, i32 %117, i32 65532)
  %119 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %120 = call i64 @has_loopback_gain(%struct.b43_phy* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %76
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %124 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %125 = call i8* @b43_phy_read(%struct.b43_wldev* %123, i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 15
  store i32 %126, i32* %127, align 4
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %130 = call i8* @b43_phy_read(%struct.b43_wldev* %128, i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 16
  store i32 %131, i32* %132, align 4
  %133 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %134 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %135, 3
  br i1 %136, label %137, label %141

137:                                              ; preds = %122
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %139 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %140 = call i32 @b43_phy_write(%struct.b43_wldev* %138, i32 %139, i32 49184)
  br label %145

141:                                              ; preds = %122
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %143 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %144 = call i32 @b43_phy_write(%struct.b43_wldev* %142, i32 %143, i32 32800)
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %147 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %148 = call i32 @b43_phy_write(%struct.b43_wldev* %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %145, %76
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %153 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %154 = call i32 @LPD(i32 0, i32 1, i32 1)
  %155 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %152, i32 %153, i32 %154)
  %156 = call i32 @b43_phy_write(%struct.b43_wldev* %150, i32 %151, i32 %155)
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = load i32, i32* @B43_PHY_RFOVER, align 4
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* @B43_PHY_RFOVER, align 4
  %161 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %159, i32 %160, i32 0)
  %162 = call i32 @b43_phy_write(%struct.b43_wldev* %157, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %149, %71
  br label %164

164:                                              ; preds = %163, %52
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = call i32 @b43_read16(%struct.b43_wldev* %166, i32 994)
  %168 = or i32 %167, 32768
  %169 = call i32 @b43_write16(%struct.b43_wldev* %165, i32 994, i32 %168)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* @B43_PHY_SYNCCTL, align 4
  %172 = call i8* @b43_phy_read(%struct.b43_wldev* %170, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 17
  store i32 %173, i32* %174, align 4
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = load i32, i32* @B43_PHY_SYNCCTL, align 4
  %177 = call i32 @b43_phy_mask(%struct.b43_wldev* %175, i32 %176, i32 65407)
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = call i32 @b43_read16(%struct.b43_wldev* %178, i32 998)
  %180 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 18
  store i32 %179, i32* %180, align 4
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %182 = call i32 @b43_read16(%struct.b43_wldev* %181, i32 1012)
  %183 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 19
  store i32 %182, i32* %183, align 4
  %184 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %185 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %164
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = call i32 @b43_write16(%struct.b43_wldev* %189, i32 998, i32 290)
  br label %208

191:                                              ; preds = %164
  %192 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %193 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %194, 2
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %198 = call i32 @B43_PHY_CCK(i32 3)
  %199 = call i32 @b43_phy_maskset(%struct.b43_wldev* %197, i32 %198, i32 65471, i32 64)
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %202 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %204 = load i32, i32* @B43_MMIO_CHANNEL_EXT, align 4
  %205 = call i32 @b43_read16(%struct.b43_wldev* %203, i32 %204)
  %206 = or i32 %205, 8192
  %207 = call i32 @b43_write16(%struct.b43_wldev* %201, i32 %202, i32 %206)
  br label %208

208:                                              ; preds = %200, %188
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = call i32 @b43_radio_core_calibration_value(%struct.b43_wldev* %209)
  store i32 %210, i32* %5, align 4
  %211 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %212 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @B43_PHYTYPE_B, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %208
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %218 = call i32 @b43_radio_write16(%struct.b43_wldev* %217, i32 120, i32 38)
  br label %219

219:                                              ; preds = %216, %208
  %220 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %221 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %219
  %225 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %226 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %227, 2
  br i1 %228, label %229, label %237

229:                                              ; preds = %224, %219
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %231 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %234 = call i32 @LPD(i32 0, i32 1, i32 1)
  %235 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %232, i32 %233, i32 %234)
  %236 = call i32 @b43_phy_write(%struct.b43_wldev* %230, i32 %231, i32 %235)
  br label %237

237:                                              ; preds = %229, %224
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* @B43_PHY_PGACTL, align 4
  %240 = call i32 @b43_phy_write(%struct.b43_wldev* %238, i32 %239, i32 49071)
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %242 = call i32 @B43_PHY_CCK(i32 43)
  %243 = call i32 @b43_phy_write(%struct.b43_wldev* %241, i32 %242, i32 5123)
  %244 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %245 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %237
  %249 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %250 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = icmp sge i32 %251, 2
  br i1 %252, label %253, label %261

253:                                              ; preds = %248, %237
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %257 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %258 = call i32 @LPD(i32 0, i32 0, i32 1)
  %259 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %256, i32 %257, i32 %258)
  %260 = call i32 @b43_phy_write(%struct.b43_wldev* %254, i32 %255, i32 %259)
  br label %261

261:                                              ; preds = %253, %248
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %263 = load i32, i32* @B43_PHY_PGACTL, align 4
  %264 = call i32 @b43_phy_write(%struct.b43_wldev* %262, i32 %263, i32 49056)
  %265 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %266 = call i32 @b43_radio_set(%struct.b43_wldev* %265, i32 81, i32 4)
  %267 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %268 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 8
  br i1 %270, label %271, label %274

271:                                              ; preds = %261
  %272 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %273 = call i32 @b43_radio_write16(%struct.b43_wldev* %272, i32 67, i32 31)
  br label %279

274:                                              ; preds = %261
  %275 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %276 = call i32 @b43_radio_write16(%struct.b43_wldev* %275, i32 82, i32 0)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = call i32 @b43_radio_maskset(%struct.b43_wldev* %277, i32 67, i32 65520, i32 9)
  br label %279

279:                                              ; preds = %274, %271
  %280 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %281 = call i32 @B43_PHY_CCK(i32 88)
  %282 = call i32 @b43_phy_write(%struct.b43_wldev* %280, i32 %281, i32 0)
  store i32 0, i32* %8, align 4
  br label %283

283:                                              ; preds = %393, %279
  %284 = load i32, i32* %8, align 4
  %285 = icmp slt i32 %284, 16
  br i1 %285, label %286, label %396

286:                                              ; preds = %283
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %288 = call i32 @B43_PHY_CCK(i32 90)
  %289 = call i32 @b43_phy_write(%struct.b43_wldev* %287, i32 %288, i32 1152)
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %291 = call i32 @B43_PHY_CCK(i32 89)
  %292 = call i32 @b43_phy_write(%struct.b43_wldev* %290, i32 %291, i32 51216)
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %294 = call i32 @B43_PHY_CCK(i32 88)
  %295 = call i32 @b43_phy_write(%struct.b43_wldev* %293, i32 %294, i32 13)
  %296 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %297 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %286
  %301 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %302 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp sge i32 %303, 2
  br i1 %304, label %305, label %313

305:                                              ; preds = %300, %286
  %306 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %307 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %309 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %310 = call i32 @LPD(i32 1, i32 0, i32 1)
  %311 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %308, i32 %309, i32 %310)
  %312 = call i32 @b43_phy_write(%struct.b43_wldev* %306, i32 %307, i32 %311)
  br label %313

313:                                              ; preds = %305, %300
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %315 = load i32, i32* @B43_PHY_PGACTL, align 4
  %316 = call i32 @b43_phy_write(%struct.b43_wldev* %314, i32 %315, i32 44976)
  %317 = call i32 @udelay(i32 10)
  %318 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %319 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %313
  %323 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %324 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp sge i32 %325, 2
  br i1 %326, label %327, label %335

327:                                              ; preds = %322, %313
  %328 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %329 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %330 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %331 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %332 = call i32 @LPD(i32 1, i32 0, i32 1)
  %333 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %330, i32 %331, i32 %332)
  %334 = call i32 @b43_phy_write(%struct.b43_wldev* %328, i32 %329, i32 %333)
  br label %335

335:                                              ; preds = %327, %322
  %336 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %337 = load i32, i32* @B43_PHY_PGACTL, align 4
  %338 = call i32 @b43_phy_write(%struct.b43_wldev* %336, i32 %337, i32 61360)
  %339 = call i32 @udelay(i32 10)
  %340 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %341 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %340, i32 0, i32 4
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %349, label %344

344:                                              ; preds = %335
  %345 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %346 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = icmp sge i32 %347, 2
  br i1 %348, label %349, label %357

349:                                              ; preds = %344, %335
  %350 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %351 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %352 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %353 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %354 = call i32 @LPD(i32 1, i32 0, i32 0)
  %355 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %352, i32 %353, i32 %354)
  %356 = call i32 @b43_phy_write(%struct.b43_wldev* %350, i32 %351, i32 %355)
  br label %357

357:                                              ; preds = %349, %344
  %358 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %359 = load i32, i32* @B43_PHY_PGACTL, align 4
  %360 = call i32 @b43_phy_write(%struct.b43_wldev* %358, i32 %359, i32 65520)
  %361 = call i32 @udelay(i32 20)
  %362 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %363 = load i32, i32* @B43_PHY_LO_LEAKAGE, align 4
  %364 = call i8* @b43_phy_read(%struct.b43_wldev* %362, i32 %363)
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr i8, i8* %364, i64 %366
  %368 = ptrtoint i8* %367 to i32
  store i32 %368, i32* %10, align 4
  %369 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %370 = call i32 @B43_PHY_CCK(i32 88)
  %371 = call i32 @b43_phy_write(%struct.b43_wldev* %369, i32 %370, i32 0)
  %372 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %373 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %357
  %377 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %378 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = icmp sge i32 %379, 2
  br i1 %380, label %381, label %389

381:                                              ; preds = %376, %357
  %382 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %383 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %384 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %385 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %386 = call i32 @LPD(i32 1, i32 0, i32 1)
  %387 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %384, i32 %385, i32 %386)
  %388 = call i32 @b43_phy_write(%struct.b43_wldev* %382, i32 %383, i32 %387)
  br label %389

389:                                              ; preds = %381, %376
  %390 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %391 = load i32, i32* @B43_PHY_PGACTL, align 4
  %392 = call i32 @b43_phy_write(%struct.b43_wldev* %390, i32 %391, i32 44976)
  br label %393

393:                                              ; preds = %389
  %394 = load i32, i32* %8, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %8, align 4
  br label %283

396:                                              ; preds = %283
  %397 = call i32 @udelay(i32 10)
  %398 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %399 = call i32 @B43_PHY_CCK(i32 88)
  %400 = call i32 @b43_phy_write(%struct.b43_wldev* %398, i32 %399, i32 0)
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %10, align 4
  %403 = load i32, i32* %10, align 4
  %404 = ashr i32 %403, 9
  store i32 %404, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %405

405:                                              ; preds = %540, %396
  %406 = load i32, i32* %8, align 4
  %407 = icmp slt i32 %406, 16
  br i1 %407, label %408, label %543

408:                                              ; preds = %405
  %409 = load i32, i32* %8, align 4
  %410 = call i32 @bitrev4(i32 %409)
  %411 = shl i32 %410, 1
  %412 = or i32 %411, 32
  store i32 %412, i32* %6, align 4
  %413 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %414 = load i32, i32* %6, align 4
  %415 = call i32 @b43_radio_write16(%struct.b43_wldev* %413, i32 120, i32 %414)
  %416 = call i32 @udelay(i32 10)
  store i32 0, i32* %9, align 4
  br label %417

417:                                              ; preds = %527, %408
  %418 = load i32, i32* %9, align 4
  %419 = icmp slt i32 %418, 16
  br i1 %419, label %420, label %530

420:                                              ; preds = %417
  %421 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %422 = call i32 @B43_PHY_CCK(i32 90)
  %423 = call i32 @b43_phy_write(%struct.b43_wldev* %421, i32 %422, i32 3456)
  %424 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %425 = call i32 @B43_PHY_CCK(i32 89)
  %426 = call i32 @b43_phy_write(%struct.b43_wldev* %424, i32 %425, i32 51216)
  %427 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %428 = call i32 @B43_PHY_CCK(i32 88)
  %429 = call i32 @b43_phy_write(%struct.b43_wldev* %427, i32 %428, i32 13)
  %430 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %431 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %430, i32 0, i32 4
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %420
  %435 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %436 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 8
  %438 = icmp sge i32 %437, 2
  br i1 %438, label %439, label %447

439:                                              ; preds = %434, %420
  %440 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %441 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %442 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %443 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %444 = call i32 @LPD(i32 1, i32 0, i32 1)
  %445 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %442, i32 %443, i32 %444)
  %446 = call i32 @b43_phy_write(%struct.b43_wldev* %440, i32 %441, i32 %445)
  br label %447

447:                                              ; preds = %439, %434
  %448 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %449 = load i32, i32* @B43_PHY_PGACTL, align 4
  %450 = call i32 @b43_phy_write(%struct.b43_wldev* %448, i32 %449, i32 44976)
  %451 = call i32 @udelay(i32 10)
  %452 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %453 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %452, i32 0, i32 4
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %447
  %457 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %458 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = icmp sge i32 %459, 2
  br i1 %460, label %461, label %469

461:                                              ; preds = %456, %447
  %462 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %463 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %464 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %465 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %466 = call i32 @LPD(i32 1, i32 0, i32 1)
  %467 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %464, i32 %465, i32 %466)
  %468 = call i32 @b43_phy_write(%struct.b43_wldev* %462, i32 %463, i32 %467)
  br label %469

469:                                              ; preds = %461, %456
  %470 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %471 = load i32, i32* @B43_PHY_PGACTL, align 4
  %472 = call i32 @b43_phy_write(%struct.b43_wldev* %470, i32 %471, i32 61360)
  %473 = call i32 @udelay(i32 10)
  %474 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %475 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %474, i32 0, i32 4
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %469
  %479 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %480 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 8
  %482 = icmp sge i32 %481, 2
  br i1 %482, label %483, label %491

483:                                              ; preds = %478, %469
  %484 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %485 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %486 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %487 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %488 = call i32 @LPD(i32 1, i32 0, i32 0)
  %489 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %486, i32 %487, i32 %488)
  %490 = call i32 @b43_phy_write(%struct.b43_wldev* %484, i32 %485, i32 %489)
  br label %491

491:                                              ; preds = %483, %478
  %492 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %493 = load i32, i32* @B43_PHY_PGACTL, align 4
  %494 = call i32 @b43_phy_write(%struct.b43_wldev* %492, i32 %493, i32 65520)
  %495 = call i32 @udelay(i32 10)
  %496 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %497 = load i32, i32* @B43_PHY_LO_LEAKAGE, align 4
  %498 = call i8* @b43_phy_read(%struct.b43_wldev* %496, i32 %497)
  %499 = load i32, i32* %11, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr i8, i8* %498, i64 %500
  %502 = ptrtoint i8* %501 to i32
  store i32 %502, i32* %11, align 4
  %503 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %504 = call i32 @B43_PHY_CCK(i32 88)
  %505 = call i32 @b43_phy_write(%struct.b43_wldev* %503, i32 %504, i32 0)
  %506 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %507 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %506, i32 0, i32 4
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %515, label %510

510:                                              ; preds = %491
  %511 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %512 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 8
  %514 = icmp sge i32 %513, 2
  br i1 %514, label %515, label %523

515:                                              ; preds = %510, %491
  %516 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %517 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %518 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %519 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %520 = call i32 @LPD(i32 1, i32 0, i32 1)
  %521 = call i32 @radio2050_rfover_val(%struct.b43_wldev* %518, i32 %519, i32 %520)
  %522 = call i32 @b43_phy_write(%struct.b43_wldev* %516, i32 %517, i32 %521)
  br label %523

523:                                              ; preds = %515, %510
  %524 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %525 = load i32, i32* @B43_PHY_PGACTL, align 4
  %526 = call i32 @b43_phy_write(%struct.b43_wldev* %524, i32 %525, i32 44976)
  br label %527

527:                                              ; preds = %523
  %528 = load i32, i32* %9, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %9, align 4
  br label %417

530:                                              ; preds = %417
  %531 = load i32, i32* %11, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %11, align 4
  %533 = load i32, i32* %11, align 4
  %534 = ashr i32 %533, 8
  store i32 %534, i32* %11, align 4
  %535 = load i32, i32* %10, align 4
  %536 = load i32, i32* %11, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %530
  br label %543

539:                                              ; preds = %530
  br label %540

540:                                              ; preds = %539
  %541 = load i32, i32* %8, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %8, align 4
  br label %405

543:                                              ; preds = %538, %405
  %544 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %545 = load i32, i32* @B43_PHY_PGACTL, align 4
  %546 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 3
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @b43_phy_write(%struct.b43_wldev* %544, i32 %545, i32 %547)
  %549 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %550 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @b43_radio_write16(%struct.b43_wldev* %549, i32 81, i32 %551)
  %553 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %554 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @b43_radio_write16(%struct.b43_wldev* %553, i32 82, i32 %555)
  %557 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %558 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @b43_radio_write16(%struct.b43_wldev* %557, i32 67, i32 %559)
  %561 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %562 = call i32 @B43_PHY_CCK(i32 90)
  %563 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 4
  %564 = load i32, i32* %563, align 4
  %565 = call i32 @b43_phy_write(%struct.b43_wldev* %561, i32 %562, i32 %564)
  %566 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %567 = call i32 @B43_PHY_CCK(i32 89)
  %568 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 5
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @b43_phy_write(%struct.b43_wldev* %566, i32 %567, i32 %569)
  %571 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %572 = call i32 @B43_PHY_CCK(i32 88)
  %573 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 6
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @b43_phy_write(%struct.b43_wldev* %571, i32 %572, i32 %574)
  %576 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %577 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 18
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @b43_write16(%struct.b43_wldev* %576, i32 998, i32 %578)
  %580 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %581 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %589

584:                                              ; preds = %543
  %585 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %586 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 19
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @b43_write16(%struct.b43_wldev* %585, i32 1012, i32 %587)
  br label %589

589:                                              ; preds = %584, %543
  %590 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %591 = load i32, i32* @B43_PHY_SYNCCTL, align 4
  %592 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 17
  %593 = load i32, i32* %592, align 4
  %594 = call i32 @b43_phy_write(%struct.b43_wldev* %590, i32 %591, i32 %593)
  %595 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %596 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %597 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %596, i32 0, i32 5
  %598 = load i32, i32* %597, align 8
  %599 = call i32 @b43_synth_pu_workaround(%struct.b43_wldev* %595, i32 %598)
  %600 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %601 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %600, i32 0, i32 0
  %602 = load i64, i64* %601, align 8
  %603 = load i64, i64* @B43_PHYTYPE_B, align 8
  %604 = icmp eq i64 %602, %603
  br i1 %604, label %605, label %615

605:                                              ; preds = %589
  %606 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %607 = call i32 @B43_PHY_CCK(i32 48)
  %608 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 7
  %609 = load i32, i32* %608, align 4
  %610 = call i32 @b43_phy_write(%struct.b43_wldev* %606, i32 %607, i32 %609)
  %611 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %612 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 8
  %613 = load i32, i32* %612, align 4
  %614 = call i32 @b43_write16(%struct.b43_wldev* %611, i32 1004, i32 %613)
  br label %674

615:                                              ; preds = %589
  %616 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %617 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %616, i32 0, i32 4
  %618 = load i64, i64* %617, align 8
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %673

620:                                              ; preds = %615
  %621 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %622 = load i32, i32* @B43_MMIO_PHY_RADIO, align 4
  %623 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %624 = load i32, i32* @B43_MMIO_PHY_RADIO, align 4
  %625 = call i32 @b43_read16(%struct.b43_wldev* %623, i32 %624)
  %626 = and i32 %625, 32767
  %627 = call i32 @b43_write16(%struct.b43_wldev* %621, i32 %622, i32 %626)
  %628 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %629 = load i32, i32* @B43_PHY_RFOVER, align 4
  %630 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 9
  %631 = load i32, i32* %630, align 4
  %632 = call i32 @b43_phy_write(%struct.b43_wldev* %628, i32 %629, i32 %631)
  %633 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %634 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %635 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 10
  %636 = load i32, i32* %635, align 4
  %637 = call i32 @b43_phy_write(%struct.b43_wldev* %633, i32 %634, i32 %636)
  %638 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %639 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %640 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 11
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @b43_phy_write(%struct.b43_wldev* %638, i32 %639, i32 %641)
  %643 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %644 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %645 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 12
  %646 = load i32, i32* %645, align 4
  %647 = call i32 @b43_phy_write(%struct.b43_wldev* %643, i32 %644, i32 %646)
  %648 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %649 = load i32, i32* @B43_PHY_CRS0, align 4
  %650 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 13
  %651 = load i32, i32* %650, align 4
  %652 = call i32 @b43_phy_write(%struct.b43_wldev* %648, i32 %649, i32 %651)
  %653 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %654 = load i32, i32* @B43_PHY_CLASSCTL, align 4
  %655 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 14
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @b43_phy_write(%struct.b43_wldev* %653, i32 %654, i32 %656)
  %658 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %659 = call i64 @has_loopback_gain(%struct.b43_phy* %658)
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %672

661:                                              ; preds = %620
  %662 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %663 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %664 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 15
  %665 = load i32, i32* %664, align 4
  %666 = call i32 @b43_phy_write(%struct.b43_wldev* %662, i32 %663, i32 %665)
  %667 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %668 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %669 = getelementptr inbounds %struct.init2050_saved_values, %struct.init2050_saved_values* %4, i32 0, i32 16
  %670 = load i32, i32* %669, align 4
  %671 = call i32 @b43_phy_write(%struct.b43_wldev* %667, i32 %668, i32 %670)
  br label %672

672:                                              ; preds = %661, %620
  br label %673

673:                                              ; preds = %672, %615
  br label %674

674:                                              ; preds = %673, %605
  %675 = load i32, i32* %8, align 4
  %676 = icmp sgt i32 %675, 15
  br i1 %676, label %677, label %679

677:                                              ; preds = %674
  %678 = load i32, i32* %6, align 4
  store i32 %678, i32* %7, align 4
  br label %681

679:                                              ; preds = %674
  %680 = load i32, i32* %5, align 4
  store i32 %680, i32* %7, align 4
  br label %681

681:                                              ; preds = %679, %677
  %682 = load i32, i32* %7, align 4
  ret i32 %682
}

declare dso_local i32 @memset(%struct.init2050_saved_values*, i32, i32) #1

declare dso_local i8* @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i8* @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_PHY_CCK(i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @has_loopback_gain(%struct.b43_phy*) #1

declare dso_local i32 @radio2050_rfover_val(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @LPD(i32, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_core_calibration_value(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bitrev4(i32) #1

declare dso_local i32 @b43_synth_pu_workaround(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
