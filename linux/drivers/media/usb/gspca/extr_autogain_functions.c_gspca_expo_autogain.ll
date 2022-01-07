; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_autogain_functions.c_gspca_expo_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_autogain_functions.c_gspca_expo_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"autogain: lum: %d, desired: %d, steps: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"autogain: changed gain: %d, expo: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gspca_expo_autogain(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
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
  store %struct.gspca_dev* %0, %struct.gspca_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %199

27:                                               ; preds = %6
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__* %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %16, align 4
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @abs(i32 %40) #3
  %42 = load i32, i32* %11, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %45 = load i32, i32* @D_FRAM, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %19, align 4
  %49 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %44, i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %165, %27
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %168

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %14, align 4
  br label %110

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %16, align 4
  br label %109

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %73, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %14, align 4
  br label %108

83:                                               ; preds = %72
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %86 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %16, align 4
  br label %107

94:                                               ; preds = %83
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %95, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %14, align 4
  br label %106

105:                                              ; preds = %94
  br label %168

106:                                              ; preds = %102
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %69
  br label %110

110:                                              ; preds = %109, %62
  br label %164

111:                                              ; preds = %54
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %112, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %163

122:                                              ; preds = %111
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %162

129:                                              ; preds = %122
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %161

136:                                              ; preds = %129
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %139 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %16, align 4
  br label %160

147:                                              ; preds = %136
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %150 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %148, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %159

158:                                              ; preds = %147
  br label %168

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %159, %144
  br label %161

161:                                              ; preds = %160, %133
  br label %162

162:                                              ; preds = %161, %126
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %110
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %18, align 4
  br label %50

168:                                              ; preds = %158, %105, %50
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %174 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %175, i32 %176)
  store i32 1, i32* %20, align 4
  br label %178

178:                                              ; preds = %172, %168
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %184 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__* %185, i32 %186)
  store i32 1, i32* %20, align 4
  br label %188

188:                                              ; preds = %182, %178
  %189 = load i32, i32* %20, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %193 = load i32, i32* @D_FRAM, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %16, align 4
  %196 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %192, i32 %193, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %188
  %198 = load i32, i32* %20, align 4
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %26
  %200 = load i32, i32* %7, align 4
  ret i32 %200
}

declare dso_local i64 @v4l2_ctrl_g_ctrl(%struct.TYPE_3__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
