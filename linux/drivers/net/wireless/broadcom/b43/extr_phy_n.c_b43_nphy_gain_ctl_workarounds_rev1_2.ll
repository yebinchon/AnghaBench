; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_gain_ctl_workarounds_rev1_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_gain_ctl_workarounds_rev1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64 }

@__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_events = private unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 7], align 4
@__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_delays = private unnamed_addr constant [3 x i32] [i32 10, i32 30, i32 1], align 4
@B43_NPHY_C1_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C1_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@B43_NPHY_C1_NBCLIPTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C2_NBCLIPTHRES = common dso_local global i32 0, align 4
@B43_NPHY_CLIP1_NBDWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_CLIP2_NBDWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_W1CLIP1_DWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_W1CLIP2_DWELL_LEN = common dso_local global i32 0, align 4
@B43_NPHY_C1_CLIPWBTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C1_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@B43_NPHY_C2_CLIPWBTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C2_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@B43_NPHY_C1_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_C1_CCK_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C1_CCK_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_C2_CCK_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C2_CCK_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@B43_NPHY_CCK_SHIFTB_REF = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_C1_INITGAIN = common dso_local global i32 0, align 4
@B43_NPHY_C1_INITGAIN_HPVGA2 = common dso_local global i32 0, align 4
@B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_C2_INITGAIN = common dso_local global i32 0, align 4
@B43_NPHY_C2_INITGAIN_HPVGA2 = common dso_local global i32 0, align 4
@B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_NPHY_OVER_DGAIN1 = common dso_local global i32 0, align 4
@B43_NPHY_OVER_DGAIN_CCKDGECV = common dso_local global i32 0, align 4
@B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_gain_ctl_workarounds_rev1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_gain_ctl_workarounds_rev1_2(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.b43_phy_n*, %struct.b43_phy_n** %12, align 8
  store %struct.b43_phy_n* %13, %struct.b43_phy_n** %3, align 8
  %14 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_events to i8*), i64 12, i1 false)
  %15 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_gain_ctl_workarounds_rev1_2.rfseq_delays to i8*), i64 12, i1 false)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B43_NPHY_C1_CGAINI, align 4
  %18 = load i32, i32* @B43_NPHY_C1_CGAINI_CL2DETECT, align 4
  %19 = call i32 @b43_phy_set(%struct.b43_wldev* %16, i32 %17, i32 %18)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_NPHY_C2_CGAINI, align 4
  %22 = load i32, i32* @B43_NPHY_C2_CGAINI_CL2DETECT, align 4
  %23 = call i32 @b43_phy_set(%struct.b43_wldev* %20, i32 %21, i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_NPHY_C1_NBCLIPTHRES, align 4
  %26 = call i32 @b43_phy_write(%struct.b43_wldev* %24, i32 %25, i32 132)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_NPHY_C2_NBCLIPTHRES, align 4
  %29 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 %28, i32 132)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i64 @b43_is_40mhz(%struct.b43_wldev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %1
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* @B43_NPHY_CLIP1_NBDWELL_LEN, align 4
  %36 = call i32 @b43_phy_write(%struct.b43_wldev* %34, i32 %35, i32 43)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = load i32, i32* @B43_NPHY_CLIP2_NBDWELL_LEN, align 4
  %39 = call i32 @b43_phy_write(%struct.b43_wldev* %37, i32 %38, i32 43)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @B43_NPHY_W1CLIP1_DWELL_LEN, align 4
  %42 = call i32 @b43_phy_write(%struct.b43_wldev* %40, i32 %41, i32 9)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_NPHY_W1CLIP2_DWELL_LEN, align 4
  %45 = call i32 @b43_phy_write(%struct.b43_wldev* %43, i32 %44, i32 9)
  br label %46

46:                                               ; preds = %33, %1
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_NPHY_C1_CLIPWBTHRES, align 4
  %49 = load i32, i32* @B43_NPHY_C1_CLIPWBTHRES_CLIP2, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @b43_phy_maskset(%struct.b43_wldev* %47, i32 %48, i32 %50, i32 21)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* @B43_NPHY_C2_CLIPWBTHRES, align 4
  %54 = load i32, i32* @B43_NPHY_C2_CLIPWBTHRES_CLIP2, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @b43_phy_maskset(%struct.b43_wldev* %52, i32 %53, i32 %55, i32 21)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i64 @b43_is_40mhz(%struct.b43_wldev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %46
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_NPHY_C1_CGAINI, align 4
  %63 = load i32, i32* @B43_NPHY_C1_CGAINI_GAINBKOFF, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @b43_phy_maskset(%struct.b43_wldev* %61, i32 %62, i32 %64, i32 1)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_NPHY_C2_CGAINI, align 4
  %68 = load i32, i32* @B43_NPHY_C2_CGAINI_GAINBKOFF, align 4
  %69 = xor i32 %68, -1
  %70 = call i32 @b43_phy_maskset(%struct.b43_wldev* %66, i32 %67, i32 %69, i32 1)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B43_NPHY_C1_CCK_CGAINI, align 4
  %73 = load i32, i32* @B43_NPHY_C1_CCK_CGAINI_GAINBKOFF, align 4
  %74 = xor i32 %73, -1
  %75 = call i32 @b43_phy_maskset(%struct.b43_wldev* %71, i32 %72, i32 %74, i32 1)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = load i32, i32* @B43_NPHY_C2_CCK_CGAINI, align 4
  %78 = load i32, i32* @B43_NPHY_C2_CCK_CGAINI_GAINBKOFF, align 4
  %79 = xor i32 %78, -1
  %80 = call i32 @b43_phy_maskset(%struct.b43_wldev* %76, i32 %77, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %60, %46
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = load i32, i32* @B43_NPHY_CCK_SHIFTB_REF, align 4
  %84 = call i32 @b43_phy_write(%struct.b43_wldev* %82, i32 %83, i32 32924)
  %85 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %86 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %81
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @b43_current_band(i32 %92)
  %94 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i64 @b43_is_40mhz(%struct.b43_wldev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 4, i32* %6, align 4
  br label %102

101:                                              ; preds = %96, %89
  store i32 5, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %109

103:                                              ; preds = %81
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = call i64 @b43_is_40mhz(%struct.b43_wldev* %104)
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 6, i32 7
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %102
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = load i32, i32* @B43_NPHY_C1_INITGAIN, align 4
  %112 = load i32, i32* @B43_NPHY_C1_INITGAIN_HPVGA2, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @B43_NPHY_C1_INITGAIN_HPVGA2_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = call i32 @b43_phy_maskset(%struct.b43_wldev* %110, i32 %111, i32 %113, i32 %116)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B43_NPHY_C2_INITGAIN, align 4
  %120 = load i32, i32* @B43_NPHY_C2_INITGAIN_HPVGA2, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @B43_NPHY_C2_INITGAIN_HPVGA2_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = call i32 @b43_phy_maskset(%struct.b43_wldev* %118, i32 %119, i32 %121, i32 %124)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %128 = call i32 @b43_phy_write(%struct.b43_wldev* %126, i32 %127, i32 7430)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %139, %109
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %135 = load i32, i32* %6, align 4
  %136 = shl i32 %135, 8
  %137 = or i32 %136, 124
  %138 = call i32 @b43_phy_write(%struct.b43_wldev* %133, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %129

142:                                              ; preds = %129
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = call i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev* %143)
  %145 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %146 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %197

149:                                              ; preds = %142
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %152 = call i32 @b43_phy_write(%struct.b43_wldev* %150, i32 %151, i32 2056)
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %155 = call i32 @b43_phy_write(%struct.b43_wldev* %153, i32 %154, i32 0)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %158 = call i32 @b43_phy_write(%struct.b43_wldev* %156, i32 %157, i32 1)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %161 = call i32 @b43_phy_write(%struct.b43_wldev* %159, i32 %160, i32 1)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %164 = call i32 @b43_phy_write(%struct.b43_wldev* %162, i32 %163, i32 1)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %167 = call i32 @b43_phy_write(%struct.b43_wldev* %165, i32 %166, i32 3080)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %170 = call i32 @b43_phy_write(%struct.b43_wldev* %168, i32 %169, i32 0)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %173 = call i32 @b43_phy_write(%struct.b43_wldev* %171, i32 %172, i32 1)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %176 = call i32 @b43_phy_write(%struct.b43_wldev* %174, i32 %175, i32 1)
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %178 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %179 = call i32 @b43_phy_write(%struct.b43_wldev* %177, i32 %178, i32 1)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %182 = call i32 @b43_phy_write(%struct.b43_wldev* %180, i32 %181, i32 7430)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %193, %149
  %184 = load i32, i32* %4, align 4
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %186, label %196

186:                                              ; preds = %183
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %189 = load i32, i32* %6, align 4
  %190 = shl i32 %189, 8
  %191 = or i32 %190, 116
  %192 = call i32 @b43_phy_write(%struct.b43_wldev* %187, i32 %188, i32 %191)
  br label %193

193:                                              ; preds = %186
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %183

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196, %142
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %236

203:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %232, %203
  %205 = load i32, i32* %4, align 4
  %206 = icmp slt i32 %205, 4
  br i1 %206, label %207, label %235

207:                                              ; preds = %204
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %209 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %210 = load i32, i32* %4, align 4
  %211 = mul nsw i32 1024, %210
  %212 = add nsw i32 %211, 32
  %213 = call i32 @b43_phy_write(%struct.b43_wldev* %208, i32 %209, i32 %212)
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %228, %207
  %215 = load i32, i32* %5, align 4
  %216 = icmp slt i32 %215, 21
  br i1 %216, label %217, label %231

217:                                              ; preds = %214
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp slt i32 %219, 2
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 3, i32 1
  %223 = mul nsw i32 %218, %222
  store i32 %223, i32* %7, align 4
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %225 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @b43_phy_write(%struct.b43_wldev* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %217
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %214

231:                                              ; preds = %214
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  br label %204

235:                                              ; preds = %204
  br label %236

236:                                              ; preds = %235, %197
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %240 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %237, i32 5, i32* %238, i32* %239, i32 3)
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %242 = load i32, i32* @B43_NPHY_OVER_DGAIN1, align 4
  %243 = load i32, i32* @B43_NPHY_OVER_DGAIN_CCKDGECV, align 4
  %244 = xor i32 %243, -1
  %245 = and i32 %244, 65535
  %246 = load i32, i32* @B43_NPHY_OVER_DGAIN_CCKDGECV_SHIFT, align 4
  %247 = shl i32 90, %246
  %248 = call i32 @b43_phy_maskset(%struct.b43_wldev* %241, i32 %242, i32 %245, i32 %247)
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %250 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @b43_current_band(i32 %251)
  %253 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %236
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %257 = call i32 @B43_PHY_N(i32 3165)
  %258 = call i32 @b43_phy_maskset(%struct.b43_wldev* %256, i32 %257, i32 65408, i32 4)
  br label %259

259:                                              ; preds = %255, %236
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev*, i32, i32*, i32*, i32) #2

declare dso_local i32 @B43_PHY_N(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
