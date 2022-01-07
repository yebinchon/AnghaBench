; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_init2050.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_init2050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i64, i32, i32, i32, i64, i32 }

@B43legacy_PHYTYPE_B = common dso_local global i64 0, align 8
@B43legacy_PHY_G_CRS = common dso_local global i32 0, align 4
@B43legacy_BFL_EXTLNA = common dso_local global i32 0, align 4
@B43legacy_MMIO_PHY_RADIO = common dso_local global i32 0, align 4
@B43legacy_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca [21 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 1
  store %struct.b43legacy_phy* %11, %struct.b43legacy_phy** %3, align 8
  %12 = bitcast [21 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 84, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %14 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %13, i32 67)
  %15 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %16, i32 81)
  %18 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 14
  store i32 %17, i32* %18, align 8
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %19, i32 82)
  %21 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 15
  store i32 %20, i32* %21, align 4
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %23 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %22, i32 21)
  %24 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %26 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %25, i32 90)
  %27 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 16
  store i32 %26, i32* %27, align 16
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %28, i32 89)
  %30 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 17
  store i32 %29, i32* %30, align 4
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %32 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %31, i32 88)
  %33 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 18
  store i32 %32, i32* %33, align 8
  %34 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %35 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %41 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %40, i32 48)
  %42 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %44 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %43, i32 1004)
  %45 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %47 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %46, i32 48, i32 255)
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %48, i32 1004, i32 16191)
  br label %151

50:                                               ; preds = %1
  %51 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %150

55:                                               ; preds = %50
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %57 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %56, i32 2065)
  %58 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 4
  store i32 %57, i32* %58, align 16
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %59, i32 2066)
  %61 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 5
  store i32 %60, i32* %61, align 4
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %63 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %62, i32 2068)
  %64 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 6
  store i32 %63, i32* %64, align 8
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %66 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %65, i32 2069)
  %67 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 7
  store i32 %66, i32* %67, align 4
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %70 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %68, i32 %69)
  %71 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 8
  store i32 %70, i32* %71, align 16
  %72 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %73 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %72, i32 2050)
  %74 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 9
  store i32 %73, i32* %74, align 4
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %77 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %76, i32 2068)
  %78 = or i32 %77, 3
  %79 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %75, i32 2068, i32 %78)
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %81, i32 2069)
  %83 = and i32 %82, 65532
  %84 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %80, i32 2069, i32 %83)
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %88 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %89 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %87, i32 %88)
  %90 = and i32 %89, 32767
  %91 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %85, i32 %86, i32 %90)
  %92 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %93 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %94 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %93, i32 2050)
  %95 = and i32 %94, 65532
  %96 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %92, i32 2050, i32 %95)
  %97 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %98 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %121

101:                                              ; preds = %55
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %103 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %102, i32 2063)
  %104 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 19
  store i32 %103, i32* %104, align 4
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %106 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %105, i32 2064)
  %107 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 20
  store i32 %106, i32* %107, align 16
  %108 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %109 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 3
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %114 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %113, i32 2063, i32 49184)
  br label %118

115:                                              ; preds = %101
  %116 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %117 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %116, i32 2063, i32 32800)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %120 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %119, i32 2064, i32 0)
  br label %121

121:                                              ; preds = %118, %55
  %122 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %124 = call i32 @LPD(i32 0, i32 1, i32 1)
  %125 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %123, i32 %124)
  %126 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %122, i32 2066, i32 %125)
  %127 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %128 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, 7
  br i1 %130, label %143, label %131

131:                                              ; preds = %121
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %133 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @B43legacy_BFL_EXTLNA, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %131, %121
  %144 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %145 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %144, i32 2065, i32 435)
  br label %149

146:                                              ; preds = %131
  %147 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %148 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %147, i32 2065, i32 2483)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %50
  br label %151

151:                                              ; preds = %150, %39
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %153 = load i32, i32* @B43legacy_MMIO_PHY_RADIO, align 4
  %154 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %155 = load i32, i32* @B43legacy_MMIO_PHY_RADIO, align 4
  %156 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %154, i32 %155)
  %157 = or i32 %156, 32768
  %158 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %152, i32 %153, i32 %157)
  %159 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %160 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %159, i32 53)
  %161 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 10
  store i32 %160, i32* %161, align 8
  %162 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %163 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %164 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %163, i32 53)
  %165 = and i32 %164, 65407
  %166 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %162, i32 53, i32 %165)
  %167 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %168 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %167, i32 998)
  %169 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 11
  store i32 %168, i32* %169, align 4
  %170 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %171 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %172 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %170, i32 %171)
  %173 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 12
  store i32 %172, i32* %173, align 16
  %174 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %175 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %151
  %179 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %180 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %179, i32 998, i32 290)
  br label %201

181:                                              ; preds = %151
  %182 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %183 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %184, 2
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %188 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %189 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %188, i32 3)
  %190 = and i32 %189, 65471
  %191 = or i32 %190, 64
  %192 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %187, i32 3, i32 %191)
  br label %193

193:                                              ; preds = %186, %181
  %194 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %195 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %196 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %197 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %198 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %196, i32 %197)
  %199 = or i32 %198, 8192
  %200 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %194, i32 %195, i32 %199)
  br label %201

201:                                              ; preds = %193, %178
  %202 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %203 = call i32 @b43legacy_radio_calibrationvalue(%struct.b43legacy_wldev* %202)
  store i32 %203, i32* %5, align 4
  %204 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %205 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %211 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %210, i32 120, i32 38)
  br label %212

212:                                              ; preds = %209, %201
  %213 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %214 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %219 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %220 = call i32 @LPD(i32 0, i32 1, i32 1)
  %221 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %219, i32 %220)
  %222 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %218, i32 2066, i32 %221)
  br label %223

223:                                              ; preds = %217, %212
  %224 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %225 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %224, i32 21, i32 49071)
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %227 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %226, i32 43, i32 5123)
  %228 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %229 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %223
  %233 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %234 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %235 = call i32 @LPD(i32 0, i32 0, i32 1)
  %236 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %234, i32 %235)
  %237 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %233, i32 2066, i32 %236)
  br label %238

238:                                              ; preds = %232, %223
  %239 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %240 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %239, i32 21, i32 49056)
  %241 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %242 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %243 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %242, i32 81)
  %244 = or i32 %243, 4
  %245 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %241, i32 81, i32 %244)
  %246 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %247 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 8
  br i1 %249, label %250, label %253

250:                                              ; preds = %238
  %251 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %252 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %251, i32 67, i32 31)
  br label %262

253:                                              ; preds = %238
  %254 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %255 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %254, i32 82, i32 0)
  %256 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %257 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %258 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %257, i32 67)
  %259 = and i32 %258, 65520
  %260 = or i32 %259, 9
  %261 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %256, i32 67, i32 %260)
  br label %262

262:                                              ; preds = %253, %250
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %264 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %263, i32 88, i32 0)
  store i32 0, i32* %6, align 4
  br label %265

265:                                              ; preds = %336, %262
  %266 = load i32, i32* %6, align 4
  %267 = icmp slt i32 %266, 16
  br i1 %267, label %268, label %339

268:                                              ; preds = %265
  %269 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %270 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %269, i32 90, i32 1152)
  %271 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %272 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %271, i32 89, i32 51216)
  %273 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %274 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %273, i32 88, i32 13)
  %275 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %276 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %268
  %280 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %281 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %282 = call i32 @LPD(i32 1, i32 0, i32 1)
  %283 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %281, i32 %282)
  %284 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %280, i32 2066, i32 %283)
  br label %285

285:                                              ; preds = %279, %268
  %286 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %287 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %286, i32 21, i32 44976)
  %288 = call i32 @udelay(i32 10)
  %289 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %290 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %295 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %296 = call i32 @LPD(i32 1, i32 0, i32 1)
  %297 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %295, i32 %296)
  %298 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %294, i32 2066, i32 %297)
  br label %299

299:                                              ; preds = %293, %285
  %300 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %301 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %300, i32 21, i32 61360)
  %302 = call i32 @udelay(i32 10)
  %303 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %304 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %299
  %308 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %309 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %310 = call i32 @LPD(i32 1, i32 0, i32 0)
  %311 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %309, i32 %310)
  %312 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %308, i32 2066, i32 %311)
  br label %313

313:                                              ; preds = %307, %299
  %314 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %315 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %314, i32 21, i32 65520)
  %316 = call i32 @udelay(i32 20)
  %317 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %318 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %317, i32 45)
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* %8, align 4
  %321 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %322 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %321, i32 88, i32 0)
  %323 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %324 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %313
  %328 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %329 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %330 = call i32 @LPD(i32 1, i32 0, i32 1)
  %331 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %329, i32 %330)
  %332 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %328, i32 2066, i32 %331)
  br label %333

333:                                              ; preds = %327, %313
  %334 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %335 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %334, i32 21, i32 44976)
  br label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %265

339:                                              ; preds = %265
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %8, align 4
  %343 = ashr i32 %342, 9
  store i32 %343, i32* %8, align 4
  %344 = call i32 @udelay(i32 10)
  %345 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %346 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %345, i32 88, i32 0)
  store i32 0, i32* %6, align 4
  br label %347

347:                                              ; preds = %445, %339
  %348 = load i32, i32* %6, align 4
  %349 = icmp slt i32 %348, 16
  br i1 %349, label %350, label %448

350:                                              ; preds = %347
  %351 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %352 = load i32, i32* %6, align 4
  %353 = call i32 @flip_4bit(i32 %352)
  %354 = shl i32 %353, 1
  %355 = or i32 %354, 32
  %356 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %351, i32 120, i32 %355)
  %357 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %358 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %357, i32 120)
  %359 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 13
  store i32 %358, i32* %359, align 4
  %360 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %361

361:                                              ; preds = %432, %350
  %362 = load i32, i32* %7, align 4
  %363 = icmp slt i32 %362, 16
  br i1 %363, label %364, label %435

364:                                              ; preds = %361
  %365 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %366 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %365, i32 90, i32 3456)
  %367 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %368 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %367, i32 89, i32 51216)
  %369 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %370 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %369, i32 88, i32 13)
  %371 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %372 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %364
  %376 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %377 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %378 = call i32 @LPD(i32 1, i32 0, i32 1)
  %379 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %377, i32 %378)
  %380 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %376, i32 2066, i32 %379)
  br label %381

381:                                              ; preds = %375, %364
  %382 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %383 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %382, i32 21, i32 44976)
  %384 = call i32 @udelay(i32 10)
  %385 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %386 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %385, i32 0, i32 4
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %381
  %390 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %391 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %392 = call i32 @LPD(i32 1, i32 0, i32 1)
  %393 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %391, i32 %392)
  %394 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %390, i32 2066, i32 %393)
  br label %395

395:                                              ; preds = %389, %381
  %396 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %397 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %396, i32 21, i32 61360)
  %398 = call i32 @udelay(i32 10)
  %399 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %400 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  %404 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %405 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %406 = call i32 @LPD(i32 1, i32 0, i32 0)
  %407 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %405, i32 %406)
  %408 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %404, i32 2066, i32 %407)
  br label %409

409:                                              ; preds = %403, %395
  %410 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %411 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %410, i32 21, i32 65520)
  %412 = call i32 @udelay(i32 10)
  %413 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %414 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %413, i32 45)
  %415 = load i32, i32* %9, align 4
  %416 = add nsw i32 %415, %414
  store i32 %416, i32* %9, align 4
  %417 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %418 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %417, i32 88, i32 0)
  %419 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %420 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %419, i32 0, i32 4
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %409
  %424 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %425 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %426 = call i32 @LPD(i32 1, i32 0, i32 1)
  %427 = call i32 @b43legacy_get_812_value(%struct.b43legacy_wldev* %425, i32 %426)
  %428 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %424, i32 2066, i32 %427)
  br label %429

429:                                              ; preds = %423, %409
  %430 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %431 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %430, i32 21, i32 44976)
  br label %432

432:                                              ; preds = %429
  %433 = load i32, i32* %7, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %7, align 4
  br label %361

435:                                              ; preds = %361
  %436 = load i32, i32* %9, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %9, align 4
  %438 = load i32, i32* %9, align 4
  %439 = ashr i32 %438, 8
  store i32 %439, i32* %9, align 4
  %440 = load i32, i32* %8, align 4
  %441 = load i32, i32* %9, align 4
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %435
  br label %448

444:                                              ; preds = %435
  br label %445

445:                                              ; preds = %444
  %446 = load i32, i32* %6, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %6, align 4
  br label %347

448:                                              ; preds = %443, %347
  %449 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %450 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 1
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %449, i32 21, i32 %451)
  %453 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %454 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 14
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %453, i32 81, i32 %455)
  %457 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %458 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 15
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %457, i32 82, i32 %459)
  %461 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %462 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 0
  %463 = load i32, i32* %462, align 16
  %464 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %461, i32 67, i32 %463)
  %465 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %466 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 16
  %467 = load i32, i32* %466, align 16
  %468 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %465, i32 90, i32 %467)
  %469 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %470 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 17
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %469, i32 89, i32 %471)
  %473 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %474 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 18
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %473, i32 88, i32 %475)
  %477 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %478 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 11
  %479 = load i32, i32* %478, align 4
  %480 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %477, i32 998, i32 %479)
  %481 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %482 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %448
  %486 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %487 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %488 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 12
  %489 = load i32, i32* %488, align 16
  %490 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %486, i32 %487, i32 %489)
  br label %491

491:                                              ; preds = %485, %448
  %492 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %493 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 10
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %492, i32 53, i32 %494)
  %496 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %497 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %498 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %497, i32 0, i32 5
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %496, i32 %499, i32 1)
  %501 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %502 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %505 = icmp eq i64 %503, %504
  br i1 %505, label %506, label %515

506:                                              ; preds = %491
  %507 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %508 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 2
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %507, i32 48, i32 %509)
  %511 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %512 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 3
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %511, i32 1004, i32 %513)
  br label %568

515:                                              ; preds = %491
  %516 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %517 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %516, i32 0, i32 4
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %567

520:                                              ; preds = %515
  %521 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %522 = load i32, i32* @B43legacy_MMIO_PHY_RADIO, align 4
  %523 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %524 = load i32, i32* @B43legacy_MMIO_PHY_RADIO, align 4
  %525 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %523, i32 %524)
  %526 = and i32 %525, 32767
  %527 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %521, i32 %522, i32 %526)
  %528 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %529 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 4
  %530 = load i32, i32* %529, align 16
  %531 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %528, i32 2065, i32 %530)
  %532 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %533 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 5
  %534 = load i32, i32* %533, align 4
  %535 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %532, i32 2066, i32 %534)
  %536 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %537 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 6
  %538 = load i32, i32* %537, align 8
  %539 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %536, i32 2068, i32 %538)
  %540 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %541 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 7
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %540, i32 2069, i32 %542)
  %544 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %545 = load i32, i32* @B43legacy_PHY_G_CRS, align 4
  %546 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 8
  %547 = load i32, i32* %546, align 16
  %548 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %544, i32 %545, i32 %547)
  %549 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %550 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 9
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %549, i32 2050, i32 %551)
  %553 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %554 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 8
  %556 = icmp sgt i32 %555, 1
  br i1 %556, label %557, label %566

557:                                              ; preds = %520
  %558 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %559 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 19
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %558, i32 2063, i32 %560)
  %562 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %563 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 20
  %564 = load i32, i32* %563, align 16
  %565 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %562, i32 2064, i32 %564)
  br label %566

566:                                              ; preds = %557, %520
  br label %567

567:                                              ; preds = %566, %515
  br label %568

568:                                              ; preds = %567, %506
  %569 = load i32, i32* %6, align 4
  %570 = icmp sge i32 %569, 15
  br i1 %570, label %571, label %574

571:                                              ; preds = %568
  %572 = getelementptr inbounds [21 x i32], [21 x i32]* %4, i64 0, i64 13
  %573 = load i32, i32* %572, align 4
  store i32 %573, i32* %5, align 4
  br label %574

574:                                              ; preds = %571, %568
  %575 = load i32, i32* %5, align 4
  ret i32 %575
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_get_812_value(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @LPD(i32, i32, i32) #2

declare dso_local i32 @b43legacy_radio_calibrationvalue(%struct.b43legacy_wldev*) #2

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @flip_4bit(i32) #2

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
