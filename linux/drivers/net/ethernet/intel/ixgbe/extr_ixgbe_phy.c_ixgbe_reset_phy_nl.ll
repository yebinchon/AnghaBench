; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_reset_phy_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32*)* }
%struct.ixgbe_hw.2 = type opaque

@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PHY reset did not complete.\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8
@IXGBE_CONTROL_MASK_NL = common dso_local global i32 0, align 4
@IXGBE_CONTROL_SHIFT_NL = common dso_local global i32 0, align 4
@IXGBE_DATA_MASK_NL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"DELAY: %d MS\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DATA:\0A\00", align 1
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Wrote %4.4x to %4.4x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CONTROL:\0A\00", align 1
@IXGBE_CONTROL_EOL_NL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"EOL\0A\00", align 1
@IXGBE_CONTROL_SOL_NL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"SOL\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Bad control value\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Bad control type\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"eeprom read at offset %d failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_phy_nl(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = call i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %229

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.1*
  %27 = load i32, i32* @MDIO_CTRL1, align 4
  %28 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %29 = call i32 %24(%struct.ixgbe_hw.1* %26, i32 %27, i32 %28, i32* %12)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %33, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = bitcast %struct.ixgbe_hw* %35 to %struct.ixgbe_hw.0*
  %37 = load i32, i32* @MDIO_CTRL1, align 4
  %38 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %41 = or i32 %39, %40
  %42 = call i32 %34(%struct.ixgbe_hw.0* %36, i32 %37, i32 %38, i32 %41)
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %64, %19
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 100
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %50, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = bitcast %struct.ixgbe_hw* %52 to %struct.ixgbe_hw.1*
  %54 = load i32, i32* @MDIO_CTRL1, align 4
  %55 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %56 = call i32 %51(%struct.ixgbe_hw.1* %53, i32 %54, i32 %55, i32* %12)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %67

62:                                               ; preds = %46
  %63 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %43

67:                                               ; preds = %61, %43
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %75, i64* %2, align 8
  br label %229

76:                                               ; preds = %67
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = call i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %77, i32* %10, i32* %11)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i64, i64* %13, align 8
  store i64 %82, i64* %2, align 8
  br label %229

83:                                               ; preds = %76
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.2*
  %91 = load i32, i32* %11, align 4
  %92 = call i64 %88(%struct.ixgbe_hw.2* %90, i32 %91, i32* %8)
  store i64 %92, i64* %13, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %221, %83
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %222

99:                                               ; preds = %95
  %100 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %103, align 8
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = bitcast %struct.ixgbe_hw* %105 to %struct.ixgbe_hw.2*
  %107 = load i32, i32* %11, align 4
  %108 = call i64 %104(%struct.ixgbe_hw.2* %106, i32 %107, i32* %6)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %224

112:                                              ; preds = %99
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @IXGBE_CONTROL_MASK_NL, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @IXGBE_CONTROL_SHIFT_NL, align 4
  %117 = ashr i32 %115, %116
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @IXGBE_DATA_MASK_NL, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  switch i32 %121, label %217 [
    i32 128, label %122
    i32 129, label %133
    i32 130, label %193
  ]

122:                                              ; preds = %112
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %128, 1000
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 %130, 2000
  %132 = call i32 @usleep_range(i32 %129, i32 %131)
  br label %221

133:                                              ; preds = %112
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  %138 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %139 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %141, align 8
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %144 = bitcast %struct.ixgbe_hw* %143 to %struct.ixgbe_hw.2*
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = call i64 %142(%struct.ixgbe_hw.2* %144, i32 %145, i32* %4)
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %13, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %224

151:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %189, %151
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %192

156:                                              ; preds = %152
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64 (%struct.ixgbe_hw.2*, i32, i32*)*, i64 (%struct.ixgbe_hw.2*, i32, i32*)** %160, align 8
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %163 = bitcast %struct.ixgbe_hw* %162 to %struct.ixgbe_hw.2*
  %164 = load i32, i32* %11, align 4
  %165 = call i64 %161(%struct.ixgbe_hw.2* %163, i32 %164, i32* %6)
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %156
  br label %224

169:                                              ; preds = %156
  %170 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %171 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %173, align 8
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %176 = bitcast %struct.ixgbe_hw* %175 to %struct.ixgbe_hw.0*
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 %174(%struct.ixgbe_hw.0* %176, i32 %177, i32 %178, i32 %179)
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %4, align 4
  %184 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %182, i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %4, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %169
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %152

192:                                              ; preds = %152
  br label %221

193:                                              ; preds = %112
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %197 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @IXGBE_CONTROL_EOL_NL, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %203 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %216

204:                                              ; preds = %193
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @IXGBE_CONTROL_SOL_NL, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %210 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %215

211:                                              ; preds = %204
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %213 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %214 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %214, i64* %2, align 8
  br label %229

215:                                              ; preds = %208
  br label %216

216:                                              ; preds = %215, %201
  br label %221

217:                                              ; preds = %112
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %219 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %220 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %220, i64* %2, align 8
  br label %229

221:                                              ; preds = %216, %192, %122
  br label %95

222:                                              ; preds = %95
  %223 = load i64, i64* %13, align 8
  store i64 %223, i64* %2, align 8
  br label %229

224:                                              ; preds = %168, %150, %111
  %225 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @hw_err(%struct.ixgbe_hw* %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %226)
  %228 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %228, i64* %2, align 8
  br label %229

229:                                              ; preds = %224, %222, %217, %211, %81, %72, %18
  %230 = load i64, i64* %2, align 8
  ret i64 %230
}

declare dso_local i64 @ixgbe_check_reset_blocked(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
