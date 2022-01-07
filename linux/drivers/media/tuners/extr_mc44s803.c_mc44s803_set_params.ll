; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mc44s803.c_mc44s803_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mc44s803.c_mc44s803_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.dtv_frontend_properties, %struct.mc44s803_priv* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dtv_frontend_properties = type { i32 }
%struct.mc44s803_priv = type { i32 }

@MC44S803_OSC = common dso_local global i32 0, align 4
@MC44S803_IF1 = common dso_local global i32 0, align 4
@MC44S803_IF2 = common dso_local global i32 0, align 4
@MC44S803_REG_REFDIV = common dso_local global i32 0, align 4
@MC44S803_ADDR = common dso_local global i32 0, align 4
@MC44S803_R1 = common dso_local global i32 0, align 4
@MC44S803_R2 = common dso_local global i32 0, align 4
@MC44S803_REFBUF_EN = common dso_local global i32 0, align 4
@MC44S803_REG_LO1 = common dso_local global i32 0, align 4
@MC44S803_LO1 = common dso_local global i32 0, align 4
@MC44S803_REG_LO2 = common dso_local global i32 0, align 4
@MC44S803_LO2 = common dso_local global i32 0, align 4
@MC44S803_REG_DIGTUNE = common dso_local global i32 0, align 4
@MC44S803_DA = common dso_local global i32 0, align 4
@MC44S803_LO_REF = common dso_local global i32 0, align 4
@MC44S803_AT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"I/O Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mc44s803_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc44s803_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mc44s803_priv*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 2
  %17 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %16, align 8
  store %struct.mc44s803_priv* %17, %struct.mc44s803_priv** %4, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1
  store %struct.dtv_frontend_properties* %19, %struct.dtv_frontend_properties** %5, align 8
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @MC44S803_OSC, align 4
  %26 = sdiv i32 %25, 1000000
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @MC44S803_OSC, align 4
  %28 = sdiv i32 %27, 100000
  store i32 %28, i32* %7, align 4
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MC44S803_IF1, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 500000
  %35 = sdiv i32 %34, 1000000
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @MC44S803_OSC, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 60, %41
  %43 = load i32, i32* %6, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MC44S803_IF2, align 4
  %55 = sub nsw i32 %53, %54
  %56 = add nsw i32 %55, 50000
  %57 = sdiv i32 %56, 100000
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 60, %58
  %60 = load i32, i32* %7, align 4
  %61 = sdiv i32 %60, 2
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* %7, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %1
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %73, align 8
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %76 = bitcast %struct.dvb_frontend* %75 to %struct.dvb_frontend.0*
  %77 = call i32 %74(%struct.dvb_frontend.0* %76, i32 1)
  br label %78

78:                                               ; preds = %70, %1
  %79 = load i32, i32* @MC44S803_REG_REFDIV, align 4
  %80 = load i32, i32* @MC44S803_ADDR, align 4
  %81 = call i32 @MC44S803_REG_SM(i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @MC44S803_R1, align 4
  %85 = call i32 @MC44S803_REG_SM(i32 %83, i32 %84)
  %86 = or i32 %81, %85
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @MC44S803_R2, align 4
  %90 = call i32 @MC44S803_REG_SM(i32 %88, i32 %89)
  %91 = or i32 %86, %90
  %92 = load i32, i32* @MC44S803_REFBUF_EN, align 4
  %93 = call i32 @MC44S803_REG_SM(i32 1, i32 %92)
  %94 = or i32 %91, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %78
  br label %186

101:                                              ; preds = %78
  %102 = load i32, i32* @MC44S803_REG_LO1, align 4
  %103 = load i32, i32* @MC44S803_ADDR, align 4
  %104 = call i32 @MC44S803_REG_SM(i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 2
  %107 = load i32, i32* @MC44S803_LO1, align 4
  %108 = call i32 @MC44S803_REG_SM(i32 %106, i32 %107)
  %109 = or i32 %104, %108
  store i32 %109, i32* %13, align 4
  %110 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %110, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %186

116:                                              ; preds = %101
  %117 = load i32, i32* @MC44S803_REG_LO2, align 4
  %118 = load i32, i32* @MC44S803_ADDR, align 4
  %119 = call i32 @MC44S803_REG_SM(i32 %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, 2
  %122 = load i32, i32* @MC44S803_LO2, align 4
  %123 = call i32 @MC44S803_REG_SM(i32 %121, i32 %122)
  %124 = or i32 %119, %123
  store i32 %124, i32* %13, align 4
  %125 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %125, i32 %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %186

131:                                              ; preds = %116
  %132 = load i32, i32* @MC44S803_REG_DIGTUNE, align 4
  %133 = load i32, i32* @MC44S803_ADDR, align 4
  %134 = call i32 @MC44S803_REG_SM(i32 %132, i32 %133)
  %135 = load i32, i32* @MC44S803_DA, align 4
  %136 = call i32 @MC44S803_REG_SM(i32 1, i32 %135)
  %137 = or i32 %134, %136
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @MC44S803_LO_REF, align 4
  %140 = call i32 @MC44S803_REG_SM(i32 %138, i32 %139)
  %141 = or i32 %137, %140
  %142 = load i32, i32* @MC44S803_AT, align 4
  %143 = call i32 @MC44S803_REG_SM(i32 1, i32 %142)
  %144 = or i32 %141, %143
  store i32 %144, i32* %13, align 4
  %145 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %145, i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %131
  br label %186

151:                                              ; preds = %131
  %152 = load i32, i32* @MC44S803_REG_DIGTUNE, align 4
  %153 = load i32, i32* @MC44S803_ADDR, align 4
  %154 = call i32 @MC44S803_REG_SM(i32 %152, i32 %153)
  %155 = load i32, i32* @MC44S803_DA, align 4
  %156 = call i32 @MC44S803_REG_SM(i32 2, i32 %155)
  %157 = or i32 %154, %156
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @MC44S803_LO_REF, align 4
  %160 = call i32 @MC44S803_REG_SM(i32 %158, i32 %159)
  %161 = or i32 %157, %160
  %162 = load i32, i32* @MC44S803_AT, align 4
  %163 = call i32 @MC44S803_REG_SM(i32 1, i32 %162)
  %164 = or i32 %161, %163
  store i32 %164, i32* %13, align 4
  %165 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %165, i32 %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %151
  br label %186

171:                                              ; preds = %151
  %172 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %173 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %174, align 8
  %176 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %179 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %180, align 8
  %182 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %183 = bitcast %struct.dvb_frontend* %182 to %struct.dvb_frontend.0*
  %184 = call i32 %181(%struct.dvb_frontend.0* %183, i32 0)
  br label %185

185:                                              ; preds = %177, %171
  store i32 0, i32* %2, align 4
  br label %204

186:                                              ; preds = %170, %150, %130, %115, %100
  %187 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %188 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %189, align 8
  %191 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %186
  %193 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %194 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %195, align 8
  %197 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %198 = bitcast %struct.dvb_frontend* %197 to %struct.dvb_frontend.0*
  %199 = call i32 %196(%struct.dvb_frontend.0* %198, i32 0)
  br label %200

200:                                              ; preds = %192, %186
  %201 = load i32, i32* @KERN_WARNING, align 4
  %202 = call i32 @mc_printk(i32 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %185
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @MC44S803_REG_SM(i32, i32) #1

declare dso_local i32 @mc44s803_writereg(%struct.mc44s803_priv*, i32) #1

declare dso_local i32 @mc_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
