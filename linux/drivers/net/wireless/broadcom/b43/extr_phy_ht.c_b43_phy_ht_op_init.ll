; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_op_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_op_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i32 }

@B43_BUS_BCMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"HT-PHY is supported only on BCMA bus!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C1_OVER = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C2_OVER = common dso_local global i32 0, align 4
@B43_PHY_HT_AFE_C3_OVER = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_PHY_HT_CLASS_CTL_CCK_EN = common dso_local global i32 0, align 4
@B43_PHY_HT_BBCFG = common dso_local global i32 0, align 4
@B43_PHY_HT_BBCFG_RSTCCA = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_TRIG_RX2TX = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_TRIG_RST2RX = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_HTTAB_1A_C0_LATE_SIZE = common dso_local global i32 0, align 4
@b43_httab_0x1a_0xc0_late = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_phy_ht_op_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_ht_op_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy_ht*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %10, align 8
  store %struct.b43_phy_ht* %11, %struct.b43_phy_ht** %4, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B43_BUS_BCMA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @b43err(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %269

26:                                               ; preds = %1
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = call i32 @b43_phy_ht_tables_init(%struct.b43_wldev* %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = call i32 @b43_phy_mask(%struct.b43_wldev* %29, i32 190, i32 -3)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = call i32 @b43_phy_set(%struct.b43_wldev* %31, i32 575, i32 2047)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_phy_set(%struct.b43_wldev* %33, i32 576, i32 2047)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = call i32 @b43_phy_set(%struct.b43_wldev* %35, i32 577, i32 2047)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = call i32 @b43_phy_ht_zero_extg(%struct.b43_wldev* %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = call i32 @B43_PHY_EXTG(i32 0)
  %41 = call i32 @b43_phy_mask(%struct.b43_wldev* %39, i32 %40, i32 -4)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @B43_PHY_HT_AFE_C1_OVER, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %42, i32 %43, i32 0)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %46 = load i32, i32* @B43_PHY_HT_AFE_C2_OVER, align 4
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %45, i32 %46, i32 0)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* @B43_PHY_HT_AFE_C3_OVER, align 4
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %48, i32 %49, i32 0)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = call i32 @B43_PHY_EXTG(i32 259)
  %53 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 32)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = call i32 @B43_PHY_EXTG(i32 257)
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %54, i32 %55, i32 32)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = call i32 @b43_phy_write(%struct.b43_wldev* %57, i32 525, i32 184)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = call i32 @B43_PHY_EXTG(i32 335)
  %61 = call i32 @b43_phy_write(%struct.b43_wldev* %59, i32 %60, i32 200)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %62, i32 112, i32 80)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 511, i32 48)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @b43_current_band(i32 %68)
  %70 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %26
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @B43_PHY_HT_CLASS_CTL_CCK_EN, align 4
  %75 = call i32 @b43_phy_ht_classifier(%struct.b43_wldev* %73, i32 %74, i32 0)
  br label %81

76:                                               ; preds = %26
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = load i32, i32* @B43_PHY_HT_CLASS_CTL_CCK_EN, align 4
  %79 = load i32, i32* @B43_PHY_HT_CLASS_CTL_CCK_EN, align 4
  %80 = call i32 @b43_phy_ht_classifier(%struct.b43_wldev* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = call i32 @b43_phy_set(%struct.b43_wldev* %82, i32 177, i32 145)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = call i32 @b43_phy_write(%struct.b43_wldev* %84, i32 815, i32 3)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = call i32 @b43_phy_write(%struct.b43_wldev* %86, i32 119, i32 16)
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = call i32 @b43_phy_write(%struct.b43_wldev* %88, i32 180, i32 600)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = call i32 @b43_phy_mask(%struct.b43_wldev* %90, i32 382, i32 -16385)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %93 = call i32 @b43_phy_write(%struct.b43_wldev* %92, i32 185, i32 114)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = call i32 @B43_HTTAB16(i32 7, i32 334)
  %96 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %94, i32 %95, i32 2, i32 271, i32 271)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %98 = call i32 @B43_HTTAB16(i32 7, i32 350)
  %99 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %97, i32 %98, i32 2, i32 271, i32 271)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = call i32 @B43_HTTAB16(i32 7, i32 366)
  %102 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %100, i32 %101, i32 2, i32 271, i32 271)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %104 = call i32 @b43_phy_ht_afe_unk1(%struct.b43_wldev* %103)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = call i32 @B43_HTTAB16(i32 7, i32 304)
  %107 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %105, i32 %106, i32 9, i32 1911, i32 273, i32 273, i32 1911, i32 273, i32 273, i32 1911, i32 273, i32 273)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = call i32 @B43_HTTAB16(i32 7, i32 288)
  %110 = call i32 @b43_httab_write(%struct.b43_wldev* %108, i32 %109, i32 1911)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = call i32 @B43_HTTAB16(i32 7, i32 292)
  %113 = call i32 @b43_httab_write(%struct.b43_wldev* %111, i32 %112, i32 1911)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %115 = call i32 @B43_HTTAB16(i32 8, i32 0)
  %116 = call i32 @b43_httab_write(%struct.b43_wldev* %114, i32 %115, i32 2)
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %118 = call i32 @B43_HTTAB16(i32 8, i32 16)
  %119 = call i32 @b43_httab_write(%struct.b43_wldev* %117, i32 %118, i32 2)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %121 = call i32 @B43_HTTAB16(i32 8, i32 32)
  %122 = call i32 @b43_httab_write(%struct.b43_wldev* %120, i32 %121, i32 2)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = call i32 @B43_HTTAB16(i32 8, i32 8)
  %125 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %123, i32 %124, i32 4, i32 142, i32 150, i32 150, i32 150)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %127 = call i32 @B43_HTTAB16(i32 8, i32 24)
  %128 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %126, i32 %127, i32 4, i32 143, i32 159, i32 159, i32 159)
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %130 = call i32 @B43_HTTAB16(i32 8, i32 40)
  %131 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %129, i32 %130, i32 4, i32 143, i32 159, i32 159, i32 159)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %133 = call i32 @B43_HTTAB16(i32 8, i32 12)
  %134 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %132, i32 %133, i32 4, i32 2, i32 2, i32 2, i32 2)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = call i32 @B43_HTTAB16(i32 8, i32 28)
  %137 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %135, i32 %136, i32 4, i32 2, i32 2, i32 2, i32 2)
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %139 = call i32 @B43_HTTAB16(i32 8, i32 44)
  %140 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %138, i32 %139, i32 4, i32 2, i32 2, i32 2, i32 2)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %142 = call i32 @b43_phy_maskset(%struct.b43_wldev* %141, i32 640, i32 65280, i32 62)
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %144 = call i32 @b43_phy_maskset(%struct.b43_wldev* %143, i32 643, i32 65280, i32 62)
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %146 = call i32 @B43_PHY_OFDM(i32 321)
  %147 = call i32 @b43_phy_maskset(%struct.b43_wldev* %145, i32 %146, i32 65280, i32 70)
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %149 = call i32 @b43_phy_maskset(%struct.b43_wldev* %148, i32 643, i32 65280, i32 64)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = call i32 @B43_HTTAB16(i32 0, i32 8)
  %152 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %150, i32 %151, i32 4, i32 9, i32 14, i32 19, i32 24)
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %154 = call i32 @B43_HTTAB16(i32 1, i32 8)
  %155 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %153, i32 %154, i32 4, i32 9, i32 14, i32 19, i32 24)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %157 = call i32 @B43_HTTAB16(i32 40, i32 8)
  %158 = call i32 (%struct.b43_wldev*, i32, i32, i32, i32, ...) @b43_httab_write_few(%struct.b43_wldev* %156, i32 %157, i32 4, i32 9, i32 14, i32 19, i32 24)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %160 = call i32 @B43_PHY_OFDM(i32 36)
  %161 = call i32 @b43_phy_maskset(%struct.b43_wldev* %159, i32 %160, i32 63, i32 13)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %163 = call i32 @B43_PHY_OFDM(i32 100)
  %164 = call i32 @b43_phy_maskset(%struct.b43_wldev* %162, i32 %163, i32 63, i32 13)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %166 = call i32 @B43_PHY_OFDM(i32 164)
  %167 = call i32 @b43_phy_maskset(%struct.b43_wldev* %165, i32 %166, i32 63, i32 13)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %169 = call i32 @B43_PHY_EXTG(i32 96)
  %170 = call i32 @b43_phy_set(%struct.b43_wldev* %168, i32 %169, i32 1)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %172 = call i32 @B43_PHY_EXTG(i32 100)
  %173 = call i32 @b43_phy_set(%struct.b43_wldev* %171, i32 %172, i32 1)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %175 = call i32 @B43_PHY_EXTG(i32 128)
  %176 = call i32 @b43_phy_set(%struct.b43_wldev* %174, i32 %175, i32 1)
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %178 = call i32 @B43_PHY_EXTG(i32 132)
  %179 = call i32 @b43_phy_set(%struct.b43_wldev* %177, i32 %178, i32 1)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %181 = call i32 @B43_HTTAB16(i32 7, i32 324)
  %182 = call i32 @b43_httab_read(%struct.b43_wldev* %180, i32 %181)
  store i32 %182, i32* %5, align 4
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %184 = call i32 @B43_HTTAB16(i32 7, i32 330)
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @b43_httab_write(%struct.b43_wldev* %183, i32 %184, i32 %185)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %188 = call i32 @B43_HTTAB16(i32 7, i32 340)
  %189 = call i32 @b43_httab_read(%struct.b43_wldev* %187, i32 %188)
  store i32 %189, i32* %5, align 4
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %191 = call i32 @B43_HTTAB16(i32 7, i32 346)
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @b43_httab_write(%struct.b43_wldev* %190, i32 %191, i32 %192)
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %195 = call i32 @B43_HTTAB16(i32 7, i32 356)
  %196 = call i32 @b43_httab_read(%struct.b43_wldev* %194, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %198 = call i32 @B43_HTTAB16(i32 7, i32 362)
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @b43_httab_write(%struct.b43_wldev* %197, i32 %198, i32 %199)
  %201 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %202 = call i32 @b43_phy_force_clock(%struct.b43_wldev* %201, i32 1)
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %204 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %205 = call i32 @b43_phy_read(%struct.b43_wldev* %203, i32 %204)
  store i32 %205, i32* %5, align 4
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %207 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @B43_PHY_HT_BBCFG_RSTCCA, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @b43_phy_write(%struct.b43_wldev* %206, i32 %207, i32 %210)
  %212 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %213 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @B43_PHY_HT_BBCFG_RSTCCA, align 4
  %216 = xor i32 %215, -1
  %217 = and i32 %214, %216
  %218 = call i32 @b43_phy_write(%struct.b43_wldev* %212, i32 %213, i32 %217)
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %220 = call i32 @b43_phy_force_clock(%struct.b43_wldev* %219, i32 0)
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %222 = call i32 @b43_mac_phy_clock_set(%struct.b43_wldev* %221, i32 1)
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %224 = call i32 @b43_phy_ht_pa_override(%struct.b43_wldev* %223, i32 0)
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %226 = load i32, i32* @B43_PHY_HT_RF_SEQ_TRIG_RX2TX, align 4
  %227 = call i32 @b43_phy_ht_force_rf_sequence(%struct.b43_wldev* %225, i32 %226)
  %228 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %229 = load i32, i32* @B43_PHY_HT_RF_SEQ_TRIG_RST2RX, align 4
  %230 = call i32 @b43_phy_ht_force_rf_sequence(%struct.b43_wldev* %228, i32 %229)
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %232 = call i32 @b43_phy_ht_pa_override(%struct.b43_wldev* %231, i32 1)
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %234 = call i32 @b43_phy_ht_classifier(%struct.b43_wldev* %233, i32 0, i32 0)
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %236 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %237 = call i32 @b43_phy_ht_read_clip_detection(%struct.b43_wldev* %235, i32* %236)
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %239 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @b43_current_band(i32 %240)
  %242 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %81
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %246 = call i32 @b43_phy_ht_bphy_init(%struct.b43_wldev* %245)
  br label %247

247:                                              ; preds = %244, %81
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %249 = call i32 @B43_HTTAB32(i32 26, i32 192)
  %250 = load i32, i32* @B43_HTTAB_1A_C0_LATE_SIZE, align 4
  %251 = load i32, i32* @b43_httab_0x1a_0xc0_late, align 4
  %252 = call i32 @b43_httab_write_bulk(%struct.b43_wldev* %248, i32 %249, i32 %250, i32 %251)
  %253 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %4, align 8
  %254 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %7, align 4
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %257 = call i32 @b43_phy_ht_tx_power_fix(%struct.b43_wldev* %256)
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %259 = call i32 @b43_phy_ht_tx_power_ctl(%struct.b43_wldev* %258, i32 0)
  %260 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %261 = call i32 @b43_phy_ht_tx_power_ctl_idle_tssi(%struct.b43_wldev* %260)
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %263 = call i32 @b43_phy_ht_tx_power_ctl_setup(%struct.b43_wldev* %262)
  %264 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %265 = call i32 @b43_phy_ht_tssi_setup(%struct.b43_wldev* %264)
  %266 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @b43_phy_ht_tx_power_ctl(%struct.b43_wldev* %266, i32 %267)
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %247, %19
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_ht_tables_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_ht_zero_extg(%struct.b43_wldev*) #1

declare dso_local i32 @B43_PHY_EXTG(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_ht_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_httab_write_few(%struct.b43_wldev*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @B43_HTTAB16(i32, i32) #1

declare dso_local i32 @b43_phy_ht_afe_unk1(%struct.b43_wldev*) #1

declare dso_local i32 @b43_httab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_httab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_force_clock(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mac_phy_clock_set(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_ht_pa_override(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_ht_force_rf_sequence(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_ht_read_clip_detection(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @b43_phy_ht_bphy_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_httab_write_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_HTTAB32(i32, i32) #1

declare dso_local i32 @b43_phy_ht_tx_power_fix(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_ht_tx_power_ctl(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_ht_tx_power_ctl_idle_tssi(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_ht_tx_power_ctl_setup(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_ht_tssi_setup(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
