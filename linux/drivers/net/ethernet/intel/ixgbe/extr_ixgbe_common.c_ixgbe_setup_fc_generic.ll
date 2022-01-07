; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_setup_fc_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_setup_fc_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.3*, i32*, i32*)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8
@ixgbe_fc_default = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_TAF_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_TAF_ASM_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_PCS1GLCTL = common dso_local global i32 0, align 4
@IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Set up FC; PCS1GLCTL = 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Set up FC; IXGBE_AUTOC = 0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_fc_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 132
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %23, i64* %2, align 8
  br label %264

24:                                               ; preds = %14, %1
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ixgbe_fc_default, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 134, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %69 [
    i32 130, label %40
    i32 128, label %54
    i32 129, label %58
  ]

40:                                               ; preds = %35
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64 (%struct.ixgbe_hw.3*, i32*, i32*)*, i64 (%struct.ixgbe_hw.3*, i32*, i32*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.3*
  %48 = call i64 %45(%struct.ixgbe_hw.3* %47, i32* %8, i32* %6)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %2, align 8
  br label %264

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %35, %53
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %57 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %70

58:                                               ; preds = %35
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.1*
  %66 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %67 = load i32, i32* @MDIO_MMD_AN, align 4
  %68 = call i32 %63(%struct.ixgbe_hw.1* %65, i32 %66, i32 %67, i32* %7)
  br label %70

69:                                               ; preds = %35
  br label %70

70:                                               ; preds = %69, %58, %54
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %177 [
    i32 133, label %75
    i32 131, label %109
    i32 132, label %146
    i32 134, label %146
  ]

75:                                               ; preds = %70
  %76 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %77 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %94

87:                                               ; preds = %75
  %88 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %89 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %108

94:                                               ; preds = %75
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %102 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %100, %94
  br label %108

108:                                              ; preds = %107, %87
  br label %181

109:                                              ; preds = %70
  %110 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 130
  br i1 %121, label %122, label %130

122:                                              ; preds = %109
  %123 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %145

130:                                              ; preds = %109
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 129
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %136, %130
  br label %145

145:                                              ; preds = %144, %122
  br label %181

146:                                              ; preds = %70, %70
  %147 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %148 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 130
  br i1 %156, label %157, label %163

157:                                              ; preds = %146
  %158 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %159 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %176

163:                                              ; preds = %146
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 129
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %171 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %169, %163
  br label %176

176:                                              ; preds = %175, %157
  br label %181

177:                                              ; preds = %70
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %180, i64* %2, align 8
  br label %264

181:                                              ; preds = %176, %145, %108
  %182 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %183 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ixgbe_mac_X540, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %181
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %190 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %189, i32 %190, i32 %191)
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %194 = load i32, i32* @IXGBE_PCS1GLCTL, align 4
  %195 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %193, i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %197 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %188
  %202 = load i32, i32* @IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %5, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %201, %188
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %208 = load i32, i32* @IXGBE_PCS1GLCTL, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %207, i32 %208, i32 %209)
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %211, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %206, %181
  %215 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %216 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 130
  br i1 %219, label %220, label %236

220:                                              ; preds = %214
  %221 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %222 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)** %224, align 8
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %227 = bitcast %struct.ixgbe_hw* %226 to %struct.ixgbe_hw.2*
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %8, align 4
  %230 = call i64 %225(%struct.ixgbe_hw.2* %227, i32 %228, i32 %229)
  store i64 %230, i64* %4, align 8
  %231 = load i64, i64* %4, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %220
  %234 = load i64, i64* %4, align 8
  store i64 %234, i64* %2, align 8
  br label %264

235:                                              ; preds = %220
  br label %259

236:                                              ; preds = %214
  %237 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %238 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 129
  br i1 %241, label %242, label %258

242:                                              ; preds = %236
  %243 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %244 = call i64 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %248 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %250, align 8
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %253 = bitcast %struct.ixgbe_hw* %252 to %struct.ixgbe_hw.0*
  %254 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %255 = load i32, i32* @MDIO_MMD_AN, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 %251(%struct.ixgbe_hw.0* %253, i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %246, %242, %236
  br label %259

259:                                              ; preds = %258, %235
  %260 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %261 = load i32, i32* %5, align 4
  %262 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %260, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %261)
  %263 = load i64, i64* %4, align 8
  store i64 %263, i64* %2, align 8
  br label %264

264:                                              ; preds = %259, %233, %177, %51, %20
  %265 = load i64, i64* %2, align 8
  ret i64 %265
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
