; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.lcnphy_txgains = type { i32, i32, i32 }

@__const.wlc_lcnphy_tx_iqlo_cal.commands_fullcal = private unnamed_addr constant [6 x i32] [i32 33844, i32 33588, i32 32900, i32 33383, i32 32854, i32 33332], align 16
@__const.wlc_lcnphy_tx_iqlo_cal.commands_recal = private unnamed_addr constant [6 x i32] [i32 33844, i32 33588, i32 32900, i32 33383, i32 32854, i32 33332], align 16
@__const.wlc_lcnphy_tx_iqlo_cal.command_nums_fullcal = private unnamed_addr constant [6 x i32] [i32 31383, i32 31383, i32 31383, i32 31367, i32 31367, i32 31639], align 16
@__const.wlc_lcnphy_tx_iqlo_cal.command_nums_recal = private unnamed_addr constant [6 x i32] [i32 31383, i32 31383, i32 31383, i32 31367, i32 31367, i32 31639], align 16
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4
@iqcal_gainparams_numgains_lcnphy = common dso_local global i32* null, align 8
@tbl_iqcal_gainparams_lcnphy = common dso_local global i32*** null, align 8
@lcnphy_iqcal_loft_gainladder = common dso_local global i32* null, align 8
@lcnphy_iqcal_ir_gainladder = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.lcnphy_txgains*, i32, i32)* @wlc_lcnphy_tx_iqlo_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tx_iqlo_cal(%struct.brcms_phy* %0, %struct.lcnphy_txgains* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca %struct.lcnphy_txgains*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lcnphy_txgains, align 4
  %10 = alloca %struct.lcnphy_txgains, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32], align 16
  %15 = alloca [11 x i32], align 16
  %16 = alloca [6 x i32], align 16
  %17 = alloca [6 x i32], align 16
  %18 = alloca [6 x i32], align 16
  %19 = alloca [6 x i32], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.lcnphy_txgains, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.brcms_phy_lcnphy*, align 8
  %36 = alloca i32, align 4
  %37 = alloca [11 x i32], align 16
  %38 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store %struct.lcnphy_txgains* %1, %struct.lcnphy_txgains** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %39 = bitcast [11 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 44, i1 false)
  %40 = bitcast [6 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 16 bitcast ([6 x i32]* @__const.wlc_lcnphy_tx_iqlo_cal.commands_fullcal to i8*), i64 24, i1 false)
  %41 = bitcast [6 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 bitcast ([6 x i32]* @__const.wlc_lcnphy_tx_iqlo_cal.commands_recal to i8*), i64 24, i1 false)
  %42 = bitcast [6 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([6 x i32]* @__const.wlc_lcnphy_tx_iqlo_cal.command_nums_fullcal to i8*), i64 24, i1 false)
  %43 = bitcast [6 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([6 x i32]* @__const.wlc_lcnphy_tx_iqlo_cal.command_nums_recal to i8*), i64 24, i1 false)
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  store i32* %44, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %33, align 8
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %47, align 8
  store %struct.brcms_phy_lcnphy* %48, %struct.brcms_phy_lcnphy** %35, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32* @kmalloc_array(i32 20, i32 4, i32 %49)
  store i32* %50, i32** %34, align 8
  %51 = load i32*, i32** %34, align 8
  %52 = icmp eq i32* null, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %4
  br label %415

54:                                               ; preds = %4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %56 = call i32 @read_phy_reg(%struct.brcms_phy* %55, i32 1755)
  store i32 %56, i32* %28, align 4
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %58 = call i32 @read_phy_reg(%struct.brcms_phy* %57, i32 1754)
  store i32 %58, i32* %27, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %60 = call i32 @or_phy_reg(%struct.brcms_phy* %59, i32 1754, i32 64)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %62 = call i32 @or_phy_reg(%struct.brcms_phy* %61, i32 1755, i32 3)
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %77 [
    i32 129, label %64
    i32 128, label %70
  ]

64:                                               ; preds = %54
  %65 = getelementptr inbounds [11 x i32], [11 x i32]* %15, i64 0, i64 0
  store i32* %65, i32** %21, align 8
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  store i32* %66, i32** %22, align 8
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %32, align 8
  br label %78

70:                                               ; preds = %54
  %71 = getelementptr inbounds [11 x i32], [11 x i32]* %15, i64 0, i64 0
  store i32* %71, i32** %21, align 8
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  store i32* %72, i32** %22, align 8
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %32, align 8
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  store i32* %76, i32** %20, align 8
  br label %78

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %70, %64
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %80 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %81 = load i32*, i32** %21, align 8
  %82 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %79, i32 %80, i32* %81, i32 11, i32 16, i32 64)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %84 = call i32 @write_phy_reg(%struct.brcms_phy* %83, i32 1754, i32 65535)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %86 = call i32 @mod_phy_reg(%struct.brcms_phy* %85, i32 1283, i32 8, i32 8)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %88 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %87)
  store i32 %88, i32* %25, align 4
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %90 = call i32 @mod_phy_reg(%struct.brcms_phy* %89, i32 1188, i32 4096, i32 4096)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %92 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %93 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %91, i32 %92)
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %95 = call i32 @read_phy_reg(%struct.brcms_phy* %94, i32 1243)
  store i32 %95, i32* %26, align 4
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %97 = call i32 @mod_phy_reg(%struct.brcms_phy* %96, i32 1243, i32 1023, i32 678)
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %99 = call i32 @mod_phy_reg(%struct.brcms_phy* %98, i32 1243, i32 28672, i32 8192)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %101 = load i32*, i32** %34, align 8
  %102 = call i32 @wlc_lcnphy_tx_iqlo_loopback(%struct.brcms_phy* %100, i32* %101)
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %104 = call i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy* %103)
  store i32 %104, i32* %29, align 4
  %105 = load i32, i32* %29, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %78
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %109 = call i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %108, %struct.lcnphy_txgains* %30)
  br label %110

110:                                              ; preds = %107, %78
  %111 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %6, align 8
  %112 = icmp ne %struct.lcnphy_txgains* %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %29, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %118 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %119 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %113
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %124 = call i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %123, %struct.lcnphy_txgains* %10)
  store %struct.lcnphy_txgains* %10, %struct.lcnphy_txgains** %6, align 8
  br label %125

125:                                              ; preds = %122, %110
  %126 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %6, align 8
  %127 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %6, align 8
  %131 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 4
  %134 = or i32 %129, %133
  %135 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %6, align 8
  %136 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %134, %137
  store i32 %138, i32* %11, align 4
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %140 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @CHSPEC_IS5G(i32 %141)
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %12, align 8
  %147 = load %struct.lcnphy_txgains*, %struct.lcnphy_txgains** %6, align 8
  %148 = bitcast %struct.lcnphy_txgains* %9 to i8*
  %149 = bitcast %struct.lcnphy_txgains* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 4 %149, i64 12, i1 false)
  %150 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %151 = call i32 @memset(i32* %150, i32 0, i32 20)
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %218, %125
  %153 = load i32, i32* %13, align 4
  %154 = load i32*, i32** @iqcal_gainparams_numgains_lcnphy, align 8
  %155 = load i64, i64* %12, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %153, %157
  br i1 %158, label %159, label %221

159:                                              ; preds = %152
  %160 = load i32, i32* %11, align 4
  %161 = load i32***, i32**** @tbl_iqcal_gainparams_lcnphy, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds i32**, i32*** %161, i64 %162
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %160, %170
  br i1 %171, label %172, label %217

172:                                              ; preds = %159
  %173 = load i32***, i32**** @tbl_iqcal_gainparams_lcnphy, align 8
  %174 = load i64, i64* %12, align 8
  %175 = getelementptr inbounds i32**, i32*** %173, i64 %174
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %9, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = load i32***, i32**** @tbl_iqcal_gainparams_lcnphy, align 8
  %185 = load i64, i64* %12, align 8
  %186 = getelementptr inbounds i32**, i32*** %184, i64 %185
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %9, i32 0, i32 1
  store i32 %193, i32* %194, align 4
  %195 = load i32***, i32**** @tbl_iqcal_gainparams_lcnphy, align 8
  %196 = load i64, i64* %12, align 8
  %197 = getelementptr inbounds i32**, i32*** %195, i64 %196
  %198 = load i32**, i32*** %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.lcnphy_txgains, %struct.lcnphy_txgains* %9, i32 0, i32 2
  store i32 %204, i32* %205, align 4
  %206 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 0
  %207 = load i32***, i32**** @tbl_iqcal_gainparams_lcnphy, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds i32**, i32*** %207, i64 %208
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = call i32 @memcpy(i32* %206, i32* %215, i32 20)
  br label %221

217:                                              ; preds = %159
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %152

221:                                              ; preds = %172, %152
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %223 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %222, %struct.lcnphy_txgains* %9)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %225 = call i32 @write_phy_reg(%struct.brcms_phy* %224, i32 1107, i32 2729)
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %227 = call i32 @write_phy_reg(%struct.brcms_phy* %226, i32 2365, i32 192)
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %229 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %230 = load i32*, i32** @lcnphy_iqcal_loft_gainladder, align 8
  %231 = load i32*, i32** @lcnphy_iqcal_loft_gainladder, align 8
  %232 = call i32 @ARRAY_SIZE(i32* %231)
  %233 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %228, i32 %229, i32* %230, i32 %232, i32 16, i32 0)
  %234 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %235 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %236 = load i32*, i32** @lcnphy_iqcal_ir_gainladder, align 8
  %237 = load i32*, i32** @lcnphy_iqcal_ir_gainladder, align 8
  %238 = call i32 @ARRAY_SIZE(i32* %237)
  %239 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %234, i32 %235, i32* %236, i32 %238, i32 16, i32 32)
  %240 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %241 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %221
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %246 = call i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy* %245)
  %247 = call i32 @udelay(i32 5)
  %248 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %249 = call i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %248, i32 3750, i32 88, i32 1)
  br label %253

250:                                              ; preds = %221
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %252 = call i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %251, i32 3750, i32 88, i32 1)
  br label %253

253:                                              ; preds = %250, %244
  %254 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %255 = call i32 @write_phy_reg(%struct.brcms_phy* %254, i32 1754, i32 65535)
  %256 = load i64, i64* %33, align 8
  store i64 %256, i64* %31, align 8
  br label %257

257:                                              ; preds = %348, %253
  %258 = load i64, i64* %31, align 8
  %259 = load i64, i64* %32, align 8
  %260 = icmp ult i64 %258, %259
  br i1 %260, label %261, label %351

261:                                              ; preds = %257
  store i32 0, i32* %36, align 4
  %262 = load i32*, i32** %22, align 8
  %263 = load i64, i64* %31, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, 3840
  %267 = ashr i32 %266, 8
  store i32 %267, i32* %23, align 4
  %268 = load i32*, i32** %20, align 8
  %269 = load i64, i64* %31, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %38, align 4
  %272 = load i32, i32* %23, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %261
  %278 = load i32, i32* %23, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = shl i32 %281, 8
  %283 = load i32, i32* %38, align 4
  %284 = and i32 %283, 255
  %285 = or i32 %282, %284
  store i32 %285, i32* %38, align 4
  br label %286

286:                                              ; preds = %277, %261
  %287 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %288 = load i32, i32* %38, align 4
  %289 = call i32 @write_phy_reg(%struct.brcms_phy* %287, i32 1106, i32 %288)
  %290 = load i32, i32* %23, align 4
  %291 = icmp eq i32 %290, 3
  br i1 %291, label %295, label %292

292:                                              ; preds = %286
  %293 = load i32, i32* %23, align 4
  %294 = icmp eq i32 %293, 4
  br i1 %294, label %295, label %302

295:                                              ; preds = %292, %286
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %297 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %298 = call i32 @wlc_lcnphy_common_read_table(%struct.brcms_phy* %296, i32 %297, i32* %24, i32 1, i32 16, i32 69)
  %299 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %300 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %301 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %299, i32 %300, i32* %36, i32 1, i32 16, i32 69)
  br label %302

302:                                              ; preds = %295, %292
  %303 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %304 = load i32*, i32** %22, align 8
  %305 = load i64, i64* %31, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @write_phy_reg(%struct.brcms_phy* %303, i32 1105, i32 %307)
  %309 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %310 = call i32 @wlc_lcnphy_iqcal_wait(%struct.brcms_phy* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %302
  br label %383

313:                                              ; preds = %302
  %314 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %315 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %316 = getelementptr inbounds [11 x i32], [11 x i32]* %37, i64 0, i64 0
  %317 = getelementptr inbounds [11 x i32], [11 x i32]* %37, i64 0, i64 0
  %318 = call i32 @ARRAY_SIZE(i32* %317)
  %319 = call i32 @wlc_lcnphy_common_read_table(%struct.brcms_phy* %314, i32 %315, i32* %316, i32 %318, i32 16, i32 96)
  %320 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %321 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %322 = getelementptr inbounds [11 x i32], [11 x i32]* %37, i64 0, i64 0
  %323 = getelementptr inbounds [11 x i32], [11 x i32]* %37, i64 0, i64 0
  %324 = call i32 @ARRAY_SIZE(i32* %323)
  %325 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %320, i32 %321, i32* %322, i32 %324, i32 16, i32 64)
  %326 = load i32, i32* %23, align 4
  %327 = icmp eq i32 %326, 3
  br i1 %327, label %331, label %328

328:                                              ; preds = %313
  %329 = load i32, i32* %23, align 4
  %330 = icmp eq i32 %329, 4
  br i1 %330, label %331, label %335

331:                                              ; preds = %328, %313
  %332 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %333 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %334 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %332, i32 %333, i32* %24, i32 1, i32 16, i32 69)
  br label %335

335:                                              ; preds = %331, %328
  %336 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %337 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %338 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %339 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %343 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @ARRAY_SIZE(i32* %345)
  %347 = call i32 @wlc_lcnphy_common_read_table(%struct.brcms_phy* %336, i32 %337, i32* %341, i32 %346, i32 16, i32 96)
  br label %348

348:                                              ; preds = %335
  %349 = load i64, i64* %31, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %31, align 8
  br label %257

351:                                              ; preds = %257
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %353 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %354 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %355 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %359 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 @ARRAY_SIZE(i32* %361)
  %363 = call i32 @wlc_lcnphy_common_read_table(%struct.brcms_phy* %352, i32 %353, i32* %357, i32 %362, i32 16, i32 96)
  %364 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %365 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 1
  store i32 1, i32* %366, align 8
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %368 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %369 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %370 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %367, i32 %368, i32* %373, i32 4, i32 16, i32 80)
  %375 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %376 = load i32, i32* @LCNPHY_TBL_ID_IQLOCAL, align 4
  %377 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %35, align 8
  %378 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 5
  %382 = call i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy* %375, i32 %376, i32* %381, i32 2, i32 16, i32 85)
  br label %383

383:                                              ; preds = %351, %312
  %384 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %385 = load i32*, i32** %34, align 8
  %386 = call i32 @wlc_lcnphy_tx_iqlo_loopback_cleanup(%struct.brcms_phy* %384, i32* %385)
  %387 = load i32*, i32** %34, align 8
  %388 = call i32 @kfree(i32* %387)
  %389 = load i32, i32* %8, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %394, label %391

391:                                              ; preds = %383
  %392 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %393 = call i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy* %392)
  br label %394

394:                                              ; preds = %391, %383
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %396 = load i32, i32* %26, align 4
  %397 = call i32 @write_phy_reg(%struct.brcms_phy* %395, i32 1243, i32 %396)
  %398 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %399 = call i32 @write_phy_reg(%struct.brcms_phy* %398, i32 1107, i32 0)
  %400 = load i32, i32* %29, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %394
  %403 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %404 = call i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy* %403, %struct.lcnphy_txgains* %30)
  br label %405

405:                                              ; preds = %402, %394
  %406 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %407 = load i32, i32* %25, align 4
  %408 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %406, i32 %407)
  %409 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %410 = load i32, i32* %27, align 4
  %411 = call i32 @write_phy_reg(%struct.brcms_phy* %409, i32 1754, i32 %410)
  %412 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %413 = load i32, i32* %28, align 4
  %414 = call i32 @write_phy_reg(%struct.brcms_phy* %412, i32 1755, i32 %413)
  br label %415

415:                                              ; preds = %405, %53
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #2

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @wlc_lcnphy_common_write_table(%struct.brcms_phy*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #2

declare dso_local i32 @wlc_lcnphy_tx_iqlo_loopback(%struct.brcms_phy*, i32*) #2

declare dso_local i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #2

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wlc_lcnphy_set_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #2

declare dso_local i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy*) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @wlc_lcnphy_common_read_table(%struct.brcms_phy*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @wlc_lcnphy_iqcal_wait(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_lcnphy_tx_iqlo_loopback_cleanup(%struct.brcms_phy*, i32*) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
