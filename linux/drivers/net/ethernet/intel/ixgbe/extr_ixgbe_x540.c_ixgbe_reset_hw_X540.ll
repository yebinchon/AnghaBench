; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_reset_hw_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x540.c_ixgbe_reset_hw_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*)*, i32 (%struct.ixgbe_hw.1*, i64, i32)*, i32 (%struct.ixgbe_hw.2*, i64, i32, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.4*)*, i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.6*, i32)*, i64 (%struct.ixgbe_hw.7*, i32)*, i64 (%struct.ixgbe_hw.8*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"semaphore failed with %d\00", align 1
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_RXPBSIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_X540_MAX_TX_QUEUES = common dso_local global i64 0, align 8
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_hw_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 8
  %16 = load i64 (%struct.ixgbe_hw.8*)*, i64 (%struct.ixgbe_hw.8*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.8*
  %19 = call i64 %16(%struct.ixgbe_hw.8* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %218

24:                                               ; preds = %1
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %25)
  br label %27

27:                                               ; preds = %102, %24
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 7
  %32 = load i64 (%struct.ixgbe_hw.7*, i32)*, i64 (%struct.ixgbe_hw.7*, i32)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.7*
  %35 = load i32, i32* %7, align 4
  %36 = call i64 %32(%struct.ixgbe_hw.7* %34, i32 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %43, i64* %2, align 8
  br label %218

44:                                               ; preds = %27
  %45 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = load i32, i32* @IXGBE_CTRL, align 4
  %48 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = load i32, i32* @IXGBE_CTRL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i32 %52, i32 %53)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %55)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  %61 = load i32 (%struct.ixgbe_hw.6*, i32)*, i32 (%struct.ixgbe_hw.6*, i32)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.6*
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %61(%struct.ixgbe_hw.6* %63, i32 %64)
  %66 = call i32 @usleep_range(i32 1000, i32 1200)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %81, %44
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = load i32, i32* @IXGBE_CTRL, align 4
  %73 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %84

79:                                               ; preds = %70
  %80 = call i32 @udelay(i32 1)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %67

84:                                               ; preds = %78, %67
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %90, i64* %4, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %92 = call i32 (%struct.ixgbe_hw*, i8*, ...) @hw_dbg(%struct.ixgbe_hw* %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %84
  %94 = call i32 @msleep(i32 100)
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %104
  store i32 %109, i32* %107, align 8
  br label %27

110:                                              ; preds = %93
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = call i32 @IXGBE_RXPBSIZE(i32 0)
  %113 = load i32, i32* @IXGBE_RXPBSIZE_SHIFT, align 4
  %114 = shl i32 384, %113
  %115 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %111, i32 %112, i32 %114)
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %117 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  %120 = load i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)** %119, align 8
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = bitcast %struct.ixgbe_hw* %121 to %struct.ixgbe_hw.5*
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %124 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %120(%struct.ixgbe_hw.5* %122, i32 %126)
  %128 = load i64, i64* @IXGBE_X540_MAX_TX_QUEUES, align 8
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  store i64 %128, i64* %131, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  %136 = load i32 (%struct.ixgbe_hw.4*)*, i32 (%struct.ixgbe_hw.4*)** %135, align 8
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = bitcast %struct.ixgbe_hw* %137 to %struct.ixgbe_hw.4*
  %139 = call i32 %136(%struct.ixgbe_hw.4* %138)
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.3*
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %148 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i32 %144(%struct.ixgbe_hw.3* %146, i32 %150)
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @is_valid_ether_addr(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %202

158:                                              ; preds = %110
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %162, 1
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  store i64 %163, i64* %166, align 8
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32 (%struct.ixgbe_hw.2*, i64, i32, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i64, i32, i32, i32)** %170, align 8
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = bitcast %struct.ixgbe_hw* %172 to %struct.ixgbe_hw.2*
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %175 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IXGBE_RAH_AV, align 4
  %183 = call i32 %171(%struct.ixgbe_hw.2* %173, i64 %177, i32 %181, i32 0, i32 %182)
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %185 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32 (%struct.ixgbe_hw.1*, i64, i32)*, i32 (%struct.ixgbe_hw.1*, i64, i32)** %187, align 8
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %190 = bitcast %struct.ixgbe_hw* %189 to %struct.ixgbe_hw.1*
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %192 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %196 = call i32 %188(%struct.ixgbe_hw.1* %190, i64 %194, i32 %195)
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %198 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, -1
  store i64 %201, i64* %199, align 8
  br label %202

202:                                              ; preds = %158, %110
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %204 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*)** %206, align 8
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %209 = bitcast %struct.ixgbe_hw* %208 to %struct.ixgbe_hw.0*
  %210 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %211 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %214 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = call i32 %207(%struct.ixgbe_hw.0* %209, i32* %212, i32* %215)
  %217 = load i64, i64* %4, align 8
  store i64 %217, i64* %2, align 8
  br label %218

218:                                              ; preds = %202, %39, %22
  %219 = load i64, i64* %2, align 8
  ret i64 %219
}

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, ...) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
