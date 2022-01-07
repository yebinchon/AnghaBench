; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_autogain_functions.c_gspca_coarse_grained_expo_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_autogain_functions.c_gspca_coarse_grained_expo_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"autogain: lum: %d, desired: %d, steps: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"autogain: changed gain: %d, expo: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gspca_coarse_grained_expo_autogain(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
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
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %217

24:                                               ; preds = %4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %39, %44
  %46 = sdiv i32 %45, 5
  %47 = mul nsw i32 %46, 2
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %47, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %58, %63
  %65 = sdiv i32 %64, 5
  %66 = mul nsw i32 %65, 4
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %66, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %16, align 4
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %79 = load i32, i32* @D_FRAM, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %78, i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %24
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %92 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %12, align 4
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %100 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %104 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  br label %165

105:                                              ; preds = %89, %24
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %112, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %12, align 4
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %122 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %126 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %164

127:                                              ; preds = %111, %105
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %133 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %132, i32 0, i32 3
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %131, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %140 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %139, i32 0, i32 3
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %12, align 4
  br label %159

144:                                              ; preds = %127
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %147 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %146, i32 0, i32 3
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %154 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %153, i32 0, i32 3
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %152, %144
  br label %159

159:                                              ; preds = %158, %138
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %161 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %163 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  br label %164

164:                                              ; preds = %159, %119
  br label %165

165:                                              ; preds = %164, %97
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %167 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 3
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %14, align 4
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %174 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  br label %186

175:                                              ; preds = %165
  %176 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %177 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 3
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %184 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %180, %175
  br label %186

186:                                              ; preds = %185, %170
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %192 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %191, i32 0, i32 3
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %193, i32 %194)
  store i32 1, i32* %17, align 4
  br label %196

196:                                              ; preds = %190, %186
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %202 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %201, i32 0, i32 2
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %203, i32 %204)
  store i32 1, i32* %17, align 4
  br label %206

206:                                              ; preds = %200, %196
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %211 = load i32, i32* @D_FRAM, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %14, align 4
  %214 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %210, i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %206
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %215, %23
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
