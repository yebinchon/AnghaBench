; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tua6100.c_tua6100_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tua6100.c_tua6100_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tua6100_priv*, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.tua6100_priv = type { i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@__const.tua6100_set_params.reg1 = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 0], align 16
@__const.tua6100_set_params.reg2 = private unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 0], align 4
@EIO = common dso_local global i32 0, align 4
@_P_VAL = common dso_local global i32 0, align 4
@_R_VAL = common dso_local global i32 0, align 4
@_ri = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tua6100_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tua6100_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.tua6100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca %struct.i2c_msg, align 8
  %13 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 2
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  %18 = load %struct.tua6100_priv*, %struct.tua6100_priv** %17, align 8
  store %struct.tua6100_priv* %18, %struct.tua6100_priv** %5, align 8
  %19 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([4 x i32]* @__const.tua6100_set_params.reg1 to i8*), i64 16, i1 false)
  %21 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([3 x i32]* @__const.tua6100_set_params.reg2 to i8*), i64 12, i1 false)
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 2, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %27 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %28 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 4, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %35 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %36 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32* %39, i32** %38, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 3, i32* %40, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %43 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %44 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 8
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 2000000
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 3, i32* %51, align 4
  br label %54

52:                                               ; preds = %1
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 7, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 1630000
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 44, i32* %60, align 4
  br label %63

61:                                               ; preds = %54
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 12, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 1525000
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, 128
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 4, i32* %74, align 4
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 1455000
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 28
  store i32 %82, i32* %80, align 4
  br label %97

83:                                               ; preds = %72
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 1630000
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, 12
  store i32 %91, i32* %89, align 4
  br label %96

92:                                               ; preds = %83
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 28
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 4
  %102 = sdiv i32 %101, 4000
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sdiv i32 %103, 32
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 9
  %107 = and i32 %106, 3
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 1
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %112, i32* %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 %114, 7
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %117, 32
  %119 = mul nsw i32 %118, 4000
  %120 = sdiv i32 %119, 4
  %121 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %122 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = mul nsw i32 %124, 32
  %126 = sub nsw i32 %123, %125
  %127 = and i32 %126, 127
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %132 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %133, align 8
  %135 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %97
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %138 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %139, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %142 = bitcast %struct.dvb_frontend* %141 to %struct.dvb_frontend.0*
  %143 = call i32 %140(%struct.dvb_frontend.0* %142, i32 1)
  br label %144

144:                                              ; preds = %136, %97
  %145 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %146 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @i2c_transfer(i32 %147, %struct.i2c_msg* %11, i32 1)
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %214

153:                                              ; preds = %144
  %154 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %155 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %156, align 8
  %158 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %161 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %162, align 8
  %164 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %165 = bitcast %struct.dvb_frontend* %164 to %struct.dvb_frontend.0*
  %166 = call i32 %163(%struct.dvb_frontend.0* %165, i32 1)
  br label %167

167:                                              ; preds = %159, %153
  %168 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %169 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @i2c_transfer(i32 %170, %struct.i2c_msg* %13, i32 1)
  %172 = icmp ne i32 %171, 1
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %214

176:                                              ; preds = %167
  %177 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %178 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %179, align 8
  %181 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %184 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %185, align 8
  %187 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %188 = bitcast %struct.dvb_frontend* %187 to %struct.dvb_frontend.0*
  %189 = call i32 %186(%struct.dvb_frontend.0* %188, i32 1)
  br label %190

190:                                              ; preds = %182, %176
  %191 = load %struct.tua6100_priv*, %struct.tua6100_priv** %5, align 8
  %192 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @i2c_transfer(i32 %193, %struct.i2c_msg* %12, i32 1)
  %195 = icmp ne i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32, i32* @EIO, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %214

199:                                              ; preds = %190
  %200 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %201 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %202, align 8
  %204 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %199
  %206 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %207 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %208, align 8
  %210 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %211 = bitcast %struct.dvb_frontend* %210 to %struct.dvb_frontend.0*
  %212 = call i32 %209(%struct.dvb_frontend.0* %211, i32 0)
  br label %213

213:                                              ; preds = %205, %199
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %213, %196, %173, %150
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
