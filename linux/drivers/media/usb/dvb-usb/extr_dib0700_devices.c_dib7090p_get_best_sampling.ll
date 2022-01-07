; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib7090p_get_best_sampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib7090p_get_best_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dibx090p_best_adc = type { i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"bandwidth = %d fdem_min =%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MIN prediv = %d : MAX prediv = %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"loopdiv=%i prediv=%i timf=%i\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dibx090p_best_adc*)* @dib7090p_get_best_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7090p_get_best_sampling(%struct.dvb_frontend* %0, %struct.dibx090p_best_adc* %1) #0 {
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
  store i32 76000, i32* %14, align 4
  store i32 69500, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %22 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %25 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %27 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
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
  %63 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  store i32 2, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %207, %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %210

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %202

76:                                               ; preds = %69
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %202

80:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %198, %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 64
  br i1 %83, label %84, label %201

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sdiv i32 %90, 4
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %197

95:                                               ; preds = %84
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %197

99:                                               ; preds = %95
  %100 = load i32, i32* %17, align 4
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 1000
  %106 = icmp sge i32 %100, %105
  br i1 %106, label %107, label %197

107:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = mul nsw i32 1000, %112
  %114 = sdiv i32 %111, %113
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %160, %107
  %116 = load i32, i32* %19, align 4
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = mul nsw i32 1000, %121
  %123 = sdiv i32 %120, %122
  %124 = add nsw i32 %123, 1
  %125 = icmp sle i32 %116, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %115
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %19, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %131 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 1000
  %135 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %136 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 2000
  %140 = sub nsw i32 %134, %139
  %141 = icmp sge i32 %129, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %126
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %19, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %147 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %149, 1000
  %151 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %152 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sdiv i32 %154, 2000
  %156 = add nsw i32 %150, %155
  %157 = icmp sle i32 %145, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  store i32 1, i32* %6, align 4
  br label %163

159:                                              ; preds = %142, %126
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %115

163:                                              ; preds = %158, %115
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %196, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %169 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %172 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = udiv i64 2396745143, %174
  %176 = mul i64 %175, 512
  %177 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %178 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = urem i64 2396745143, %180
  %182 = shl i64 %181, 9
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = udiv i64 %182, %184
  %186 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %187 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %188, %185
  store i64 %189, i64* %187, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %193 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (i8*, i32, i32, ...) @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %191, i64 %194)
  br label %201

196:                                              ; preds = %163
  br label %197

197:                                              ; preds = %196, %99, %95, %84
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %81

201:                                              ; preds = %166, %81
  br label %202

202:                                              ; preds = %201, %76, %69
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  br label %210

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %65

210:                                              ; preds = %205, %65
  %211 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %212 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %210
  %216 = load %struct.dibx090p_best_adc*, %struct.dibx090p_best_adc** %5, align 8
  %217 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %3, align 4
  br label %224

223:                                              ; preds = %215, %210
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %220
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @deb_info(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
