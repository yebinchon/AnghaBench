; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_gain_ctl_workarounds_rev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_gain_ctl_workarounds_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }
%struct.nphy_gain_ctl_workaround_entry = type { i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.b43_nphy_gain_ctl_workarounds_rev3.lpf_gain = private unnamed_addr constant [6 x i32] [i32 0, i32 6, i32 12, i32 18, i32 18, i32 18], align 16
@__const.b43_nphy_gain_ctl_workarounds_rev3.lpf_bits = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 3, i32 3], align 16
@B43_NPHY_BANDCTL = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL_5GHZ = common dso_local global i32 0, align 4
@B43_BFH_EXTLNA_5GHZ = common dso_local global i32 0, align 4
@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@B43_NPHY_RXCTL = common dso_local global i32 0, align 4
@B43_NPHY_C1_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C1_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI = common dso_local global i32 0, align 4
@B43_NPHY_C2_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX_BIASPOLE_LNAG1_IDAC = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4
@B2056_RX_LNAG2_IDAC = common dso_local global i32 0, align 4
@B2056_RX_RSSI_POLE = common dso_local global i32 0, align 4
@B2056_RX_RSSI_GAIN = common dso_local global i32 0, align 4
@B2056_RX_BIASPOLE_LNAA1_IDAC = common dso_local global i32 0, align 4
@B2056_RX_LNAA2_IDAC = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C1_INITGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C2_INITGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C1_CLIP_HIGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C2_CLIP_HIGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C1_CLIP_MEDGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C2_CLIP_MEDGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C1_CLIP_LOGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_REV3_C2_CLIP_LOGAIN_A = common dso_local global i32 0, align 4
@B43_NPHY_CRSMINPOWER0 = common dso_local global i32 0, align 4
@B43_NPHY_CRSMINPOWERL0 = common dso_local global i32 0, align 4
@B43_NPHY_CRSMINPOWERU0 = common dso_local global i32 0, align 4
@B43_NPHY_C1_NBCLIPTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C2_NBCLIPTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C1_CLIPWBTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C1_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@B43_NPHY_C2_CLIPWBTHRES = common dso_local global i32 0, align 4
@B43_NPHY_C2_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@B43_NPHY_CCK_SHIFTB_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_gain_ctl_workarounds_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_gain_ctl_workarounds_rev3(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nphy_gain_ctl_workaround_entry*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca [6 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %3, align 8
  %15 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.b43_nphy_gain_ctl_workarounds_rev3.lpf_gain to i8*), i64 24, i1 false)
  %16 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x i32]* @__const.b43_nphy_gain_ctl_workarounds_rev3.lpf_bits to i8*), i64 24, i1 false)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %19 = call i32 @b43_phy_read(%struct.b43_wldev* %17, i32 %18)
  %20 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %26 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @B43_BFH_EXTLNA_5GHZ, align 4
  %29 = and i32 %27, %28
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %32 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %35 = and i32 %33, %34
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i32 [ %29, %24 ], [ %35, %30 ]
  store i32 %37, i32* %5, align 4
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.nphy_gain_ctl_workaround_entry* @b43_nphy_get_gain_ctl_workaround_ent(%struct.b43_wldev* %38, i32 %39, i32 %40)
  store %struct.nphy_gain_ctl_workaround_entry* %41, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 5
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 144, i32* %6, align 4
  br label %52

51:                                               ; preds = %44, %36
  store i32 80, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* @B43_NPHY_RXCTL, align 4
  %55 = call i32 @b43_phy_set(%struct.b43_wldev* %53, i32 %54, i32 64)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = load i32, i32* @B43_NPHY_C1_CGAINI, align 4
  %58 = load i32, i32* @B43_NPHY_C1_CGAINI_CL2DETECT, align 4
  %59 = call i32 @b43_phy_set(%struct.b43_wldev* %56, i32 %57, i32 %58)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = load i32, i32* @B43_NPHY_C2_CGAINI, align 4
  %62 = load i32, i32* @B43_NPHY_C2_CGAINI_CL2DETECT, align 4
  %63 = call i32 @b43_phy_set(%struct.b43_wldev* %60, i32 %61, i32 %62)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B2056_RX0, align 4
  %66 = load i32, i32* @B2056_RX_BIASPOLE_LNAG1_IDAC, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @b43_radio_write(%struct.b43_wldev* %64, i32 %67, i32 23)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B2056_RX1, align 4
  %71 = load i32, i32* @B2056_RX_BIASPOLE_LNAG1_IDAC, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @b43_radio_write(%struct.b43_wldev* %69, i32 %72, i32 23)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B2056_RX0, align 4
  %76 = load i32, i32* @B2056_RX_LNAG2_IDAC, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @b43_radio_write(%struct.b43_wldev* %74, i32 %77, i32 240)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B2056_RX1, align 4
  %81 = load i32, i32* @B2056_RX_LNAG2_IDAC, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @b43_radio_write(%struct.b43_wldev* %79, i32 %82, i32 240)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B2056_RX0, align 4
  %86 = load i32, i32* @B2056_RX_RSSI_POLE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @b43_radio_write(%struct.b43_wldev* %84, i32 %87, i32 0)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = load i32, i32* @B2056_RX1, align 4
  %91 = load i32, i32* @B2056_RX_RSSI_POLE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @b43_radio_write(%struct.b43_wldev* %89, i32 %92, i32 0)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = load i32, i32* @B2056_RX0, align 4
  %96 = load i32, i32* @B2056_RX_RSSI_GAIN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @b43_radio_write(%struct.b43_wldev* %94, i32 %97, i32 %98)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = load i32, i32* @B2056_RX1, align 4
  %102 = load i32, i32* @B2056_RX_RSSI_GAIN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @b43_radio_write(%struct.b43_wldev* %100, i32 %103, i32 %104)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @B2056_RX0, align 4
  %108 = load i32, i32* @B2056_RX_BIASPOLE_LNAA1_IDAC, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @b43_radio_write(%struct.b43_wldev* %106, i32 %109, i32 23)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = load i32, i32* @B2056_RX1, align 4
  %113 = load i32, i32* @B2056_RX_BIASPOLE_LNAA1_IDAC, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @b43_radio_write(%struct.b43_wldev* %111, i32 %114, i32 23)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %117 = load i32, i32* @B2056_RX0, align 4
  %118 = load i32, i32* @B2056_RX_LNAA2_IDAC, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @b43_radio_write(%struct.b43_wldev* %116, i32 %119, i32 255)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B2056_RX1, align 4
  %123 = load i32, i32* @B2056_RX_LNAA2_IDAC, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @b43_radio_write(%struct.b43_wldev* %121, i32 %124, i32 255)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @B43_NTAB8(i32 0, i32 8)
  %128 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %129 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %126, i32 %127, i32 4, i32* %130)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @B43_NTAB8(i32 1, i32 8)
  %134 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %135 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %132, i32 %133, i32 4, i32* %136)
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %139 = call i32 @B43_NTAB8(i32 0, i32 16)
  %140 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %141 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %138, i32 %139, i32 4, i32* %142)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = call i32 @B43_NTAB8(i32 1, i32 16)
  %146 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %147 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %144, i32 %145, i32 4, i32* %148)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = call i32 @B43_NTAB8(i32 0, i32 32)
  %152 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %153 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %150, i32 %151, i32 10, i32* %154)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = call i32 @B43_NTAB8(i32 1, i32 32)
  %158 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %159 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %156, i32 %157, i32 10, i32* %160)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = call i32 @B43_NTAB8(i32 2, i32 32)
  %164 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %165 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %162, i32 %163, i32 10, i32* %166)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @B43_NTAB8(i32 3, i32 32)
  %170 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %171 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %168, i32 %169, i32 10, i32* %172)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = call i32 @B43_NTAB8(i32 0, i32 64)
  %176 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %177 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %174, i32 %175, i32 6, i32* %176)
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = call i32 @B43_NTAB8(i32 1, i32 64)
  %180 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %181 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %178, i32 %179, i32 6, i32* %180)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = call i32 @B43_NTAB8(i32 2, i32 64)
  %184 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %185 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %182, i32 %183, i32 6, i32* %184)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = call i32 @B43_NTAB8(i32 3, i32 64)
  %188 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %189 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %186, i32 %187, i32 6, i32* %188)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = load i32, i32* @B43_NPHY_REV3_C1_INITGAIN_A, align 4
  %192 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %193 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @b43_phy_write(%struct.b43_wldev* %190, i32 %191, i32 %194)
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = load i32, i32* @B43_NPHY_REV3_C2_INITGAIN_A, align 4
  %198 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %199 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @b43_phy_write(%struct.b43_wldev* %196, i32 %197, i32 %200)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = call i32 @B43_NTAB16(i32 7, i32 262)
  %204 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %205 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %202, i32 %203, i32 2, i32* %206)
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %209 = load i32, i32* @B43_NPHY_REV3_C1_CLIP_HIGAIN_A, align 4
  %210 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %211 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @b43_phy_write(%struct.b43_wldev* %208, i32 %209, i32 %212)
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %215 = load i32, i32* @B43_NPHY_REV3_C2_CLIP_HIGAIN_A, align 4
  %216 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %217 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @b43_phy_write(%struct.b43_wldev* %214, i32 %215, i32 %218)
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %221 = load i32, i32* @B43_NPHY_REV3_C1_CLIP_MEDGAIN_A, align 4
  %222 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %223 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @b43_phy_write(%struct.b43_wldev* %220, i32 %221, i32 %224)
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %227 = load i32, i32* @B43_NPHY_REV3_C2_CLIP_MEDGAIN_A, align 4
  %228 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %229 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @b43_phy_write(%struct.b43_wldev* %226, i32 %227, i32 %230)
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* @B43_NPHY_REV3_C1_CLIP_LOGAIN_A, align 4
  %234 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %235 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @b43_phy_write(%struct.b43_wldev* %232, i32 %233, i32 %236)
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* @B43_NPHY_REV3_C2_CLIP_LOGAIN_A, align 4
  %240 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %241 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @b43_phy_write(%struct.b43_wldev* %238, i32 %239, i32 %242)
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %245 = load i32, i32* @B43_NPHY_CRSMINPOWER0, align 4
  %246 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %247 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %246, i32 0, i32 13
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @b43_phy_maskset(%struct.b43_wldev* %244, i32 %245, i32 65280, i32 %248)
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %251 = load i32, i32* @B43_NPHY_CRSMINPOWERL0, align 4
  %252 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %253 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %252, i32 0, i32 12
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @b43_phy_maskset(%struct.b43_wldev* %250, i32 %251, i32 65280, i32 %254)
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %257 = load i32, i32* @B43_NPHY_CRSMINPOWERU0, align 4
  %258 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %259 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @b43_phy_maskset(%struct.b43_wldev* %256, i32 %257, i32 65280, i32 %260)
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %263 = load i32, i32* @B43_NPHY_C1_NBCLIPTHRES, align 4
  %264 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %265 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @b43_phy_write(%struct.b43_wldev* %262, i32 %263, i32 %266)
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %269 = load i32, i32* @B43_NPHY_C2_NBCLIPTHRES, align 4
  %270 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %271 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @b43_phy_write(%struct.b43_wldev* %268, i32 %269, i32 %272)
  %274 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %275 = load i32, i32* @B43_NPHY_C1_CLIPWBTHRES, align 4
  %276 = load i32, i32* @B43_NPHY_C1_CLIPWBTHRES_CLIP2, align 4
  %277 = xor i32 %276, -1
  %278 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %279 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %278, i32 0, i32 10
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @b43_phy_maskset(%struct.b43_wldev* %274, i32 %275, i32 %277, i32 %280)
  %282 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %283 = load i32, i32* @B43_NPHY_C2_CLIPWBTHRES, align 4
  %284 = load i32, i32* @B43_NPHY_C2_CLIPWBTHRES_CLIP2, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %7, align 8
  %287 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %286, i32 0, i32 10
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @b43_phy_maskset(%struct.b43_wldev* %282, i32 %283, i32 %285, i32 %288)
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %291 = load i32, i32* @B43_NPHY_CCK_SHIFTB_REF, align 4
  %292 = call i32 @b43_phy_write(%struct.b43_wldev* %290, i32 %291, i32 32924)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local %struct.nphy_gain_ctl_workaround_entry* @b43_nphy_get_gain_ctl_workaround_ent(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #2

declare dso_local i32 @B43_NTAB8(i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
