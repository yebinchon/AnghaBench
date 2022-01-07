; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib8096p_get_best_sampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib8096p_get_best_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dibx090p_best_adc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"bandwidth = %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MIN prediv = %d : MAX prediv = %d\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"RF %6d; BW %6d; Xtal %6d; Fmem %6d; Fdem %6d; Fs %6d; Prediv %2d; Loopdiv %2d; Timf %8d;\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dibx090p_best_adc*)* @dib8096p_get_best_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096p_get_best_sampling(%struct.dvb_frontend* %0, %struct.dibx090p_best_adc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dibx090p_best_adc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dibx090p_best_adc* %1, %struct.dibx090p_best_adc** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 12000, i32* %11, align 4
  store i32 1900, i32* %12, align 4
  store i32 20000, i32* %13, align 4
  store i32 140000, i32* %14, align 4
  store i32 66000, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %22 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %25 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %28 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @deb_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %40, %2
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sdiv i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %34

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %59, %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %47

60:                                               ; preds = %58, %47
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i8*, i32, ...) @deb_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  store i32 1, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %218, %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %221

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %213

76:                                               ; preds = %69
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %213

80:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %209, %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 64
  br i1 %83, label %84, label %212

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = sdiv i32 %92, 4
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %208

97:                                               ; preds = %84
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %208

101:                                              ; preds = %97
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %104 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 1000
  %108 = icmp sge i32 %102, %107
  br i1 %108, label %109, label %208

109:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %17, align 4
  %115 = mul nsw i32 1000, %114
  %116 = sdiv i32 %113, %115
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %162, %109
  %118 = load i32, i32* %20, align 4
  %119 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %120 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %17, align 4
  %124 = mul nsw i32 1000, %123
  %125 = sdiv i32 %122, %124
  %126 = add nsw i32 %125, 1
  %127 = icmp sle i32 %118, %126
  br i1 %127, label %128, label %165

128:                                              ; preds = %117
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %20, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 1000
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 2000
  %142 = sub nsw i32 %136, %141
  %143 = icmp sge i32 %131, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %128
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %20, align 4
  %147 = mul nsw i32 %145, %146
  %148 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %149 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %151, 1000
  %153 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %154 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 2000
  %158 = add nsw i32 %152, %157
  %159 = icmp sle i32 %147, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  store i32 1, i32* %6, align 4
  br label %165

161:                                              ; preds = %144, %128
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  br label %117

165:                                              ; preds = %160, %117
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %207, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %171 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %174 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %18, align 4
  %176 = udiv i32 -34087043, %175
  %177 = mul i32 %176, 256
  %178 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %179 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %18, align 4
  %181 = urem i32 -34087043, %180
  %182 = shl i32 %181, 8
  %183 = load i32, i32* %18, align 4
  %184 = udiv i32 %182, %183
  %185 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %186 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %190 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %194 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %204 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, i32, ...) @deb_info(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %205)
  br label %212

207:                                              ; preds = %165
  br label %208

208:                                              ; preds = %207, %101, %97, %84
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %81

212:                                              ; preds = %168, %81
  br label %213

213:                                              ; preds = %212, %76, %69
  %214 = load i32, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  br label %221

217:                                              ; preds = %213
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %65

221:                                              ; preds = %216, %65
  %222 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %223 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %228 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %235

234:                                              ; preds = %226, %221
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %234, %231
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @deb_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
