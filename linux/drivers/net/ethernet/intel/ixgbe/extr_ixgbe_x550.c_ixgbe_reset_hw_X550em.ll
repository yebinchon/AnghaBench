; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_hw_X550em.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_hw_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.4*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.6*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.7*)*, i32 (%struct.ixgbe_hw.8*)* }
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque

@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@ixgbe_phy_x550em_ext_t = common dso_local global i64 0, align 8
@IXGBE_CTRL_LNK_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"semaphore failed with %d\00", align 1
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_SFP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_X550em to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = call i64 %18(%struct.ixgbe_hw.0* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %246

26:                                               ; preds = %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %27)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64 (%struct.ixgbe_hw.7*)*, i64 (%struct.ixgbe_hw.7*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.7*
  %36 = call i64 %33(%struct.ixgbe_hw.7* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %26
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %2, align 8
  br label %246

46:                                               ; preds = %40
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ixgbe_phy_x550em_ext_t, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = call i64 @ixgbe_init_ext_t_x550em(%struct.ixgbe_hw* %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %2, align 8
  br label %246

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %71, align 8
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = bitcast %struct.ixgbe_hw* %73 to %struct.ixgbe_hw.1*
  %75 = call i64 %72(%struct.ixgbe_hw.1* %74)
  store i64 %75, i64* %5, align 8
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %67, %61
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* %5, align 8
  store i64 %84, i64* %2, align 8
  br label %246

85:                                               ; preds = %79
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %85
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32 (%struct.ixgbe_hw.8*)*, i32 (%struct.ixgbe_hw.8*)** %95, align 8
  %97 = icmp ne i32 (%struct.ixgbe_hw.8*)* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32 (%struct.ixgbe_hw.8*)*, i32 (%struct.ixgbe_hw.8*)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.8*
  %106 = call i32 %103(%struct.ixgbe_hw.8* %105)
  br label %107

107:                                              ; preds = %98, %91, %85
  br label %108

108:                                              ; preds = %202, %107
  %109 = load i32, i32* @IXGBE_CTRL_LNK_RST, align 4
  store i32 %109, i32* %6, align 4
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %108
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 6
  %119 = load i32 (%struct.ixgbe_hw.6*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.6*, i32*, i32*, i32)** %118, align 8
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %121 = bitcast %struct.ixgbe_hw* %120 to %struct.ixgbe_hw.6*
  %122 = call i32 %119(%struct.ixgbe_hw.6* %121, i32* %4, i32* %8, i32 0)
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %114
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i64 (%struct.ixgbe_hw.2*, i32)*, i64 (%struct.ixgbe_hw.2*, i32)** %132, align 8
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = bitcast %struct.ixgbe_hw* %134 to %struct.ixgbe_hw.2*
  %136 = load i32, i32* %9, align 4
  %137 = call i64 %133(%struct.ixgbe_hw.2* %135, i32 %136)
  store i64 %137, i64* %5, align 8
  %138 = load i64, i64* %5, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %128
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %142 = load i64, i64* %5, align 8
  %143 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %142)
  %144 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %144, i64* %2, align 8
  br label %246

145:                                              ; preds = %128
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %147 = load i32, i32* @IXGBE_CTRL, align 4
  %148 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %146, i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %152 = load i32, i32* @IXGBE_CTRL, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %151, i32 %152, i32 %153)
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %156 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %155)
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)** %160, align 8
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %163 = bitcast %struct.ixgbe_hw* %162 to %struct.ixgbe_hw.5*
  %164 = load i32, i32* %9, align 4
  %165 = call i32 %161(%struct.ixgbe_hw.5* %163, i32 %164)
  %166 = call i32 @usleep_range(i32 1000, i32 1200)
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %181, %145
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %168, 10
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %172 = load i32, i32* @IXGBE_CTRL, align 4
  %173 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %171, i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %170
  br label %184

179:                                              ; preds = %170
  %180 = call i32 @udelay(i32 1)
  br label %181

181:                                              ; preds = %179
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %167

184:                                              ; preds = %178, %167
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %190, i64* %5, align 8
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %192 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %193

193:                                              ; preds = %189, %184
  %194 = call i32 @msleep(i32 50)
  %195 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %196 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %193
  %203 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %206 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %204
  store i32 %209, i32* %207, align 8
  br label %108

210:                                              ; preds = %193
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %212 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i32 (%struct.ixgbe_hw.4*, i32)*, i32 (%struct.ixgbe_hw.4*, i32)** %214, align 8
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %217 = bitcast %struct.ixgbe_hw* %216 to %struct.ixgbe_hw.4*
  %218 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %219 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 %215(%struct.ixgbe_hw.4* %217, i32 %221)
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %224 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  store i32 128, i32* %225, align 4
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %227 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 3
  %230 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %229, align 8
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %232 = bitcast %struct.ixgbe_hw* %231 to %struct.ixgbe_hw.3*
  %233 = call i32 %230(%struct.ixgbe_hw.3* %232)
  %234 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %235 = call i32 @ixgbe_set_mdio_speed(%struct.ixgbe_hw* %234)
  %236 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %237 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @IXGBE_DEV_ID_X550EM_X_SFP, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %210
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %243 = call i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw* %242)
  br label %244

244:                                              ; preds = %241, %210
  %245 = load i64, i64* %5, align 8
  store i64 %245, i64* %2, align 8
  br label %246

246:                                              ; preds = %244, %140, %83, %58, %44, %24
  %247 = load i64, i64* %2, align 8
  ret i64 %247
}

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_init_ext_t_x550em(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ixgbe_set_mdio_speed(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
