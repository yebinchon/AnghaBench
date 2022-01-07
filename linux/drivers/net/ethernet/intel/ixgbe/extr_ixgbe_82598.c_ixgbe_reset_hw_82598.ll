; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_reset_hw_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_reset_hw_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.5*)*, i32 (%struct.ixgbe_hw.6*)* }
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque

@IXGBE_ATLAS_PDN_LPBK = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_REG_EN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_10G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_10G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_1G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_1G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_AN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_AN_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_GHECCR = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 0, i64* %5, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %14, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = bitcast %struct.ixgbe_hw* %16 to %struct.ixgbe_hw.0*
  %18 = call i64 %15(%struct.ixgbe_hw.0* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %2, align 8
  br label %298

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %27, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = bitcast %struct.ixgbe_hw* %29 to %struct.ixgbe_hw.4*
  %31 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %32 = call i32 %28(%struct.ixgbe_hw.4* %30, i32 %31, i32* %10)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %130

37:                                               ; preds = %23
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.4*
  %45 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %46 = call i32 %42(%struct.ixgbe_hw.4* %44, i32 %45, i32* %10)
  %47 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.3*
  %58 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 %55(%struct.ixgbe_hw.3* %57, i32 %58, i32 %59)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.4*
  %68 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %69 = call i32 %65(%struct.ixgbe_hw.4* %67, i32 %68, i32* %10)
  %70 = load i32, i32* @IXGBE_ATLAS_PDN_TX_10G_QL_ALL, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.3*
  %81 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 %78(%struct.ixgbe_hw.3* %80, i32 %81, i32 %82)
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.4*
  %91 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %92 = call i32 %88(%struct.ixgbe_hw.4* %90, i32 %91, i32* %10)
  %93 = load i32, i32* @IXGBE_ATLAS_PDN_TX_1G_QL_ALL, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %100, align 8
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %103 = bitcast %struct.ixgbe_hw* %102 to %struct.ixgbe_hw.3*
  %104 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 %101(%struct.ixgbe_hw.3* %103, i32 %104, i32 %105)
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %110, align 8
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = bitcast %struct.ixgbe_hw* %112 to %struct.ixgbe_hw.4*
  %114 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %115 = call i32 %111(%struct.ixgbe_hw.4* %113, i32 %114, i32* %10)
  %116 = load i32, i32* @IXGBE_ATLAS_PDN_TX_AN_QL_ALL, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %123, align 8
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = bitcast %struct.ixgbe_hw* %125 to %struct.ixgbe_hw.3*
  %127 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 %124(%struct.ixgbe_hw.3* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %37, %23
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %130
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64 (%struct.ixgbe_hw.5*)*, i64 (%struct.ixgbe_hw.5*)** %140, align 8
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %143 = bitcast %struct.ixgbe_hw* %142 to %struct.ixgbe_hw.5*
  %144 = call i64 %141(%struct.ixgbe_hw.5* %143)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i64, i64* %5, align 8
  store i64 %149, i64* %2, align 8
  br label %298

150:                                              ; preds = %136
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %165

155:                                              ; preds = %150
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.6*)** %159, align 8
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %162 = bitcast %struct.ixgbe_hw* %161 to %struct.ixgbe_hw.6*
  %163 = call i32 %160(%struct.ixgbe_hw.6* %162)
  br label %164

164:                                              ; preds = %155, %130
  br label %165

165:                                              ; preds = %213, %164, %154
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %167 = load i32, i32* @IXGBE_CTRL, align 4
  %168 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %166, i32 %167)
  %169 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %6, align 4
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %172 = load i32, i32* @IXGBE_CTRL, align 4
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %171, i32 %172, i32 %173)
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %176 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %175)
  %177 = call i32 @usleep_range(i32 1000, i32 1200)
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %192, %165
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %179, 10
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %183 = load i32, i32* @IXGBE_CTRL, align 4
  %184 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %182, i32 %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  br label %195

190:                                              ; preds = %181
  %191 = call i32 @udelay(i32 1)
  br label %192

192:                                              ; preds = %190
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %178

195:                                              ; preds = %189, %178
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %201, i64* %4, align 8
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %203 = call i32 @hw_dbg(%struct.ixgbe_hw* %202, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %204

204:                                              ; preds = %200, %195
  %205 = call i32 @msleep(i32 50)
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %207 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %204
  %214 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %215
  store i32 %220, i32* %218, align 8
  br label %165

221:                                              ; preds = %204
  %222 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %223 = load i32, i32* @IXGBE_GHECCR, align 4
  %224 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %222, i32 %223)
  store i32 %224, i32* %7, align 4
  %225 = call i32 @BIT(i32 21)
  %226 = call i32 @BIT(i32 18)
  %227 = or i32 %225, %226
  %228 = call i32 @BIT(i32 9)
  %229 = or i32 %227, %228
  %230 = call i32 @BIT(i32 6)
  %231 = or i32 %229, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %7, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %7, align 4
  %235 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %236 = load i32, i32* @IXGBE_GHECCR, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %235, i32 %236, i32 %237)
  %239 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %240 = load i32, i32* @IXGBE_AUTOC, align 4
  %241 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %239, i32 %240)
  store i32 %241, i32* %9, align 4
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %243 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %221
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %250 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  store i32 %248, i32* %251, align 8
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %253 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  br label %271

255:                                              ; preds = %221
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %258 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %256, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %255
  %263 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %264 = load i32, i32* @IXGBE_AUTOC, align 4
  %265 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %266 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %263, i32 %264, i32 %268)
  br label %270

270:                                              ; preds = %262, %255
  br label %271

271:                                              ; preds = %270, %247
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %273 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  %276 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %275, align 8
  %277 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %278 = bitcast %struct.ixgbe_hw* %277 to %struct.ixgbe_hw.2*
  %279 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %280 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = call i32 %276(%struct.ixgbe_hw.2* %278, i32 %282)
  %284 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %285 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %287, align 8
  %289 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %290 = bitcast %struct.ixgbe_hw* %289 to %struct.ixgbe_hw.1*
  %291 = call i32 %288(%struct.ixgbe_hw.1* %290)
  %292 = load i64, i64* %5, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %271
  %295 = load i64, i64* %5, align 8
  store i64 %295, i64* %4, align 8
  br label %296

296:                                              ; preds = %294, %271
  %297 = load i64, i64* %4, align 8
  store i64 %297, i64* %2, align 8
  br label %298

298:                                              ; preds = %296, %148, %21
  %299 = load i64, i64* %2, align 8
  ret i64 %299
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
