; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_clock_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_set_clock_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32, %struct.vfe_line*, %struct.camss_clock*, %struct.TYPE_4__* }
%struct.vfe_line = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.camss_clock = type { i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@MSM_VFE_LINE_NUM = common dso_local global i32 0, align 4
@VFE_LINE_RDI0 = common dso_local global i32 0, align 4
@VFE_LINE_PIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vfe0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vfe1\00", align 1
@MSM_VFE_PAD_SINK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Pixel clock is too high for VFE\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"clk round rate failed: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"clk set rate failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_device*)* @vfe_set_clock_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_set_clock_rates(%struct.vfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.camss_clock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vfe_line*, align 8
  %16 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  %17 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %18 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %4, align 8
  %22 = load i32, i32* @MSM_VFE_LINE_NUM, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %5, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %26 = load i32, i32* @VFE_LINE_RDI0, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %51, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VFE_LINE_PIX, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %33 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %32, i32 0, i32 1
  %34 = load %struct.vfe_line*, %struct.vfe_line** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %34, i64 %36
  %38 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %25, i64 %41
  %43 = call i32 @camss_get_pixel_clock(i32* %39, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %25, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %27

54:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %209, %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %58 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %212

61:                                               ; preds = %55
  %62 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %63 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %62, i32 0, i32 2
  %64 = load %struct.camss_clock*, %struct.camss_clock** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %64, i64 %66
  store %struct.camss_clock* %67, %struct.camss_clock** %10, align 8
  %68 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %69 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strcmp(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %75 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcmp(i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %208, label %79

79:                                               ; preds = %73, %61
  store i32 0, i32* %11, align 4
  %80 = load i32, i32* @VFE_LINE_RDI0, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %129, %79
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @VFE_LINE_PIX, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @VFE_LINE_PIX, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %25, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  br label %122

94:                                               ; preds = %85
  %95 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %96 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %95, i32 0, i32 1
  %97 = load %struct.vfe_line*, %struct.vfe_line** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %97, i64 %99
  store %struct.vfe_line* %100, %struct.vfe_line** %15, align 8
  %101 = load %struct.vfe_line*, %struct.vfe_line** %15, align 8
  %102 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vfe_line*, %struct.vfe_line** %15, align 8
  %105 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.vfe_line*, %struct.vfe_line** %15, align 8
  %108 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i64, i64* @MSM_VFE_PAD_SINK, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @vfe_get_bpp(i32 %103, i32 %106, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %25, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %14, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sdiv i32 %120, 64
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %94, %89
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %81

132:                                              ; preds = %81
  %133 = call i32 @camss_add_clock_margin(i32* %11)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %152, %132
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %137 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %143 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %141, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %155

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %134

155:                                              ; preds = %150, %134
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %158 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %156, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %213

166:                                              ; preds = %155
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %171 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %169, %166
  %175 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %176 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %179 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @clk_round_rate(i32 %177, i32 %184)
  store i64 %185, i64* %12, align 8
  %186 = load i64, i64* %12, align 8
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %174
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load i64, i64* %12, align 8
  %191 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %190)
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %213

194:                                              ; preds = %174
  %195 = load %struct.camss_clock*, %struct.camss_clock** %10, align 8
  %196 = getelementptr inbounds %struct.camss_clock, %struct.camss_clock* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @clk_set_rate(i32 %197, i64 %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %194
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %213

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %73
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %55

212:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %213

213:                                              ; preds = %212, %202, %188, %161
  %214 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @camss_get_pixel_clock(i32*, i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @vfe_get_bpp(i32, i32, i32) #2

declare dso_local i32 @camss_add_clock_margin(i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i64 @clk_round_rate(i32, i32) #2

declare dso_local i32 @clk_set_rate(i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
