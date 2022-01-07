; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_hw_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_hw_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32*, i32*)*, i32 (%struct.ixgbe_hw.4*, i64, i32)*, i32 (%struct.ixgbe_hw.5*, i64, i32, i32, i32)*, i32 (%struct.ixgbe_hw.6*, i32)*, i32 (%struct.ixgbe_hw.7*)*, i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.9*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque
%struct.ixgbe_hw.9 = type opaque
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.10*)*, i32 (%struct.ixgbe_hw.11*)* }
%struct.ixgbe_hw.10 = type opaque
%struct.ixgbe_hw.11 = type opaque

@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_CTRL_LNK_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_LINK_DISABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_UPPER_MASK = common dso_local global i32 0, align 4
@IXGBE_82599_RAR_ENTRIES = common dso_local global i64 0, align 8
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = call i64 %16(%struct.ixgbe_hw.0* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %393

24:                                               ; preds = %1
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %25)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64 (%struct.ixgbe_hw.10*)*, i64 (%struct.ixgbe_hw.10*)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.10*
  %34 = call i64 %31(%struct.ixgbe_hw.10* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %393

40:                                               ; preds = %24
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %50, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = bitcast %struct.ixgbe_hw* %52 to %struct.ixgbe_hw.1*
  %54 = call i64 %51(%struct.ixgbe_hw.1* %53)
  store i64 %54, i64* %5, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %46, %40
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* %2, align 8
  br label %393

64:                                               ; preds = %58
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32 (%struct.ixgbe_hw.11*)*, i32 (%struct.ixgbe_hw.11*)** %74, align 8
  %76 = icmp ne i32 (%struct.ixgbe_hw.11*)* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32 (%struct.ixgbe_hw.11*)*, i32 (%struct.ixgbe_hw.11*)** %81, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %84 = bitcast %struct.ixgbe_hw* %83 to %struct.ixgbe_hw.11*
  %85 = call i32 %82(%struct.ixgbe_hw.11* %84)
  br label %86

86:                                               ; preds = %77, %70, %64
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = load i32, i32* @IXGBE_AUTOC, align 4
  %89 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %87, i32 %88)
  %90 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %160, %86
  %93 = load i32, i32* @IXGBE_CTRL_LNK_RST, align 4
  store i32 %93, i32* %6, align 4
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %92
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 9
  %103 = load i32 (%struct.ixgbe_hw.9*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.9*, i32*, i32*, i32)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.9*
  %106 = call i32 %103(%struct.ixgbe_hw.9* %105, i32* %4, i32* %11, i32 0)
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %98
  br label %112

112:                                              ; preds = %111, %92
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %114 = load i32, i32* @IXGBE_CTRL, align 4
  %115 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %119 = load i32, i32* @IXGBE_CTRL, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %118, i32 %119, i32 %120)
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %123 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %122)
  %124 = call i32 @usleep_range(i32 1000, i32 1200)
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %139, %112
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 10
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %130 = load i32, i32* @IXGBE_CTRL, align 4
  %131 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %128
  br label %142

137:                                              ; preds = %128
  %138 = call i32 @udelay(i32 1)
  br label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %125

142:                                              ; preds = %136, %125
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %148, i64* %5, align 8
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %150 = call i32 @hw_dbg(%struct.ixgbe_hw* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %142
  %152 = call i32 @msleep(i32 50)
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %151
  %161 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %164 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %162
  store i32 %167, i32* %165, align 8
  br label %92

168:                                              ; preds = %151
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %170 = load i32, i32* @IXGBE_AUTOC, align 4
  %171 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %169, i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = load i32, i32* @IXGBE_AUTOC2, align 4
  %174 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %172, i32 %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %168
  %180 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %9, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %9, align 4
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %185 = load i32, i32* @IXGBE_AUTOC2, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %184, i32 %185, i32 %186)
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %189 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %188)
  br label %190

190:                                              ; preds = %179, %168
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %192 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %190
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %199 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  store i32 %197, i32* %200, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %203 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  store i32 %201, i32* %204, align 4
  %205 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %206 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  store i32 1, i32* %207, align 4
  br label %290

208:                                              ; preds = %190
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %216 = call i64 @ixgbe_mng_enabled(%struct.ixgbe_hw* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214, %208
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %218, %214
  %224 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %225 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %229 = xor i32 %228, -1
  %230 = and i32 %227, %229
  %231 = load i32, i32* %10, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %234 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  br label %236

236:                                              ; preds = %223, %218
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %239 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %237, %241
  br i1 %242, label %243, label %261

243:                                              ; preds = %236
  %244 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %245 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = load i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)** %247, align 8
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %250 = bitcast %struct.ixgbe_hw* %249 to %struct.ixgbe_hw.2*
  %251 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %252 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i64 %248(%struct.ixgbe_hw.2* %250, i32 %254, i32 0)
  store i64 %255, i64* %5, align 8
  %256 = load i64, i64* %5, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %243
  %259 = load i64, i64* %5, align 8
  store i64 %259, i64* %2, align 8
  br label %393

260:                                              ; preds = %243
  br label %261

261:                                              ; preds = %260, %236
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %264 = and i32 %262, %263
  %265 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %266 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %264, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %261
  %273 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %274 = xor i32 %273, -1
  %275 = load i32, i32* %9, align 4
  %276 = and i32 %275, %274
  store i32 %276, i32* %9, align 4
  %277 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %278 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* %9, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %9, align 4
  %285 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %286 = load i32, i32* @IXGBE_AUTOC2, align 4
  %287 = load i32, i32* %9, align 4
  %288 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %285, i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %272, %261
  br label %290

290:                                              ; preds = %289, %196
  %291 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %292 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 6
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 8
  %295 = load i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.8*, i32)** %294, align 8
  %296 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %297 = bitcast %struct.ixgbe_hw* %296 to %struct.ixgbe_hw.8*
  %298 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %299 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 10
  %301 = load i32, i32* %300, align 4
  %302 = call i32 %295(%struct.ixgbe_hw.8* %297, i32 %301)
  %303 = load i64, i64* @IXGBE_82599_RAR_ENTRIES, align 8
  %304 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %305 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 7
  store i64 %303, i64* %306, align 8
  %307 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %308 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 7
  %311 = load i32 (%struct.ixgbe_hw.7*)*, i32 (%struct.ixgbe_hw.7*)** %310, align 8
  %312 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %313 = bitcast %struct.ixgbe_hw* %312 to %struct.ixgbe_hw.7*
  %314 = call i32 %311(%struct.ixgbe_hw.7* %313)
  %315 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %316 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 6
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 6
  %319 = load i32 (%struct.ixgbe_hw.6*, i32)*, i32 (%struct.ixgbe_hw.6*, i32)** %318, align 8
  %320 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %321 = bitcast %struct.ixgbe_hw* %320 to %struct.ixgbe_hw.6*
  %322 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %323 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 8
  %326 = call i32 %319(%struct.ixgbe_hw.6* %321, i32 %325)
  %327 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %328 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 9
  %330 = load i32, i32* %329, align 8
  %331 = call i64 @is_valid_ether_addr(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %377

333:                                              ; preds = %290
  %334 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %335 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 7
  %337 = load i64, i64* %336, align 8
  %338 = sub nsw i64 %337, 1
  %339 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %340 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 8
  store i64 %338, i64* %341, align 8
  %342 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %343 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 6
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 5
  %346 = load i32 (%struct.ixgbe_hw.5*, i64, i32, i32, i32)*, i32 (%struct.ixgbe_hw.5*, i64, i32, i32, i32)** %345, align 8
  %347 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %348 = bitcast %struct.ixgbe_hw* %347 to %struct.ixgbe_hw.5*
  %349 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %350 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 8
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %354 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 9
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @IXGBE_RAH_AV, align 4
  %358 = call i32 %346(%struct.ixgbe_hw.5* %348, i64 %352, i32 %356, i32 0, i32 %357)
  %359 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %360 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 6
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 4
  %363 = load i32 (%struct.ixgbe_hw.4*, i64, i32)*, i32 (%struct.ixgbe_hw.4*, i64, i32)** %362, align 8
  %364 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %365 = bitcast %struct.ixgbe_hw* %364 to %struct.ixgbe_hw.4*
  %366 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %367 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 8
  %369 = load i64, i64* %368, align 8
  %370 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %371 = call i32 %363(%struct.ixgbe_hw.4* %365, i64 %369, i32 %370)
  %372 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %373 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 7
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %375, -1
  store i64 %376, i64* %374, align 8
  br label %377

377:                                              ; preds = %333, %290
  %378 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %379 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 6
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 3
  %382 = load i32 (%struct.ixgbe_hw.3*, i32*, i32*)*, i32 (%struct.ixgbe_hw.3*, i32*, i32*)** %381, align 8
  %383 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %384 = bitcast %struct.ixgbe_hw* %383 to %struct.ixgbe_hw.3*
  %385 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %386 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 5
  %388 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %389 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 4
  %391 = call i32 %382(%struct.ixgbe_hw.3* %384, i32* %387, i32* %390)
  %392 = load i64, i64* %5, align 8
  store i64 %392, i64* %2, align 8
  br label %393

393:                                              ; preds = %377, %258, %62, %38, %22
  %394 = load i64, i64* %2, align 8
  ret i64 %394
}

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ixgbe_mng_enabled(%struct.ixgbe_hw*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
