; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_fc_enable_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_fc_enable_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i64*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid water mark configuration\0A\00", align 1
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i64 0, align 8
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i64 0, align 8
@IXGBE_FCTRL_RPFCE = common dso_local global i64 0, align 8
@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_PRIORITY = common dso_local global i64 0, align 8
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_FCTRL_DPF = common dso_local global i64 0, align 8
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_fc_enable_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fc_enable_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %18, i32* %2, align 4
  br label %275

19:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %75, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %31
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %41
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %59, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %51, %41
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = call i32 @hw_dbg(%struct.ixgbe_hw* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %72, i32* %2, align 4
  br label %275

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73, %31, %24
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %20

78:                                               ; preds = %20
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32 (%struct.ixgbe_hw.1*, i64*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i64*, i32*, i32)** %82, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = bitcast %struct.ixgbe_hw* %84 to %struct.ixgbe_hw.1*
  %86 = call i32 %83(%struct.ixgbe_hw.1* %85, i64* %9, i32* %11, i32 0)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %78
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @IXGBE_LINK_SPEED_1GB_FULL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %106 [
    i32 131, label %98
    i32 129, label %102
  ]

98:                                               ; preds = %93
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  store i32 128, i32* %101, align 8
  br label %107

102:                                              ; preds = %93
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  store i32 130, i32* %105, align 8
  br label %107

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %102, %98
  br label %108

108:                                              ; preds = %107, %89, %78
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %112, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = bitcast %struct.ixgbe_hw* %114 to %struct.ixgbe_hw.0*
  %116 = call i32 %113(%struct.ixgbe_hw.0* %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = load i32, i32* @IXGBE_FCTRL, align 4
  %119 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %117, i32 %118)
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %121 = load i64, i64* @IXGBE_FCTRL_RPFCE, align 8
  %122 = or i64 %120, %121
  %123 = xor i64 %122, -1
  %124 = load i64, i64* %4, align 8
  %125 = and i64 %124, %123
  store i64 %125, i64* %4, align 8
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = load i32, i32* @IXGBE_RMCS, align 4
  %128 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %126, i32 %127)
  store i64 %128, i64* %5, align 8
  %129 = load i64, i64* @IXGBE_RMCS_TFCE_PRIORITY, align 8
  %130 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %131 = or i64 %129, %130
  %132 = xor i64 %131, -1
  %133 = load i64, i64* %5, align 8
  %134 = and i64 %133, %132
  store i64 %134, i64* %5, align 8
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  switch i32 %138, label %155 [
    i32 130, label %139
    i32 129, label %140
    i32 128, label %144
    i32 131, label %148
  ]

139:                                              ; preds = %108
  br label %159

140:                                              ; preds = %108
  %141 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %142 = load i64, i64* %4, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %4, align 8
  br label %159

144:                                              ; preds = %108
  %145 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %146 = load i64, i64* %5, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %5, align 8
  br label %159

148:                                              ; preds = %108
  %149 = load i64, i64* @IXGBE_FCTRL_RFCE, align 8
  %150 = load i64, i64* %4, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %4, align 8
  %152 = load i64, i64* @IXGBE_RMCS_TFCE_802_3X, align 8
  %153 = load i64, i64* %5, align 8
  %154 = or i64 %153, %152
  store i64 %154, i64* %5, align 8
  br label %159

155:                                              ; preds = %108
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %157 = call i32 @hw_dbg(%struct.ixgbe_hw* %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %158, i32* %2, align 4
  br label %275

159:                                              ; preds = %148, %144, %140, %139
  %160 = load i64, i64* @IXGBE_FCTRL_DPF, align 8
  %161 = load i64, i64* %4, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %4, align 8
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %164 = load i32, i32* @IXGBE_FCTRL, align 4
  %165 = load i64, i64* %4, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %163, i32 %164, i32 %166)
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %169 = load i32, i32* @IXGBE_RMCS, align 4
  %170 = load i64, i64* %5, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %168, i32 %169, i32 %171)
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %241, %159
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %244

177:                                              ; preds = %173
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 128
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %231

184:                                              ; preds = %177
  %185 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %186 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %231

194:                                              ; preds = %184
  %195 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %196 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 10
  %204 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %205 = or i32 %203, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %7, align 8
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %208 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 10
  %216 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %217 = or i32 %215, %216
  %218 = sext i32 %217 to i64
  store i64 %218, i64* %8, align 8
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @IXGBE_FCRTL(i32 %220)
  %222 = load i64, i64* %7, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %219, i32 %221, i32 %223)
  %225 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @IXGBE_FCRTH(i32 %226)
  %228 = load i64, i64* %8, align 8
  %229 = trunc i64 %228 to i32
  %230 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %225, i32 %227, i32 %229)
  br label %240

231:                                              ; preds = %184, %177
  %232 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @IXGBE_FCRTL(i32 %233)
  %235 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %232, i32 %234, i32 0)
  %236 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @IXGBE_FCRTH(i32 %237)
  %239 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %236, i32 %238, i32 0)
  br label %240

240:                                              ; preds = %231, %194
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %173

244:                                              ; preds = %173
  %245 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %246 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %248, 65537
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %251

251:                                              ; preds = %263, %244
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %254 = sdiv i32 %253, 2
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %251
  %257 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @IXGBE_FCTTV(i32 %258)
  %260 = load i64, i64* %6, align 8
  %261 = trunc i64 %260 to i32
  %262 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %257, i32 %259, i32 %261)
  br label %263

263:                                              ; preds = %256
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %251

266:                                              ; preds = %251
  %267 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %268 = load i32, i32* @IXGBE_FCRTV, align 4
  %269 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %270 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sdiv i32 %272, 2
  %274 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %267, i32 %268, i32 %273)
  store i32 0, i32* %2, align 4
  br label %275

275:                                              ; preds = %266, %155, %69, %17
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FCRTL(i32) #1

declare dso_local i32 @IXGBE_FCRTH(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
