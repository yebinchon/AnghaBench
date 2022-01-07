; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_calc_loopback_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_calc_loopback_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_5__*, %struct.b43_phy }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.b43_phy = type { i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@B43_PHY_CCKBBANDCFG = common dso_local global i32 0, align 4
@B43_PHY_RFOVER = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_LO_MASK = common dso_local global i32 0, align 4
@B43_PHY_LO_CTL = common dso_local global i32 0, align 4
@B43_PHY_PGACTL = common dso_local global i32 0, align 4
@B43_PHY_LO_LEAKAGE = common dso_local global i32 0, align 4
@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_calc_loopback_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_calc_loopback_gain(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  store %struct.b43_phy* %15, %struct.b43_phy** %3, align 8
  %16 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %16, i32 0, i32 2
  %18 = load %struct.b43_phy_g*, %struct.b43_phy_g** %17, align 8
  store %struct.b43_phy_g* %18, %struct.b43_phy_g** %4, align 8
  %19 = bitcast [16 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 64, i1 false)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_PHY_CRS0, align 4
  %22 = call i32 @b43_phy_read(%struct.b43_wldev* %20, i32 %21)
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_PHY_CCKBBANDCFG, align 4
  %26 = call i32 @b43_phy_read(%struct.b43_wldev* %24, i32 %25)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_PHY_RFOVER, align 4
  %30 = call i32 @b43_phy_read(%struct.b43_wldev* %28, i32 %29)
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %34 = call i32 @b43_phy_read(%struct.b43_wldev* %32, i32 %33)
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %37 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %43 = call i32 @b43_phy_read(%struct.b43_wldev* %41, i32 %42)
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  store i32 %43, i32* %44, align 16
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %47 = call i32 @b43_phy_read(%struct.b43_wldev* %45, i32 %46)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %1
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 @B43_PHY_CCK(i32 90)
  %52 = call i32 @b43_phy_read(%struct.b43_wldev* %50, i32 %51)
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 6
  store i32 %52, i32* %53, align 8
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @B43_PHY_CCK(i32 89)
  %56 = call i32 @b43_phy_read(%struct.b43_wldev* %54, i32 %55)
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 7
  store i32 %56, i32* %57, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @B43_PHY_CCK(i32 88)
  %60 = call i32 @b43_phy_read(%struct.b43_wldev* %58, i32 %59)
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 8
  store i32 %60, i32* %61, align 16
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = call i32 @B43_PHY_CCK(i32 10)
  %64 = call i32 @b43_phy_read(%struct.b43_wldev* %62, i32 %63)
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 9
  store i32 %64, i32* %65, align 4
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 @B43_PHY_CCK(i32 3)
  %68 = call i32 @b43_phy_read(%struct.b43_wldev* %66, i32 %67)
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 10
  store i32 %68, i32* %69, align 8
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %72 = call i32 @b43_phy_read(%struct.b43_wldev* %70, i32 %71)
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 11
  store i32 %72, i32* %73, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %76 = call i32 @b43_phy_read(%struct.b43_wldev* %74, i32 %75)
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 12
  store i32 %76, i32* %77, align 16
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = call i32 @B43_PHY_CCK(i32 43)
  %80 = call i32 @b43_phy_read(%struct.b43_wldev* %78, i32 %79)
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 13
  store i32 %80, i32* %81, align 4
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @B43_PHY_PGACTL, align 4
  %84 = call i32 @b43_phy_read(%struct.b43_wldev* %82, i32 %83)
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 14
  store i32 %84, i32* %85, align 8
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_PHY_LO_LEAKAGE, align 4
  %88 = call i32 @b43_phy_read(%struct.b43_wldev* %86, i32 %87)
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 15
  store i32 %88, i32* %89, align 4
  %90 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %91 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %7, align 4
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = call i32 @b43_radio_read16(%struct.b43_wldev* %94, i32 82)
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i32 @b43_radio_read16(%struct.b43_wldev* %97, i32 67)
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = call i32 @b43_radio_read16(%struct.b43_wldev* %100, i32 122)
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %101, i32* %102, align 4
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B43_PHY_CRS0, align 4
  %105 = call i32 @b43_phy_mask(%struct.b43_wldev* %103, i32 %104, i32 16383)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @B43_PHY_CCKBBANDCFG, align 4
  %108 = call i32 @b43_phy_set(%struct.b43_wldev* %106, i32 %107, i32 32768)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B43_PHY_RFOVER, align 4
  %111 = call i32 @b43_phy_set(%struct.b43_wldev* %109, i32 %110, i32 2)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %114 = call i32 @b43_phy_mask(%struct.b43_wldev* %112, i32 %113, i32 65533)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B43_PHY_RFOVER, align 4
  %117 = call i32 @b43_phy_set(%struct.b43_wldev* %115, i32 %116, i32 1)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %120 = call i32 @b43_phy_mask(%struct.b43_wldev* %118, i32 %119, i32 65534)
  %121 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %122 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %138

125:                                              ; preds = %49
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %128 = call i32 @b43_phy_set(%struct.b43_wldev* %126, i32 %127, i32 1)
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %131 = call i32 @b43_phy_mask(%struct.b43_wldev* %129, i32 %130, i32 65534)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %134 = call i32 @b43_phy_set(%struct.b43_wldev* %132, i32 %133, i32 2)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %137 = call i32 @b43_phy_mask(%struct.b43_wldev* %135, i32 %136, i32 65533)
  br label %138

138:                                              ; preds = %125, %49
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = load i32, i32* @B43_PHY_RFOVER, align 4
  %141 = call i32 @b43_phy_set(%struct.b43_wldev* %139, i32 %140, i32 12)
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %143 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %144 = call i32 @b43_phy_set(%struct.b43_wldev* %142, i32 %143, i32 12)
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = load i32, i32* @B43_PHY_RFOVER, align 4
  %147 = call i32 @b43_phy_set(%struct.b43_wldev* %145, i32 %146, i32 48)
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %150 = call i32 @b43_phy_maskset(%struct.b43_wldev* %148, i32 %149, i32 65487, i32 16)
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %152 = call i32 @B43_PHY_CCK(i32 90)
  %153 = call i32 @b43_phy_write(%struct.b43_wldev* %151, i32 %152, i32 1920)
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %155 = call i32 @B43_PHY_CCK(i32 89)
  %156 = call i32 @b43_phy_write(%struct.b43_wldev* %154, i32 %155, i32 51216)
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = call i32 @B43_PHY_CCK(i32 88)
  %159 = call i32 @b43_phy_write(%struct.b43_wldev* %157, i32 %158, i32 13)
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %161 = call i32 @B43_PHY_CCK(i32 10)
  %162 = call i32 @b43_phy_set(%struct.b43_wldev* %160, i32 %161, i32 8192)
  %163 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %164 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %174

167:                                              ; preds = %138
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %170 = call i32 @b43_phy_set(%struct.b43_wldev* %168, i32 %169, i32 4)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %173 = call i32 @b43_phy_mask(%struct.b43_wldev* %171, i32 %172, i32 65531)
  br label %174

174:                                              ; preds = %167, %138
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = call i32 @B43_PHY_CCK(i32 3)
  %177 = call i32 @b43_phy_maskset(%struct.b43_wldev* %175, i32 %176, i32 65439, i32 64)
  %178 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %179 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 8
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %184 = call i32 @b43_radio_write16(%struct.b43_wldev* %183, i32 67, i32 15)
  br label %190

185:                                              ; preds = %174
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = call i32 @b43_radio_write16(%struct.b43_wldev* %186, i32 82, i32 0)
  %188 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %189 = call i32 @b43_radio_maskset(%struct.b43_wldev* %188, i32 67, i32 65520, i32 9)
  br label %190

190:                                              ; preds = %185, %182
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %192 = call i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev* %191, i32 11)
  %193 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %194 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sge i32 %195, 3
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %200 = call i32 @b43_phy_write(%struct.b43_wldev* %198, i32 %199, i32 49184)
  br label %205

201:                                              ; preds = %190
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %204 = call i32 @b43_phy_write(%struct.b43_wldev* %202, i32 %203, i32 32800)
  br label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %208 = call i32 @b43_phy_write(%struct.b43_wldev* %206, i32 %207, i32 0)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = call i32 @B43_PHY_CCK(i32 43)
  %211 = call i32 @b43_phy_maskset(%struct.b43_wldev* %209, i32 %210, i32 65472, i32 1)
  %212 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %213 = call i32 @B43_PHY_CCK(i32 43)
  %214 = call i32 @b43_phy_maskset(%struct.b43_wldev* %212, i32 %213, i32 49407, i32 2048)
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %216 = load i32, i32* @B43_PHY_RFOVER, align 4
  %217 = call i32 @b43_phy_set(%struct.b43_wldev* %215, i32 %216, i32 256)
  %218 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %219 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %220 = call i32 @b43_phy_mask(%struct.b43_wldev* %218, i32 %219, i32 53247)
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %222 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %205
  %232 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %233 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp sge i32 %234, 7
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = load i32, i32* @B43_PHY_RFOVER, align 4
  %239 = call i32 @b43_phy_set(%struct.b43_wldev* %237, i32 %238, i32 2048)
  %240 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %241 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %242 = call i32 @b43_phy_set(%struct.b43_wldev* %240, i32 %241, i32 32768)
  br label %243

243:                                              ; preds = %236, %231
  br label %244

244:                                              ; preds = %243, %205
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %246 = call i32 @b43_radio_mask(%struct.b43_wldev* %245, i32 122, i32 247)
  store i32 0, i32* %9, align 4
  %247 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %248 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 8
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 15, i32 9
  store i32 %252, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %253

253:                                              ; preds = %287, %244
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %290

257:                                              ; preds = %253
  store i32 0, i32* %9, align 4
  br label %258

258:                                              ; preds = %283, %257
  %259 = load i32, i32* %9, align 4
  %260 = icmp slt i32 %259, 16
  br i1 %260, label %261, label %286

261:                                              ; preds = %258
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @b43_radio_write16(%struct.b43_wldev* %262, i32 67, i32 %263)
  %265 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %266 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %267 = load i32, i32* %9, align 4
  %268 = shl i32 %267, 8
  %269 = call i32 @b43_phy_maskset(%struct.b43_wldev* %265, i32 %266, i32 61695, i32 %268)
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %271 = load i32, i32* @B43_PHY_PGACTL, align 4
  %272 = call i32 @b43_phy_maskset(%struct.b43_wldev* %270, i32 %271, i32 4095, i32 40960)
  %273 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %274 = load i32, i32* @B43_PHY_PGACTL, align 4
  %275 = call i32 @b43_phy_set(%struct.b43_wldev* %273, i32 %274, i32 61440)
  %276 = call i32 @udelay(i32 20)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = load i32, i32* @B43_PHY_LO_LEAKAGE, align 4
  %279 = call i32 @b43_phy_read(%struct.b43_wldev* %277, i32 %278)
  %280 = icmp sge i32 %279, 3580
  br i1 %280, label %281, label %282

281:                                              ; preds = %261
  br label %291

282:                                              ; preds = %261
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %258

286:                                              ; preds = %258
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %8, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %8, align 4
  br label %253

290:                                              ; preds = %253
  br label %291

291:                                              ; preds = %290, %281
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %12, align 4
  %293 = load i32, i32* %9, align 4
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp sge i32 %294, 8
  br i1 %295, label %296, label %330

296:                                              ; preds = %291
  %297 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %298 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %299 = call i32 @b43_phy_set(%struct.b43_wldev* %297, i32 %298, i32 48)
  store i32 27, i32* %11, align 4
  %300 = load i32, i32* %9, align 4
  %301 = sub nsw i32 %300, 8
  store i32 %301, i32* %9, align 4
  br label %302

302:                                              ; preds = %326, %296
  %303 = load i32, i32* %9, align 4
  %304 = icmp slt i32 %303, 16
  br i1 %304, label %305, label %329

305:                                              ; preds = %302
  %306 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %307 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %308 = load i32, i32* %9, align 4
  %309 = shl i32 %308, 8
  %310 = call i32 @b43_phy_maskset(%struct.b43_wldev* %306, i32 %307, i32 61695, i32 %309)
  %311 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %312 = load i32, i32* @B43_PHY_PGACTL, align 4
  %313 = call i32 @b43_phy_maskset(%struct.b43_wldev* %311, i32 %312, i32 4095, i32 40960)
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %315 = load i32, i32* @B43_PHY_PGACTL, align 4
  %316 = call i32 @b43_phy_set(%struct.b43_wldev* %314, i32 %315, i32 61440)
  %317 = call i32 @udelay(i32 20)
  %318 = load i32, i32* %11, align 4
  %319 = sub nsw i32 %318, 3
  store i32 %319, i32* %11, align 4
  %320 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %321 = load i32, i32* @B43_PHY_LO_LEAKAGE, align 4
  %322 = call i32 @b43_phy_read(%struct.b43_wldev* %320, i32 %321)
  %323 = icmp sge i32 %322, 3580
  br i1 %323, label %324, label %325

324:                                              ; preds = %305
  br label %332

325:                                              ; preds = %305
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %9, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %9, align 4
  br label %302

329:                                              ; preds = %302
  br label %331

330:                                              ; preds = %291
  store i32 24, i32* %11, align 4
  br label %331

331:                                              ; preds = %330, %329
  br label %332

332:                                              ; preds = %331, %324
  %333 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %334 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 1
  br i1 %336, label %337, label %348

337:                                              ; preds = %332
  %338 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %339 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %340 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 4
  %341 = load i32, i32* %340, align 16
  %342 = call i32 @b43_phy_write(%struct.b43_wldev* %338, i32 %339, i32 %341)
  %343 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %344 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %345 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 5
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @b43_phy_write(%struct.b43_wldev* %343, i32 %344, i32 %346)
  br label %348

348:                                              ; preds = %337, %332
  %349 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %350 = call i32 @B43_PHY_CCK(i32 90)
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 6
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @b43_phy_write(%struct.b43_wldev* %349, i32 %350, i32 %352)
  %354 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %355 = call i32 @B43_PHY_CCK(i32 89)
  %356 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 7
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @b43_phy_write(%struct.b43_wldev* %354, i32 %355, i32 %357)
  %359 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %360 = call i32 @B43_PHY_CCK(i32 88)
  %361 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 8
  %362 = load i32, i32* %361, align 16
  %363 = call i32 @b43_phy_write(%struct.b43_wldev* %359, i32 %360, i32 %362)
  %364 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %365 = call i32 @B43_PHY_CCK(i32 10)
  %366 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 9
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @b43_phy_write(%struct.b43_wldev* %364, i32 %365, i32 %367)
  %369 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %370 = call i32 @B43_PHY_CCK(i32 3)
  %371 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 10
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @b43_phy_write(%struct.b43_wldev* %369, i32 %370, i32 %372)
  %374 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %375 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %376 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 11
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @b43_phy_write(%struct.b43_wldev* %374, i32 %375, i32 %377)
  %379 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %380 = load i32, i32* @B43_PHY_LO_CTL, align 4
  %381 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 12
  %382 = load i32, i32* %381, align 16
  %383 = call i32 @b43_phy_write(%struct.b43_wldev* %379, i32 %380, i32 %382)
  %384 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %385 = call i32 @B43_PHY_CCK(i32 43)
  %386 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 13
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @b43_phy_write(%struct.b43_wldev* %384, i32 %385, i32 %387)
  %389 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %390 = load i32, i32* @B43_PHY_PGACTL, align 4
  %391 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 14
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @b43_phy_write(%struct.b43_wldev* %389, i32 %390, i32 %392)
  %394 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %395 = load i32, i32* %7, align 4
  %396 = call i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev* %394, i32 %395)
  %397 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %398 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @b43_radio_write16(%struct.b43_wldev* %397, i32 82, i32 %399)
  %401 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %402 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @b43_radio_write16(%struct.b43_wldev* %401, i32 67, i32 %403)
  %405 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %406 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @b43_radio_write16(%struct.b43_wldev* %405, i32 122, i32 %407)
  %409 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %410 = load i32, i32* @B43_PHY_RFOVER, align 4
  %411 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, 3
  %414 = call i32 @b43_phy_write(%struct.b43_wldev* %409, i32 %410, i32 %413)
  %415 = call i32 @udelay(i32 10)
  %416 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %417 = load i32, i32* @B43_PHY_RFOVER, align 4
  %418 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 2
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @b43_phy_write(%struct.b43_wldev* %416, i32 %417, i32 %419)
  %421 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %422 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %423 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 3
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @b43_phy_write(%struct.b43_wldev* %421, i32 %422, i32 %424)
  %426 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %427 = load i32, i32* @B43_PHY_CRS0, align 4
  %428 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %429 = load i32, i32* %428, align 16
  %430 = call i32 @b43_phy_write(%struct.b43_wldev* %426, i32 %427, i32 %429)
  %431 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %432 = load i32, i32* @B43_PHY_CCKBBANDCFG, align 4
  %433 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @b43_phy_write(%struct.b43_wldev* %431, i32 %432, i32 %434)
  %436 = load i32, i32* %13, align 4
  %437 = mul nsw i32 %436, 6
  %438 = load i32, i32* %12, align 4
  %439 = mul nsw i32 %438, 4
  %440 = sub nsw i32 %437, %439
  %441 = sub nsw i32 %440, 11
  %442 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %443 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %442, i32 0, i32 0
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* %11, align 4
  %445 = mul nsw i32 %444, 2
  %446 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %447 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %446, i32 0, i32 1
  store i32 %445, i32* %447, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @B43_PHY_CCK(i32) #2

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
