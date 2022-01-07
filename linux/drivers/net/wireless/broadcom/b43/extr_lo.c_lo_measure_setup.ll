; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_measure_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_measure_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_2__* }
%struct.b43_phy = type { i64, i32, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { i32 }
%struct.TYPE_2__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32 }
%struct.lo_g_saved_values = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@B43_PHY_LO_MASK = common dso_local global i32 0, align 4
@B43_PHY_DACCTL = common dso_local global i32 0, align 4
@B43_PHY_HPWR_TSSICTL = common dso_local global i32 0, align 4
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@B43_PHY_ANALOGOVER = common dso_local global i32 0, align 4
@B43_PHY_ANALOGOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_RFOVER = common dso_local global i32 0, align 4
@B43_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@B43_PHY_CLASSCTL = common dso_local global i32 0, align 4
@B43_PHY_CRS0 = common dso_local global i32 0, align 4
@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@B43_PHY_PGACTL = common dso_local global i32 0, align 4
@B43_PHY_SYNCCTL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@B43_LO_TXCTL_EXPIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.lo_g_saved_values*)* @lo_measure_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_measure_setup(%struct.b43_wldev* %0, %struct.lo_g_saved_values* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.lo_g_saved_values*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca %struct.b43_phy*, align 8
  %7 = alloca %struct.b43_phy_g*, align 8
  %8 = alloca %struct.b43_txpower_lo_control*, align 8
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.lo_g_saved_values* %1, %struct.lo_g_saved_values** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %5, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  store %struct.b43_phy* %16, %struct.b43_phy** %6, align 8
  %17 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 4
  %19 = load %struct.b43_phy_g*, %struct.b43_phy_g** %18, align 8
  store %struct.b43_phy_g* %19, %struct.b43_phy_g** %7, align 8
  %20 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %21 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %20, i32 0, i32 0
  %22 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %21, align 8
  store %struct.b43_txpower_lo_control* %22, %struct.b43_txpower_lo_control** %8, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = call i64 @b43_has_hardware_pctl(%struct.b43_wldev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %2
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %29 = call i8* @b43_phy_read(%struct.b43_wldev* %27, i32 %28)
  %30 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %31 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %30, i32 0, i32 22
  store i8* %29, i8** %31, align 8
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = call i32 @B43_PHY_EXTG(i32 1)
  %34 = call i8* @b43_phy_read(%struct.b43_wldev* %32, i32 %33)
  %35 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %36 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %35, i32 0, i32 21
  store i8* %34, i8** %36, align 8
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* @B43_PHY_DACCTL, align 4
  %39 = call i8* @b43_phy_read(%struct.b43_wldev* %37, i32 %38)
  %40 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %41 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %40, i32 0, i32 20
  store i8* %39, i8** %41, align 8
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = call i32 @B43_PHY_CCK(i32 20)
  %44 = call i8* @b43_phy_read(%struct.b43_wldev* %42, i32 %43)
  %45 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %46 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %45, i32 0, i32 19
  store i8* %44, i8** %46, align 8
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load i32, i32* @B43_PHY_HPWR_TSSICTL, align 4
  %49 = call i8* @b43_phy_read(%struct.b43_wldev* %47, i32 %48)
  %50 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %51 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %50, i32 0, i32 18
  store i8* %49, i8** %51, align 8
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_PHY_HPWR_TSSICTL, align 4
  %54 = call i32 @b43_phy_set(%struct.b43_wldev* %52, i32 %53, i32 256)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = call i32 @B43_PHY_EXTG(i32 1)
  %57 = call i32 @b43_phy_set(%struct.b43_wldev* %55, i32 %56, i32 64)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = load i32, i32* @B43_PHY_DACCTL, align 4
  %60 = call i32 @b43_phy_set(%struct.b43_wldev* %58, i32 %59, i32 64)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = call i32 @B43_PHY_CCK(i32 20)
  %63 = call i32 @b43_phy_set(%struct.b43_wldev* %61, i32 %62, i32 512)
  br label %64

64:                                               ; preds = %26, %2
  %65 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %66 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @B43_PHYTYPE_B, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %72 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 8272
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %77 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 6
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = call i32 @B43_PHY_CCK(i32 22)
  %83 = call i32 @b43_phy_write(%struct.b43_wldev* %81, i32 %82, i32 1040)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = call i32 @B43_PHY_CCK(i32 23)
  %86 = call i32 @b43_phy_write(%struct.b43_wldev* %84, i32 %85, i32 2080)
  br label %87

87:                                               ; preds = %80, %75, %70, %64
  %88 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %89 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %90, 2
  br i1 %91, label %92, label %174

92:                                               ; preds = %87
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %94 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %95 = call i8* @b43_phy_read(%struct.b43_wldev* %93, i32 %94)
  %96 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %97 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %96, i32 0, i32 17
  store i8* %95, i8** %97, align 8
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %100 = call i8* @b43_phy_read(%struct.b43_wldev* %98, i32 %99)
  %101 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %102 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %101, i32 0, i32 16
  store i8* %100, i8** %102, align 8
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %104 = load i32, i32* @B43_PHY_RFOVER, align 4
  %105 = call i8* @b43_phy_read(%struct.b43_wldev* %103, i32 %104)
  %106 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %107 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %106, i32 0, i32 15
  store i8* %105, i8** %107, align 8
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = load i32, i32* @B43_PHY_RFOVERVAL, align 4
  %110 = call i8* @b43_phy_read(%struct.b43_wldev* %108, i32 %109)
  %111 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %112 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %111, i32 0, i32 14
  store i8* %110, i8** %112, align 8
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %114 = load i32, i32* @B43_PHY_CLASSCTL, align 4
  %115 = call i8* @b43_phy_read(%struct.b43_wldev* %113, i32 %114)
  %116 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %117 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %116, i32 0, i32 13
  store i8* %115, i8** %117, align 8
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = call i32 @B43_PHY_CCK(i32 62)
  %120 = call i8* @b43_phy_read(%struct.b43_wldev* %118, i32 %119)
  %121 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %122 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %121, i32 0, i32 12
  store i8* %120, i8** %122, align 8
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = load i32, i32* @B43_PHY_CRS0, align 4
  %125 = call i8* @b43_phy_read(%struct.b43_wldev* %123, i32 %124)
  %126 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %127 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %126, i32 0, i32 11
  store i8* %125, i8** %127, align 8
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = load i32, i32* @B43_PHY_CLASSCTL, align 4
  %130 = call i32 @b43_phy_mask(%struct.b43_wldev* %128, i32 %129, i32 65532)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* @B43_PHY_CRS0, align 4
  %133 = call i32 @b43_phy_mask(%struct.b43_wldev* %131, i32 %132, i32 32767)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %135 = load i32, i32* @B43_PHY_ANALOGOVER, align 4
  %136 = call i32 @b43_phy_set(%struct.b43_wldev* %134, i32 %135, i32 3)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %138 = load i32, i32* @B43_PHY_ANALOGOVERVAL, align 4
  %139 = call i32 @b43_phy_mask(%struct.b43_wldev* %137, i32 %138, i32 65532)
  %140 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %141 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @B43_PHYTYPE_G, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %92
  %146 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %147 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp sge i32 %148, 7
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %152 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %159 = load i32, i32* @B43_PHY_RFOVER, align 4
  %160 = call i32 @b43_phy_write(%struct.b43_wldev* %158, i32 %159, i32 2355)
  br label %165

161:                                              ; preds = %150, %145
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %163 = load i32, i32* @B43_PHY_RFOVER, align 4
  %164 = call i32 @b43_phy_write(%struct.b43_wldev* %162, i32 %163, i32 307)
  br label %165

165:                                              ; preds = %161, %157
  br label %170

166:                                              ; preds = %92
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %168 = load i32, i32* @B43_PHY_RFOVER, align 4
  %169 = call i32 @b43_phy_write(%struct.b43_wldev* %167, i32 %168, i32 0)
  br label %170

170:                                              ; preds = %166, %165
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %172 = call i32 @B43_PHY_CCK(i32 62)
  %173 = call i32 @b43_phy_write(%struct.b43_wldev* %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %170, %87
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %176 = call i32 @b43_read16(%struct.b43_wldev* %175, i32 1012)
  %177 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %178 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %180 = call i32 @b43_read16(%struct.b43_wldev* %179, i32 994)
  %181 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %182 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %184 = call i8* @b43_radio_read16(%struct.b43_wldev* %183, i32 67)
  %185 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %186 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %185, i32 0, i32 10
  store i8* %184, i8** %186, align 8
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %188 = call i8* @b43_radio_read16(%struct.b43_wldev* %187, i32 122)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %191 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %193 = load i32, i32* @B43_PHY_PGACTL, align 4
  %194 = call i8* @b43_phy_read(%struct.b43_wldev* %192, i32 %193)
  %195 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %196 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %195, i32 0, i32 9
  store i8* %194, i8** %196, align 8
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %198 = call i32 @B43_PHY_CCK(i32 42)
  %199 = call i8* @b43_phy_read(%struct.b43_wldev* %197, i32 %198)
  %200 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %201 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %200, i32 0, i32 8
  store i8* %199, i8** %201, align 8
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %203 = load i32, i32* @B43_PHY_SYNCCTL, align 4
  %204 = call i8* @b43_phy_read(%struct.b43_wldev* %202, i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %207 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %209 = load i32, i32* @B43_PHY_DACCTL, align 4
  %210 = call i8* @b43_phy_read(%struct.b43_wldev* %208, i32 %209)
  %211 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %212 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %211, i32 0, i32 7
  store i8* %210, i8** %212, align 8
  %213 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %214 = call i32 @has_tx_magnification(%struct.b43_phy* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %174
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %218 = call i8* @b43_radio_read16(%struct.b43_wldev* %217, i32 82)
  %219 = ptrtoint i8* %218 to i32
  %220 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %221 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 8
  %222 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %223 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, 240
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %216, %174
  %227 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %228 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @B43_PHYTYPE_B, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %249

232:                                              ; preds = %226
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %234 = call i32 @B43_PHY_CCK(i32 48)
  %235 = call i8* @b43_phy_read(%struct.b43_wldev* %233, i32 %234)
  %236 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %237 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %236, i32 0, i32 6
  store i8* %235, i8** %237, align 8
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %239 = call i32 @B43_PHY_CCK(i32 6)
  %240 = call i8* @b43_phy_read(%struct.b43_wldev* %238, i32 %239)
  %241 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %242 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %241, i32 0, i32 5
  store i8* %240, i8** %242, align 8
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %244 = call i32 @B43_PHY_CCK(i32 48)
  %245 = call i32 @b43_phy_write(%struct.b43_wldev* %243, i32 %244, i32 255)
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %247 = call i32 @B43_PHY_CCK(i32 6)
  %248 = call i32 @b43_phy_write(%struct.b43_wldev* %246, i32 %247, i32 16191)
  br label %255

249:                                              ; preds = %226
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %251 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %252 = call i32 @b43_read16(%struct.b43_wldev* %251, i32 994)
  %253 = or i32 %252, 32768
  %254 = call i32 @b43_write16(%struct.b43_wldev* %250, i32 994, i32 %253)
  br label %255

255:                                              ; preds = %249, %232
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %258 = call i32 @b43_read16(%struct.b43_wldev* %257, i32 1012)
  %259 = and i32 %258, 61440
  %260 = call i32 @b43_write16(%struct.b43_wldev* %256, i32 1012, i32 %259)
  %261 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %262 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @B43_PHYTYPE_G, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %255
  %267 = load i32, i32* @B43_PHY_LO_MASK, align 4
  br label %270

268:                                              ; preds = %255
  %269 = call i32 @B43_PHY_CCK(i32 46)
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, i32* %9, align 4
  %272 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @b43_phy_write(%struct.b43_wldev* %272, i32 %273, i32 127)
  %275 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %276 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %9, align 4
  %278 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %279 = load i32, i32* @B43_PHY_SYNCCTL, align 4
  %280 = load i32, i32* %9, align 4
  %281 = and i32 %280, 65407
  %282 = call i32 @b43_phy_write(%struct.b43_wldev* %278, i32 %279, i32 %281)
  %283 = load %struct.lo_g_saved_values*, %struct.lo_g_saved_values** %4, align 8
  %284 = getelementptr inbounds %struct.lo_g_saved_values, %struct.lo_g_saved_values* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %9, align 4
  %286 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %287 = load i32, i32* %9, align 4
  %288 = and i32 %287, 65520
  %289 = call i32 @b43_radio_write16(%struct.b43_wldev* %286, i32 122, i32 %288)
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %291 = call i32 @B43_PHY_CCK(i32 42)
  %292 = call i32 @b43_phy_write(%struct.b43_wldev* %290, i32 %291, i32 2211)
  %293 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %294 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @B43_PHYTYPE_G, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %314, label %298

298:                                              ; preds = %270
  %299 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %300 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @B43_PHYTYPE_B, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %318

304:                                              ; preds = %298
  %305 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %306 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %307, 8272
  br i1 %308, label %309, label %318

309:                                              ; preds = %304
  %310 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %311 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = icmp sge i32 %312, 6
  br i1 %313, label %314, label %318

314:                                              ; preds = %309, %270
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %316 = call i32 @B43_PHY_CCK(i32 43)
  %317 = call i32 @b43_phy_write(%struct.b43_wldev* %315, i32 %316, i32 4099)
  br label %322

318:                                              ; preds = %309, %304, %298
  %319 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %320 = call i32 @B43_PHY_CCK(i32 43)
  %321 = call i32 @b43_phy_write(%struct.b43_wldev* %319, i32 %320, i32 2050)
  br label %322

322:                                              ; preds = %318, %314
  %323 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %324 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = icmp sge i32 %325, 2
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %329 = call i32 @b43_dummy_transmission(%struct.b43_wldev* %328, i32 0, i32 1)
  br label %330

330:                                              ; preds = %327, %322
  %331 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %332 = call i32 @b43_gphy_channel_switch(%struct.b43_wldev* %331, i32 6, i32 0)
  %333 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %334 = call i8* @b43_radio_read16(%struct.b43_wldev* %333, i32 81)
  %335 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %336 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @B43_PHYTYPE_G, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %330
  %341 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %342 = call i32 @B43_PHY_CCK(i32 47)
  %343 = call i32 @b43_phy_write(%struct.b43_wldev* %341, i32 %342, i32 0)
  br label %344

344:                                              ; preds = %340, %330
  %345 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %8, align 8
  %346 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i64, i64* @jiffies, align 8
  %349 = load i64, i64* @B43_LO_TXCTL_EXPIRE, align 8
  %350 = sub nsw i64 %348, %349
  %351 = call i64 @time_before(i32 %347, i64 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %344
  %354 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %355 = call i32 @lo_measure_txctl_values(%struct.b43_wldev* %354)
  br label %356

356:                                              ; preds = %353, %344
  %357 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %358 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @B43_PHYTYPE_G, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %356
  %363 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %364 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = icmp sge i32 %365, 3
  br i1 %366, label %367, label %371

367:                                              ; preds = %362
  %368 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %369 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %370 = call i32 @b43_phy_write(%struct.b43_wldev* %368, i32 %369, i32 49272)
  br label %386

371:                                              ; preds = %362, %356
  %372 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %373 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @B43_PHYTYPE_B, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %371
  %378 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %379 = call i32 @B43_PHY_CCK(i32 46)
  %380 = call i32 @b43_phy_write(%struct.b43_wldev* %378, i32 %379, i32 32888)
  br label %385

381:                                              ; preds = %371
  %382 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %383 = load i32, i32* @B43_PHY_LO_MASK, align 4
  %384 = call i32 @b43_phy_write(%struct.b43_wldev* %382, i32 %383, i32 32888)
  br label %385

385:                                              ; preds = %381, %377
  br label %386

386:                                              ; preds = %385, %367
  ret void
}

declare dso_local i64 @b43_has_hardware_pctl(%struct.b43_wldev*) #1

declare dso_local i8* @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_PHY_EXTG(i32) #1

declare dso_local i32 @B43_PHY_CCK(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i8* @b43_radio_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @has_tx_magnification(%struct.b43_phy*) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_dummy_transmission(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_gphy_channel_switch(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @lo_measure_txctl_values(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
