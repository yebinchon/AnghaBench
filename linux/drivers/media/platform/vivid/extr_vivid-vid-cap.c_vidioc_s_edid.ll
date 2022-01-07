; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_s_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vidioc_s_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_edid = type { i64, i32, i32, i64, i32 }
%struct.vivid_dev = type { i64, i64*, i32, i32, i32, i64*, i32*, i64*, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDMI = common dso_local global i64 0, align 8
@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MAX_OUTPUTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_s_edid(%struct.file* %0, i8* %1, %struct.v4l2_edid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_edid*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_edid* %2, %struct.v4l2_edid** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.vivid_dev* @video_drvdata(%struct.file* %14)
  store %struct.vivid_dev* %15, %struct.vivid_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %24 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %217

30:                                               ; preds = %3
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %32 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HDMI, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %217

49:                                               ; preds = %41
  %50 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @v4l2_ctrl_s_ctrl(i32 %59, i32 0)
  %61 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %62 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @v4l2_ctrl_s_ctrl(i32 %63, i32 0)
  %65 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  store i32 %65, i32* %9, align 4
  br label %166

66:                                               ; preds = %49
  %67 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %76 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @E2BIG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %217

82:                                               ; preds = %66
  %83 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 128
  %90 = call i32 @cec_get_edid_phys_addr(i32 %85, i32 %89, i32* null)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @v4l2_phys_addr_validate(i32 %91, i32* %9, i32* null)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %217

97:                                               ; preds = %82
  %98 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %99 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %98, i32 0, i32 12
  %100 = call i64 @vb2_is_busy(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %217

105:                                              ; preds = %97
  %106 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %110 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %112 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 128
  %121 = call i32 @memcpy(i32 %113, i32 %116, i32 %120)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %152, %105
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %125 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %122
  %129 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %130 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %129, i32 0, i32 5
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HDMI, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %128
  %139 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %140 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %139, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = shl i32 %145, %146
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %138, %128
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %11, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %122

155:                                              ; preds = %122
  %156 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %157 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @v4l2_ctrl_s_ctrl(i32 %158, i32 %159)
  %161 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %162 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @v4l2_ctrl_s_ctrl(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %155, %54
  %167 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %168 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @cec_s_phys_addr(i64 %169, i32 %170, i32 0)
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %213, %166
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @MAX_OUTPUTS, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %178 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %177, i32 0, i32 7
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %176, %172
  %186 = phi i1 [ false, %172 ], [ %184, %176 ]
  br i1 %186, label %187, label %216

187:                                              ; preds = %185
  %188 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %189 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %188, i32 0, i32 7
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %196 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %187
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %11, align 4
  %206 = add i32 %205, 1
  %207 = call i32 @v4l2_phys_addr_for_input(i32 %204, i32 %206)
  br label %210

208:                                              ; preds = %187
  %209 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  br label %210

210:                                              ; preds = %208, %203
  %211 = phi i32 [ %207, %203 ], [ %209, %208 ]
  %212 = call i32 @cec_s_phys_addr(i64 %194, i32 %211, i32 0)
  br label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %11, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %172

216:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %102, %95, %74, %46, %27
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @cec_get_edid_phys_addr(i32, i32, i32*) #1

declare dso_local i32 @v4l2_phys_addr_validate(i32, i32*, i32*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cec_s_phys_addr(i64, i32, i32) #1

declare dso_local i32 @v4l2_phys_addr_for_input(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
