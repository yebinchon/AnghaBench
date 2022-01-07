; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_initb6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_initb6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i64, i32, i32 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_UCODEFLAGS_OFFSET = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_PHYTYPE_B = common dso_local global i64 0, align 8
@B43legacy_BFL_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_phy_initb6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_phy_initb6(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %7, i32 0, i32 1
  store %struct.b43legacy_phy* %8, %struct.b43legacy_phy** %3, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %9, i32 62, i32 33146)
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %12, i32 122)
  %14 = or i32 %13, 88
  %15 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %11, i32 122, i32 %14)
  %16 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %17 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %53

25:                                               ; preds = %20, %1
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %27 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %26, i32 81, i32 55)
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %28, i32 82, i32 112)
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %30, i32 83, i32 179)
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %32, i32 84, i32 155)
  %34 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %35 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %34, i32 90, i32 136)
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %36, i32 91, i32 136)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %38, i32 93, i32 136)
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %41 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %40, i32 94, i32 136)
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %42, i32 125, i32 136)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %46 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %48 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %49 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %50 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %47, i32 %48, i32 %49)
  %51 = or i32 %50, 512
  %52 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %44, i32 %45, i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %25, %20
  %54 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %55 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %102

58:                                               ; preds = %53
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %59, i32 81, i32 0)
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %62 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %61, i32 82, i32 64)
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %63, i32 83, i32 183)
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %66 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %65, i32 84, i32 152)
  %67 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %68 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %67, i32 90, i32 136)
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %70 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %69, i32 91, i32 107)
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %72 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %71, i32 92, i32 15)
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %74 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 32768
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %58
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %85 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %84, i32 93, i32 250)
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %86, i32 94, i32 216)
  br label %93

88:                                               ; preds = %58
  %89 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %90 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %89, i32 93, i32 245)
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %91, i32 94, i32 184)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %95 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %94, i32 115, i32 3)
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %97 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %96, i32 125, i32 168)
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %99 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %98, i32 124, i32 1)
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %101 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %100, i32 126, i32 8)
  br label %102

102:                                              ; preds = %93, %53
  store i32 7711, i32* %5, align 4
  store i32 136, i32* %4, align 4
  br label %103

103:                                              ; preds = %113, %102
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 152
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %107, i32 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 514
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %103

116:                                              ; preds = %103
  store i32 15935, i32* %5, align 4
  store i32 152, i32* %4, align 4
  br label %117

117:                                              ; preds = %127, %116
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %118, 168
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 %125, 514
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %117

130:                                              ; preds = %117
  store i32 8480, i32* %5, align 4
  store i32 168, i32* %4, align 4
  br label %131

131:                                              ; preds = %142, %130
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 200
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 16191
  %139 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %135, i32 %136, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 514
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %131

145:                                              ; preds = %131
  %146 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %147 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %145
  %152 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %153 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %154 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %153, i32 122)
  %155 = or i32 %154, 32
  %156 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %152, i32 122, i32 %155)
  %157 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %158 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %159 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %158, i32 81)
  %160 = or i32 %159, 4
  %161 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %157, i32 81, i32 %160)
  %162 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %163 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %164 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %163, i32 2050)
  %165 = or i32 %164, 256
  %166 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %162, i32 2050, i32 %165)
  %167 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %168 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %169 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %168, i32 1067)
  %170 = or i32 %169, 8192
  %171 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %167, i32 1067, i32 %170)
  %172 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %173 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %172, i32 91, i32 0)
  %174 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %175 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %174, i32 92, i32 0)
  br label %176

176:                                              ; preds = %151, %145
  %177 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %178 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp sge i32 %180, 8
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %184 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %183, i32 1, i32 0)
  br label %188

185:                                              ; preds = %176
  %186 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %187 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %186, i32 13, i32 0)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %190 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %189, i32 80, i32 32)
  %191 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %192 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %191, i32 80, i32 35)
  %193 = call i32 @udelay(i32 40)
  %194 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %195 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %196, 6
  br i1 %197, label %203, label %198

198:                                              ; preds = %188
  %199 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %200 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %203, label %211

203:                                              ; preds = %198, %188
  %204 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %205 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %206 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %205, i32 124)
  %207 = or i32 %206, 2
  %208 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %204, i32 124, i32 %207)
  %209 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %210 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %209, i32 80, i32 32)
  br label %211

211:                                              ; preds = %203, %198
  %212 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %213 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sle i32 %214, 2
  br i1 %215, label %216, label %225

216:                                              ; preds = %211
  %217 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %218 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %217, i32 80, i32 32)
  %219 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %220 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %219, i32 90, i32 112)
  %221 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %222 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %221, i32 91, i32 123)
  %223 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %224 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %223, i32 92, i32 176)
  br label %225

225:                                              ; preds = %216, %211
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %227 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %228 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %227, i32 122)
  %229 = and i32 %228, 248
  %230 = or i32 %229, 7
  %231 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %226, i32 122, i32 %230)
  %232 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %232, i32 %233, i32 0)
  %235 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %236 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %235, i32 20, i32 512)
  %237 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %238 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp sge i32 %239, 6
  br i1 %240, label %241, label %244

241:                                              ; preds = %225
  %242 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %243 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %242, i32 42, i32 35010)
  br label %247

244:                                              ; preds = %225
  %245 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %246 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %245, i32 42, i32 35520)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %249 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %248, i32 56, i32 1640)
  %250 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %251 = call i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %250, i32 65535, i32 65535, i32 65535)
  %252 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %253 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 4
  br i1 %255, label %261, label %256

256:                                              ; preds = %247
  %257 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %258 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 5
  br i1 %260, label %261, label %268

261:                                              ; preds = %256, %247
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %264 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %263, i32 93)
  %265 = and i32 %264, 65408
  %266 = or i32 %265, 3
  %267 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %262, i32 93, i32 %266)
  br label %268

268:                                              ; preds = %261, %256
  %269 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %270 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp sle i32 %271, 2
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %275 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %274, i32 93, i32 13)
  br label %276

276:                                              ; preds = %273, %268
  %277 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %278 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 4
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %283 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %282, i32 996, i32 9)
  %284 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %285 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %286 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %285, i32 97)
  %287 = and i32 %286, 4095
  %288 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %284, i32 97, i32 %287)
  br label %296

289:                                              ; preds = %276
  %290 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %291 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %292 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %291, i32 2)
  %293 = and i32 %292, 65472
  %294 = or i32 %293, 4
  %295 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %290, i32 2, i32 %294)
  br label %296

296:                                              ; preds = %289, %281
  %297 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %298 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %296
  %303 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %304 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %303, i32 998, i32 0)
  br label %305

305:                                              ; preds = %302, %296
  %306 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %307 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %343

311:                                              ; preds = %305
  %312 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %313 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %312, i32 998, i32 33088)
  %314 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %315 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %314, i32 22, i32 1040)
  %316 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %317 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %316, i32 23, i32 2080)
  %318 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %319 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %318, i32 98, i32 7)
  %320 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %321 = call i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev* %320)
  %322 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %323 = call i32 @b43legacy_phy_lo_g_measure(%struct.b43legacy_wldev* %322)
  %324 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %325 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %324, i32 0, i32 0
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @B43legacy_BFL_RSSI, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %311
  %336 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %337 = call i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev* %336)
  %338 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %339 = call i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev* %338)
  br label %340

340:                                              ; preds = %335, %311
  %341 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %342 = call i32 @b43legacy_phy_init_pctl(%struct.b43legacy_wldev* %341)
  br label %343

343:                                              ; preds = %340, %305
  ret void
}

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_shm_write32(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_radio_init2050(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_lo_g_measure(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_calc_nrssi_slope(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_calc_nrssi_threshold(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_init_pctl(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
