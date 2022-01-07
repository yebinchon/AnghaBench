; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_phy_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_phy.c_igc_phy_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_phy_info, %struct.TYPE_3__ }
%struct.igc_phy_info = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.1*, i32, i32*)* }
%struct.igc_hw.0 = type opaque
%struct.igc_hw.1 = type opaque
%struct.TYPE_3__ = type { i32 }

@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@ADVERTISE_2500_FULL = common dso_local global i32 0, align 4
@I225_I_PHY_ID = common dso_local global i64 0, align 8
@STANDARD_AN_REG_MASK = common dso_local global i32 0, align 4
@MMD_DEVADDR_SHIFT = common dso_local global i32 0, align 4
@ANEG_MULTIGBT_AN_CTRL = common dso_local global i32 0, align 4
@NWAY_AR_100TX_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_100TX_HD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_10T_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_10T_HD_CAPS = common dso_local global i32 0, align 4
@CR_1000T_HD_CAPS = common dso_local global i32 0, align 4
@CR_1000T_FD_CAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"autoneg_advertised %x\0A\00", align 1
@ADVERTISE_10_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Half duplex\0A\00", align 1
@ADVERTISE_10_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Full duplex\0A\00", align 1
@ADVERTISE_100_HALF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Half duplex\0A\00", align 1
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Full duplex\0A\00", align 1
@ADVERTISE_1000_HALF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Advertise 1000mb Half duplex request denied!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Advertise 1000mb Full duplex\0A\00", align 1
@ADVERTISE_2500_HALF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Advertise 2500mb Half duplex request denied!\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Advertise 2500mb Full duplex\0A\00", align 1
@CR_2500T_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IGC_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Auto-Neg Advertising %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*)* @igc_phy_setup_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_phy_setup_autoneg(%struct.igc_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca %struct.igc_phy_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %3, align 8
  %9 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %10 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %9, i32 0, i32 0
  store %struct.igc_phy_info* %10, %struct.igc_phy_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %15 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %19 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64 (%struct.igc_hw.1*, i32, i32*)*, i64 (%struct.igc_hw.1*, i32, i32*)** %20, align 8
  %22 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %23 = bitcast %struct.igc_hw* %22 to %struct.igc_hw.1*
  %24 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %25 = call i64 %21(%struct.igc_hw.1* %23, i32 %24, i32* %7)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %2, align 8
  br label %297

30:                                               ; preds = %1
  %31 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %39 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64 (%struct.igc_hw.1*, i32, i32*)*, i64 (%struct.igc_hw.1*, i32, i32*)** %40, align 8
  %42 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %43 = bitcast %struct.igc_hw* %42 to %struct.igc_hw.1*
  %44 = load i32, i32* @PHY_1000T_CTRL, align 4
  %45 = call i64 %41(%struct.igc_hw.1* %43, i32 %44, i32* %6)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %2, align 8
  br label %297

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %53 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ADVERTISE_2500_FULL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %51
  %59 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %60 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @I225_I_PHY_ID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %67 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64 (%struct.igc_hw.1*, i32, i32*)*, i64 (%struct.igc_hw.1*, i32, i32*)** %68, align 8
  %70 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %71 = bitcast %struct.igc_hw* %70 to %struct.igc_hw.1*
  %72 = load i32, i32* @STANDARD_AN_REG_MASK, align 4
  %73 = load i32, i32* @MMD_DEVADDR_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @ANEG_MULTIGBT_AN_CTRL, align 4
  %76 = or i32 %74, %75
  %77 = call i64 %69(%struct.igc_hw.1* %71, i32 %76, i32* %5)
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %2, align 8
  br label %297

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %58, %51
  %84 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %85 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @CR_1000T_HD_CAPS, align 4
  %95 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %101 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %105 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %83
  %111 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %83
  %116 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %117 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %122, %115
  %128 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %129 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %134, %127
  %140 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %141 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %146, %139
  %152 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %153 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ADVERTISE_1000_HALF, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %151
  %161 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %162 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %170 = load i32, i32* %6, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %167, %160
  %173 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %174 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ADVERTISE_2500_HALF, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %172
  %182 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %183 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ADVERTISE_2500_FULL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %190 = load i32, i32* @CR_2500T_FD_CAPS, align 4
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %198

193:                                              ; preds = %181
  %194 = load i32, i32* @CR_2500T_FD_CAPS, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* %5, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %193, %188
  %199 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %200 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %230 [
    i32 130, label %203
    i32 129, label %210
    i32 128, label %216
    i32 131, label %224
  ]

203:                                              ; preds = %198
  %204 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %205 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %206 = or i32 %204, %205
  %207 = xor i32 %206, -1
  %208 = load i32, i32* %7, align 4
  %209 = and i32 %208, %207
  store i32 %209, i32* %7, align 4
  br label %234

210:                                              ; preds = %198
  %211 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %212 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* %7, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %7, align 4
  br label %234

216:                                              ; preds = %198
  %217 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %7, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %7, align 4
  br label %234

224:                                              ; preds = %198
  %225 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %226 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %7, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %7, align 4
  br label %234

230:                                              ; preds = %198
  %231 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %232 = load i64, i64* @IGC_ERR_CONFIG, align 8
  %233 = sub nsw i64 0, %232
  store i64 %233, i64* %2, align 8
  br label %297

234:                                              ; preds = %224, %216, %210, %203
  %235 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %236 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %237, align 8
  %239 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %240 = bitcast %struct.igc_hw* %239 to %struct.igc_hw.0*
  %241 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i64 %238(%struct.igc_hw.0* %240, i32 %241, i32 %242)
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %234
  %247 = load i64, i64* %8, align 8
  store i64 %247, i64* %2, align 8
  br label %297

248:                                              ; preds = %234
  %249 = load i32, i32* %7, align 4
  %250 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  %251 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %252 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %248
  %258 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %259 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %260, align 8
  %262 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %263 = bitcast %struct.igc_hw* %262 to %struct.igc_hw.0*
  %264 = load i32, i32* @PHY_1000T_CTRL, align 4
  %265 = load i32, i32* %6, align 4
  %266 = call i64 %261(%struct.igc_hw.0* %263, i32 %264, i32 %265)
  store i64 %266, i64* %8, align 8
  br label %267

267:                                              ; preds = %257, %248
  %268 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %269 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @ADVERTISE_2500_FULL, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %295

274:                                              ; preds = %267
  %275 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %276 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @I225_I_PHY_ID, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %274
  %282 = load %struct.igc_phy_info*, %struct.igc_phy_info** %4, align 8
  %283 = getelementptr inbounds %struct.igc_phy_info, %struct.igc_phy_info* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i64 (%struct.igc_hw.0*, i32, i32)*, i64 (%struct.igc_hw.0*, i32, i32)** %284, align 8
  %286 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %287 = bitcast %struct.igc_hw* %286 to %struct.igc_hw.0*
  %288 = load i32, i32* @STANDARD_AN_REG_MASK, align 4
  %289 = load i32, i32* @MMD_DEVADDR_SHIFT, align 4
  %290 = shl i32 %288, %289
  %291 = load i32, i32* @ANEG_MULTIGBT_AN_CTRL, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* %5, align 4
  %294 = call i64 %285(%struct.igc_hw.0* %287, i32 %292, i32 %293)
  store i64 %294, i64* %8, align 8
  br label %295

295:                                              ; preds = %281, %274, %267
  %296 = load i64, i64* %8, align 8
  store i64 %296, i64* %2, align 8
  br label %297

297:                                              ; preds = %295, %246, %230, %80, %48, %28
  %298 = load i64, i64* %2, align 8
  ret i64 %298
}

declare dso_local i32 @hw_dbg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
