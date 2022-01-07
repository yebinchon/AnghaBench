; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rev3_rssi_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rev3_rssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.TYPE_10__*, %struct.b43_phy_n* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.b43_phy_n = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32* }

@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_RSSIO1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_RSSIO2 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER3 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER4 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER5 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER6 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_MISC_REG3 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_MISC_REG4 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_MISC_REG5 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_MISC_REG6 = common dso_local global i32 0, align 4
@__const.b43_nphy_rev3_rssi_cal.clip_off = private unnamed_addr constant [2 x i32] [i32 65535, i32 65535], align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_OFF = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_TRSW = common dso_local global i32 0, align 4
@N_RF_CTL_OVER_CMD_RXRF_PU = common dso_local global i32 0, align 4
@N_RF_CTL_OVER_CMD_RX_PU = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2056_RX1 = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@N_RAIL_I = common dso_local global i32 0, align 4
@N_RSSI_NB = common dso_local global i32 0, align 4
@N_RAIL_Q = common dso_local global i32 0, align 4
@R2057_NB_MASTER_CORE1 = common dso_local global i32 0, align 4
@R2057_NB_MASTER_CORE0 = common dso_local global i32 0, align 4
@R2057_VCM_MASK = common dso_local global i32 0, align 4
@B2056_RX_RSSI_MISC = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_START = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_RXTX = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_RSSIMC_0I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_rev3_rssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rev3_rssi_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [22 x i32], align 16
  %7 = alloca [13 x i32], align 16
  %8 = alloca [22 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca [8 x [4 x i32]], align 16
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 1
  store %struct.b43_phy* %32, %struct.b43_phy** %3, align 8
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %34, i32 0, i32 2
  %36 = load %struct.b43_phy_n*, %struct.b43_phy_n** %35, align 8
  store %struct.b43_phy_n* %36, %struct.b43_phy_n** %4, align 8
  %37 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %45, i64 1
  %48 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds i32, i32* %47, i64 1
  %50 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds i32, i32* %49, i64 1
  %52 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %51, i64 1
  %54 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds i32, i32* %53, i64 1
  %56 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds i32, i32* %55, i64 1
  %58 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  store i32 %58, i32* %57, align 4
  %59 = getelementptr inbounds i32, i32* %57, i64 1
  %60 = load i32, i32* @B43_NPHY_RFCTL_RSSIO1, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds i32, i32* %59, i64 1
  %62 = load i32, i32* @B43_NPHY_RFCTL_RSSIO2, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  %64 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds i32, i32* %63, i64 1
  %66 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds i32, i32* %65, i64 1
  %68 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  store i32 %68, i32* %67, align 4
  %69 = getelementptr inbounds i32, i32* %67, i64 1
  %70 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  store i32 %70, i32* %69, align 4
  %71 = getelementptr inbounds i32, i32* %69, i64 1
  %72 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds i32, i32* %71, i64 1
  %74 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  store i32 %74, i32* %73, align 4
  %75 = getelementptr inbounds i32, i32* %73, i64 1
  %76 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER3, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %75, i64 1
  %78 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER4, align 4
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds i32, i32* %77, i64 1
  %80 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER5, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds i32, i32* %79, i64 1
  %82 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER6, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 767, i32* %83, align 4
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds i32, i32* %84, i64 1
  %87 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  store i32 %87, i32* %86, align 4
  %88 = getelementptr inbounds i32, i32* %86, i64 1
  %89 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %88, i64 1
  %91 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %90, i64 1
  %93 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds i32, i32* %92, i64 1
  %95 = load i32, i32* @B43_NPHY_REV7_RF_CTL_MISC_REG3, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds i32, i32* %94, i64 1
  %97 = load i32, i32* @B43_NPHY_REV7_RF_CTL_MISC_REG4, align 4
  store i32 %97, i32* %96, align 4
  %98 = getelementptr inbounds i32, i32* %96, i64 1
  %99 = load i32, i32* @B43_NPHY_REV7_RF_CTL_MISC_REG5, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds i32, i32* %98, i64 1
  %101 = load i32, i32* @B43_NPHY_REV7_RF_CTL_MISC_REG6, align 4
  store i32 %101, i32* %100, align 4
  %102 = getelementptr inbounds i32, i32* %100, i64 1
  %103 = load i32, i32* @B43_NPHY_RFCTL_RSSIO1, align 4
  store i32 %103, i32* %102, align 4
  %104 = getelementptr inbounds i32, i32* %102, i64 1
  %105 = load i32, i32* @B43_NPHY_RFCTL_RSSIO2, align 4
  store i32 %105, i32* %104, align 4
  %106 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_rev3_rssi_cal.clip_off to i8*), i64 8, i1 false)
  store i32 0, i32* %14, align 4
  %107 = bitcast [8 x [4 x i32]]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %107, i8 0, i64 128, i1 false)
  %108 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %108, i8 0, i64 16, i1 false)
  %109 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %109, i8 0, i64 16, i1 false)
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %113, 7
  br i1 %114, label %115, label %119

115:                                              ; preds = %1
  %116 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  store i32* %116, i32** %9, align 8
  %117 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  %118 = call i32 @ARRAY_SIZE(i32* %117)
  store i32 %118, i32* %10, align 4
  br label %123

119:                                              ; preds = %1
  %120 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 0
  store i32* %120, i32** %9, align 8
  %121 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 0
  %122 = call i32 @ARRAY_SIZE(i32* %121)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %10, align 4
  %125 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 0
  %126 = call i32 @ARRAY_SIZE(i32* %125)
  %127 = icmp sgt i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %130, i32 0, i32 0)
  store i32 %131, i32* %11, align 4
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %132, i32 7, i32 4)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %136 = call i32 @b43_nphy_read_clip_detection(%struct.b43_wldev* %134, i32* %135)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %139 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %137, i32* %138)
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %142 = call i32 @b43_phy_read(%struct.b43_wldev* %140, i32 %141)
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %142, i32* %143, align 4
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %146 = call i32 @b43_phy_read(%struct.b43_wldev* %144, i32 %145)
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  store i32 0, i32* %24, align 4
  br label %148

148:                                              ; preds = %163, %123
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %24, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @b43_phy_read(%struct.b43_wldev* %153, i32 %158)
  %160 = load i32, i32* %24, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 %161
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %24, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %24, align 4
  br label %148

166:                                              ; preds = %148
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %168 = load i32, i32* @N_INTC_OVERRIDE_OFF, align 4
  %169 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %167, i32 %168, i32 0, i32 7)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %172 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %170, i32 %171, i32 1, i32 7)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %174 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sge i32 %176, 7
  br i1 %177, label %178, label %206

178:                                              ; preds = %166
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = load i32, i32* @N_RF_CTL_OVER_CMD_RXRF_PU, align 4
  %181 = call i32 @b43_nphy_rf_ctl_override_one_to_many(%struct.b43_wldev* %179, i32 %180, i32 0, i32 0, i32 0)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = load i32, i32* @N_RF_CTL_OVER_CMD_RX_PU, align 4
  %184 = call i32 @b43_nphy_rf_ctl_override_one_to_many(%struct.b43_wldev* %182, i32 %183, i32 1, i32 0, i32 0)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %185, i32 128, i32 1, i32 0, i32 0, i32 0)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %187, i32 64, i32 1, i32 0, i32 0, i32 0)
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @b43_current_band(i32 %191)
  %193 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %178
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %196, i32 32, i32 0, i32 0, i32 0, i32 0)
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %198, i32 16, i32 1, i32 0, i32 0, i32 0)
  br label %205

200:                                              ; preds = %178
  %201 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %202 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %201, i32 16, i32 0, i32 0, i32 0, i32 0)
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %204 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %203, i32 32, i32 1, i32 0, i32 0, i32 0)
  br label %205

205:                                              ; preds = %200, %195
  br label %232

206:                                              ; preds = %166
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %207, i32 1, i32 0, i32 0, i32 0)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %209, i32 2, i32 1, i32 0, i32 0)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %211, i32 128, i32 1, i32 0, i32 0)
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %213, i32 64, i32 1, i32 0, i32 0)
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %216 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @b43_current_band(i32 %217)
  %219 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %206
  %222 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %223 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %222, i32 32, i32 0, i32 0, i32 0)
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %225 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %224, i32 16, i32 1, i32 0, i32 0)
  br label %231

226:                                              ; preds = %206
  %227 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %228 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %227, i32 16, i32 0, i32 0, i32 0)
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %230 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %229, i32 32, i32 1, i32 0, i32 0)
  br label %231

231:                                              ; preds = %226, %221
  br label %232

232:                                              ; preds = %231, %205
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %234 = call i32 @b43_nphy_get_rx_core_state(%struct.b43_wldev* %233)
  store i32 %234, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %235

235:                                              ; preds = %505, %232
  %236 = load i32, i32* %23, align 4
  %237 = icmp slt i32 %236, 2
  br i1 %237, label %238, label %508

238:                                              ; preds = %235
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* %23, align 4
  %241 = shl i32 1, %240
  %242 = and i32 %239, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %238
  br label %505

245:                                              ; preds = %238
  %246 = load i32, i32* %23, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32, i32* @B2056_RX1, align 4
  br label %252

250:                                              ; preds = %245
  %251 = load i32, i32* @B2056_RX0, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  store i32 %253, i32* %21, align 4
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = load i32, i32* %23, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* @N_RAIL_I, align 4
  %258 = load i32, i32* @N_RSSI_NB, align 4
  %259 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %254, i32 0, i32 0, i32 %256, i32 %257, i32 %258)
  %260 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %261, 1
  %263 = load i32, i32* @N_RAIL_Q, align 4
  %264 = load i32, i32* @N_RSSI_NB, align 4
  %265 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %260, i32 0, i32 0, i32 %262, i32 %263, i32 %264)
  store i32 0, i32* %26, align 4
  br label %266

266:                                              ; preds = %305, %252
  %267 = load i32, i32* %26, align 4
  %268 = icmp slt i32 %267, 8
  br i1 %268, label %269, label %308

269:                                              ; preds = %266
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %271 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp sge i32 %273, 7
  br i1 %274, label %275, label %289

275:                                              ; preds = %269
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = load i32, i32* %23, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i32, i32* @R2057_NB_MASTER_CORE1, align 4
  br label %283

281:                                              ; preds = %275
  %282 = load i32, i32* @R2057_NB_MASTER_CORE0, align 4
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %285 = load i32, i32* @R2057_VCM_MASK, align 4
  %286 = xor i32 %285, -1
  %287 = load i32, i32* %26, align 4
  %288 = call i32 @b43_radio_maskset(%struct.b43_wldev* %276, i32 %284, i32 %286, i32 %287)
  br label %297

289:                                              ; preds = %269
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %291 = load i32, i32* %21, align 4
  %292 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* %26, align 4
  %295 = shl i32 %294, 2
  %296 = call i32 @b43_radio_maskset(%struct.b43_wldev* %290, i32 %293, i32 227, i32 %295)
  br label %297

297:                                              ; preds = %289, %283
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %299 = load i32, i32* @N_RSSI_NB, align 4
  %300 = load i32, i32* %26, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %301
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %302, i64 0, i64 0
  %304 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %298, i32 %299, i32* %303, i32 8)
  br label %305

305:                                              ; preds = %297
  %306 = load i32, i32* %26, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %26, align 4
  br label %266

308:                                              ; preds = %266
  store i32 0, i32* %24, align 4
  br label %309

309:                                              ; preds = %389, %308
  %310 = load i32, i32* %24, align 4
  %311 = icmp slt i32 %310, 4
  br i1 %311, label %312, label %392

312:                                              ; preds = %309
  store i32 1048576, i32* %28, align 4
  store i32 249, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %313 = load i32, i32* %23, align 4
  %314 = mul nsw i32 2, %313
  %315 = load i32, i32* %24, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %389

318:                                              ; preds = %312
  store i32 0, i32* %26, align 4
  br label %319

319:                                              ; preds = %380, %318
  %320 = load i32, i32* %26, align 4
  %321 = icmp slt i32 %320, 8
  br i1 %321, label %322, label %383

322:                                              ; preds = %319
  %323 = load i32, i32* %26, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %324
  %326 = load i32, i32* %24, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %325, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %26, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %331
  %333 = load i32, i32* %24, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [4 x i32], [4 x i32]* %332, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %329, %336
  %338 = load i32, i32* %26, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %339
  %341 = load i32, i32* %24, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i32], [4 x i32]* %340, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %26, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %347
  %349 = load i32, i32* %24, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [4 x i32], [4 x i32]* %348, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = mul nsw i32 %345, %352
  %354 = add nsw i32 %337, %353
  store i32 %354, i32* %27, align 4
  %355 = load i32, i32* %27, align 4
  %356 = load i32, i32* %28, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %322
  %359 = load i32, i32* %27, align 4
  store i32 %359, i32* %28, align 4
  %360 = load i32, i32* %26, align 4
  store i32 %360, i32* %30, align 4
  br label %361

361:                                              ; preds = %358, %322
  %362 = load i32, i32* %26, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %363
  %365 = load i32, i32* %24, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [4 x i32], [4 x i32]* %364, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %29, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %379

371:                                              ; preds = %361
  %372 = load i32, i32* %26, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %373
  %375 = load i32, i32* %24, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [4 x i32], [4 x i32]* %374, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %29, align 4
  br label %379

379:                                              ; preds = %371, %361
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %26, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %26, align 4
  br label %319

383:                                              ; preds = %319
  %384 = load i32, i32* %30, align 4
  store i32 %384, i32* %14, align 4
  %385 = load i32, i32* %29, align 4
  %386 = load i32, i32* %24, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %387
  store i32 %385, i32* %388, align 4
  br label %389

389:                                              ; preds = %383, %317
  %390 = load i32, i32* %24, align 4
  %391 = add nsw i32 %390, 2
  store i32 %391, i32* %24, align 4
  br label %309

392:                                              ; preds = %309
  %393 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %394 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = icmp sge i32 %396, 7
  br i1 %397, label %398, label %412

398:                                              ; preds = %392
  %399 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %400 = load i32, i32* %23, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load i32, i32* @R2057_NB_MASTER_CORE1, align 4
  br label %406

404:                                              ; preds = %398
  %405 = load i32, i32* @R2057_NB_MASTER_CORE0, align 4
  br label %406

406:                                              ; preds = %404, %402
  %407 = phi i32 [ %403, %402 ], [ %405, %404 ]
  %408 = load i32, i32* @R2057_VCM_MASK, align 4
  %409 = xor i32 %408, -1
  %410 = load i32, i32* %26, align 4
  %411 = call i32 @b43_radio_maskset(%struct.b43_wldev* %399, i32 %407, i32 %409, i32 %410)
  br label %420

412:                                              ; preds = %392
  %413 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %414 = load i32, i32* %21, align 4
  %415 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %416 = or i32 %414, %415
  %417 = load i32, i32* %14, align 4
  %418 = shl i32 %417, 2
  %419 = call i32 @b43_radio_maskset(%struct.b43_wldev* %413, i32 %416, i32 227, i32 %418)
  br label %420

420:                                              ; preds = %412, %406
  store i32 0, i32* %24, align 4
  br label %421

421:                                              ; preds = %501, %420
  %422 = load i32, i32* %24, align 4
  %423 = icmp slt i32 %422, 4
  br i1 %423, label %424, label %504

424:                                              ; preds = %421
  %425 = load i32, i32* %23, align 4
  %426 = load i32, i32* %24, align 4
  %427 = sdiv i32 %426, 2
  %428 = icmp ne i32 %425, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  br label %501

430:                                              ; preds = %424
  %431 = load i32, i32* %14, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %16, i64 0, i64 %432
  %434 = load i32, i32* %24, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %433, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 0, %437
  %439 = load i32, i32* %24, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %440
  store i32 %438, i32* %441, align 4
  %442 = load i32, i32* %24, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %459

447:                                              ; preds = %430
  %448 = load i32, i32* %24, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @abs(i32 %451) #4
  %453 = add nsw i32 %452, 4
  %454 = sdiv i32 %453, 8
  %455 = sub nsw i32 0, %454
  %456 = load i32, i32* %24, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %457
  store i32 %455, i32* %458, align 4
  br label %469

459:                                              ; preds = %430
  %460 = load i32, i32* %24, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %463, 4
  %465 = sdiv i32 %464, 8
  %466 = load i32, i32* %24, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %467
  store i32 %465, i32* %468, align 4
  br label %469

469:                                              ; preds = %459, %447
  %470 = load i32, i32* %24, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = icmp eq i32 %473, 248
  br i1 %474, label %475, label %479

475:                                              ; preds = %469
  %476 = load i32, i32* %24, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %477
  store i32 -32, i32* %478, align 4
  br label %479

479:                                              ; preds = %475, %469
  %480 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %481 = load i32, i32* %24, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = load i32, i32* %24, align 4
  %486 = sdiv i32 %485, 2
  %487 = icmp eq i32 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i32 1, i32 2
  %490 = load i32, i32* %24, align 4
  %491 = srem i32 %490, 2
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %479
  %494 = load i32, i32* @N_RAIL_I, align 4
  br label %497

495:                                              ; preds = %479
  %496 = load i32, i32* @N_RAIL_Q, align 4
  br label %497

497:                                              ; preds = %495, %493
  %498 = phi i32 [ %494, %493 ], [ %496, %495 ]
  %499 = load i32, i32* @N_RSSI_NB, align 4
  %500 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %480, i32 0, i32 %484, i32 %489, i32 %498, i32 %499)
  br label %501

501:                                              ; preds = %497, %429
  %502 = load i32, i32* %24, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %24, align 4
  br label %421

504:                                              ; preds = %421
  br label %505

505:                                              ; preds = %504, %244
  %506 = load i32, i32* %23, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %23, align 4
  br label %235

508:                                              ; preds = %235
  store i32 0, i32* %23, align 4
  br label %509

509:                                              ; preds = %606, %508
  %510 = load i32, i32* %23, align 4
  %511 = icmp slt i32 %510, 2
  br i1 %511, label %512, label %609

512:                                              ; preds = %509
  %513 = load i32, i32* %22, align 4
  %514 = load i32, i32* %23, align 4
  %515 = shl i32 1, %514
  %516 = and i32 %513, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %512
  br label %606

519:                                              ; preds = %512
  store i32 0, i32* %24, align 4
  br label %520

520:                                              ; preds = %602, %519
  %521 = load i32, i32* %24, align 4
  %522 = icmp slt i32 %521, 2
  br i1 %522, label %523, label %605

523:                                              ; preds = %520
  %524 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %525 = load i32, i32* %23, align 4
  %526 = add nsw i32 %525, 1
  %527 = load i32, i32* @N_RAIL_I, align 4
  %528 = load i32, i32* %24, align 4
  %529 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %524, i32 0, i32 0, i32 %526, i32 %527, i32 %528)
  %530 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %531 = load i32, i32* %23, align 4
  %532 = add nsw i32 %531, 1
  %533 = load i32, i32* @N_RAIL_Q, align 4
  %534 = load i32, i32* %24, align 4
  %535 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %530, i32 0, i32 0, i32 %532, i32 %533, i32 %534)
  %536 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %537 = load i32, i32* %24, align 4
  %538 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %539 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %536, i32 %537, i32* %538, i32 8)
  store i32 0, i32* %25, align 4
  br label %540

540:                                              ; preds = %598, %523
  %541 = load i32, i32* %25, align 4
  %542 = icmp slt i32 %541, 4
  br i1 %542, label %543, label %601

543:                                              ; preds = %540
  %544 = load i32, i32* %25, align 4
  %545 = sdiv i32 %544, 2
  %546 = load i32, i32* %23, align 4
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %548, label %597

548:                                              ; preds = %543
  %549 = load i32, i32* %25, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = sub nsw i32 232, %552
  %554 = load i32, i32* %25, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %555
  store i32 %553, i32* %556, align 4
  %557 = load i32, i32* %25, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %574

562:                                              ; preds = %548
  %563 = load i32, i32* %25, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = add nsw i32 %566, 4
  %568 = call i32 @abs(i32 %567) #4
  %569 = sdiv i32 %568, 8
  %570 = sub nsw i32 0, %569
  %571 = load i32, i32* %25, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %572
  store i32 %570, i32* %573, align 4
  br label %584

574:                                              ; preds = %548
  %575 = load i32, i32* %25, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = add nsw i32 %578, 4
  %580 = sdiv i32 %579, 8
  %581 = load i32, i32* %25, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %582
  store i32 %580, i32* %583, align 4
  br label %584

584:                                              ; preds = %574, %562
  %585 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %586 = load i32, i32* %23, align 4
  %587 = mul nsw i32 2, %586
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %23, align 4
  %592 = add nsw i32 %591, 1
  %593 = load i32, i32* %25, align 4
  %594 = srem i32 %593, 2
  %595 = load i32, i32* %24, align 4
  %596 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %585, i32 0, i32 %590, i32 %592, i32 %594, i32 %595)
  br label %597

597:                                              ; preds = %584, %543
  br label %598

598:                                              ; preds = %597
  %599 = load i32, i32* %25, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %25, align 4
  br label %540

601:                                              ; preds = %540
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %24, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %24, align 4
  br label %520

605:                                              ; preds = %520
  br label %606

606:                                              ; preds = %605, %518
  %607 = load i32, i32* %23, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %23, align 4
  br label %509

609:                                              ; preds = %509
  %610 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %611 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %612 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %613 = load i32, i32* %612, align 4
  %614 = call i32 @b43_phy_write(%struct.b43_wldev* %610, i32 %611, i32 %613)
  %615 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %616 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %617 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %618 = load i32, i32* %617, align 4
  %619 = call i32 @b43_phy_write(%struct.b43_wldev* %615, i32 %616, i32 %618)
  %620 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %621 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %622 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %620, i32 %621)
  %623 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %624 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %625 = call i32 @b43_phy_set(%struct.b43_wldev* %623, i32 %624, i32 1)
  %626 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %627 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %628 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %629 = call i32 @b43_phy_set(%struct.b43_wldev* %626, i32 %627, i32 %628)
  %630 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %631 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %632 = call i32 @b43_phy_mask(%struct.b43_wldev* %630, i32 %631, i32 -2)
  %633 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %634 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %635 = call i32 @b43_phy_set(%struct.b43_wldev* %633, i32 %634, i32 1)
  %636 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %637 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %638 = load i32, i32* @B43_NPHY_RFCTL_CMD_RXTX, align 4
  %639 = call i32 @b43_phy_set(%struct.b43_wldev* %636, i32 %637, i32 %638)
  %640 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %641 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %642 = call i32 @b43_phy_mask(%struct.b43_wldev* %640, i32 %641, i32 -2)
  store i32 0, i32* %24, align 4
  br label %643

643:                                              ; preds = %659, %609
  %644 = load i32, i32* %24, align 4
  %645 = load i32, i32* %10, align 4
  %646 = icmp slt i32 %644, %645
  br i1 %646, label %647, label %662

647:                                              ; preds = %643
  %648 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %649 = load i32*, i32** %9, align 8
  %650 = load i32, i32* %24, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i32, i32* %649, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* %24, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [22 x i32], [22 x i32]* %6, i64 0, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = call i32 @b43_phy_write(%struct.b43_wldev* %648, i32 %653, i32 %657)
  br label %659

659:                                              ; preds = %647
  %660 = load i32, i32* %24, align 4
  %661 = add nsw i32 %660, 1
  store i32 %661, i32* %24, align 4
  br label %643

662:                                              ; preds = %643
  %663 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %664 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 8
  %666 = call i64 @b43_current_band(i32 %665)
  %667 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %668 = icmp eq i64 %666, %667
  br i1 %668, label %669, label %678

669:                                              ; preds = %662
  %670 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %671 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %670, i32 0, i32 2
  %672 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %671, i32 0, i32 0
  %673 = load i32*, i32** %672, align 8
  store i32* %673, i32** %19, align 8
  %674 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %675 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %674, i32 0, i32 2
  %676 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %675, i32 0, i32 1
  %677 = load i32*, i32** %676, align 8
  store i32* %677, i32** %20, align 8
  br label %687

678:                                              ; preds = %662
  %679 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %680 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %679, i32 0, i32 2
  %681 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %680, i32 0, i32 2
  %682 = load i32*, i32** %681, align 8
  store i32* %682, i32** %19, align 8
  %683 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %684 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %684, i32 0, i32 3
  %686 = load i32*, i32** %685, align 8
  store i32* %686, i32** %20, align 8
  br label %687

687:                                              ; preds = %678, %669
  %688 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %689 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = icmp sge i32 %691, 7
  br i1 %692, label %693, label %704

693:                                              ; preds = %687
  %694 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %695 = load i32, i32* @R2057_NB_MASTER_CORE0, align 4
  %696 = call i32 @b43_radio_read(%struct.b43_wldev* %694, i32 %695)
  %697 = load i32*, i32** %19, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 0
  store i32 %696, i32* %698, align 4
  %699 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %700 = load i32, i32* @R2057_NB_MASTER_CORE1, align 4
  %701 = call i32 @b43_radio_read(%struct.b43_wldev* %699, i32 %700)
  %702 = load i32*, i32** %19, align 8
  %703 = getelementptr inbounds i32, i32* %702, i64 1
  store i32 %701, i32* %703, align 4
  br label %719

704:                                              ; preds = %687
  %705 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %706 = load i32, i32* @B2056_RX0, align 4
  %707 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %708 = or i32 %706, %707
  %709 = call i32 @b43_radio_read(%struct.b43_wldev* %705, i32 %708)
  %710 = load i32*, i32** %19, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 0
  store i32 %709, i32* %711, align 4
  %712 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %713 = load i32, i32* @B2056_RX1, align 4
  %714 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %715 = or i32 %713, %714
  %716 = call i32 @b43_radio_read(%struct.b43_wldev* %712, i32 %715)
  %717 = load i32*, i32** %19, align 8
  %718 = getelementptr inbounds i32, i32* %717, i64 1
  store i32 %716, i32* %718, align 4
  br label %719

719:                                              ; preds = %704, %693
  %720 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %721 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Z, align 4
  %722 = call i32 @b43_phy_read(%struct.b43_wldev* %720, i32 %721)
  %723 = load i32*, i32** %20, align 8
  %724 = getelementptr inbounds i32, i32* %723, i64 0
  store i32 %722, i32* %724, align 4
  %725 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %726 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Z, align 4
  %727 = call i32 @b43_phy_read(%struct.b43_wldev* %725, i32 %726)
  %728 = load i32*, i32** %20, align 8
  %729 = getelementptr inbounds i32, i32* %728, i64 1
  store i32 %727, i32* %729, align 4
  %730 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %731 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Z, align 4
  %732 = call i32 @b43_phy_read(%struct.b43_wldev* %730, i32 %731)
  %733 = load i32*, i32** %20, align 8
  %734 = getelementptr inbounds i32, i32* %733, i64 2
  store i32 %732, i32* %734, align 4
  %735 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %736 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Z, align 4
  %737 = call i32 @b43_phy_read(%struct.b43_wldev* %735, i32 %736)
  %738 = load i32*, i32** %20, align 8
  %739 = getelementptr inbounds i32, i32* %738, i64 3
  store i32 %737, i32* %739, align 4
  %740 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %741 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_X, align 4
  %742 = call i32 @b43_phy_read(%struct.b43_wldev* %740, i32 %741)
  %743 = load i32*, i32** %20, align 8
  %744 = getelementptr inbounds i32, i32* %743, i64 4
  store i32 %742, i32* %744, align 4
  %745 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %746 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_X, align 4
  %747 = call i32 @b43_phy_read(%struct.b43_wldev* %745, i32 %746)
  %748 = load i32*, i32** %20, align 8
  %749 = getelementptr inbounds i32, i32* %748, i64 5
  store i32 %747, i32* %749, align 4
  %750 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %751 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_X, align 4
  %752 = call i32 @b43_phy_read(%struct.b43_wldev* %750, i32 %751)
  %753 = load i32*, i32** %20, align 8
  %754 = getelementptr inbounds i32, i32* %753, i64 6
  store i32 %752, i32* %754, align 4
  %755 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %756 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_X, align 4
  %757 = call i32 @b43_phy_read(%struct.b43_wldev* %755, i32 %756)
  %758 = load i32*, i32** %20, align 8
  %759 = getelementptr inbounds i32, i32* %758, i64 7
  store i32 %757, i32* %759, align 4
  %760 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %761 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Y, align 4
  %762 = call i32 @b43_phy_read(%struct.b43_wldev* %760, i32 %761)
  %763 = load i32*, i32** %20, align 8
  %764 = getelementptr inbounds i32, i32* %763, i64 8
  store i32 %762, i32* %764, align 4
  %765 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %766 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Y, align 4
  %767 = call i32 @b43_phy_read(%struct.b43_wldev* %765, i32 %766)
  %768 = load i32*, i32** %20, align 8
  %769 = getelementptr inbounds i32, i32* %768, i64 9
  store i32 %767, i32* %769, align 4
  %770 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %771 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Y, align 4
  %772 = call i32 @b43_phy_read(%struct.b43_wldev* %770, i32 %771)
  %773 = load i32*, i32** %20, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 10
  store i32 %772, i32* %774, align 4
  %775 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %776 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Y, align 4
  %777 = call i32 @b43_phy_read(%struct.b43_wldev* %775, i32 %776)
  %778 = load i32*, i32** %20, align 8
  %779 = getelementptr inbounds i32, i32* %778, i64 11
  store i32 %777, i32* %779, align 4
  %780 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %781 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 8
  %783 = call i64 @b43_current_band(i32 %782)
  %784 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %785 = icmp eq i64 %783, %784
  br i1 %785, label %786, label %797

786:                                              ; preds = %719
  %787 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %788 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %787, i32 0, i32 1
  %789 = load %struct.TYPE_10__*, %struct.TYPE_10__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %789, i32 0, i32 0
  %791 = load %struct.TYPE_9__*, %struct.TYPE_9__** %790, align 8
  %792 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 4
  %794 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %795 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %794, i32 0, i32 1
  %796 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %795, i32 0, i32 0
  store i32 %793, i32* %796, align 4
  br label %808

797:                                              ; preds = %719
  %798 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %799 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %798, i32 0, i32 1
  %800 = load %struct.TYPE_10__*, %struct.TYPE_10__** %799, align 8
  %801 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %800, i32 0, i32 0
  %802 = load %struct.TYPE_9__*, %struct.TYPE_9__** %801, align 8
  %803 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 4
  %805 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %806 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %805, i32 0, i32 0
  %807 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %806, i32 0, i32 0
  store i32 %804, i32* %807, align 8
  br label %808

808:                                              ; preds = %797, %786
  %809 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %810 = load i32, i32* %11, align 4
  %811 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %809, i32 7, i32 %810)
  %812 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %813 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %814 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %812, i32* %813)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_read_clip_detection(%struct.b43_wldev*, i32*) #2

declare dso_local i32 @b43_nphy_write_clip_detection(%struct.b43_wldev*, i32*) #2

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_one_to_many(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_get_rx_core_state(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_poll_rssi(%struct.b43_wldev*, i32, i32*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
