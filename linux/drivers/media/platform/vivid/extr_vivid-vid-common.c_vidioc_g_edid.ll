; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vidioc_g_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vidioc_g_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_edid = type { i64, i32, i32, i32, i32 }
%struct.vivid_dev = type { i64, i64*, i64, i64*, i32*, i32, i64, %struct.cec_adapter**, i32*, %struct.cec_adapter* }
%struct.cec_adapter = type { i32 }
%struct.video_device = type { i64 }

@VFL_DIR_RX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HDMI = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_g_edid(%struct.file* %0, i8* %1, %struct.v4l2_edid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_edid*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.cec_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_edid* %2, %struct.v4l2_edid** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.vivid_dev* @video_drvdata(%struct.file* %12)
  store %struct.vivid_dev* %13, %struct.vivid_dev** %8, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file* %14)
  store %struct.video_device* %15, %struct.video_device** %9, align 8
  %16 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = load %struct.video_device*, %struct.video_device** %9, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VFL_DIR_RX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %3
  %26 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %30 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %198

36:                                               ; preds = %25
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HDMI, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %198

50:                                               ; preds = %36
  %51 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %52 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %51, i32 0, i32 9
  %53 = load %struct.cec_adapter*, %struct.cec_adapter** %52, align 8
  store %struct.cec_adapter* %53, %struct.cec_adapter** %10, align 8
  br label %108

54:                                               ; preds = %3
  %55 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %198

65:                                               ; preds = %54
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HDMI, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %198

79:                                               ; preds = %65
  %80 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %81 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %80, i32 0, i32 8
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @ENODATA, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %198

92:                                               ; preds = %79
  %93 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %94 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %102 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %101, i32 0, i32 7
  %103 = load %struct.cec_adapter**, %struct.cec_adapter*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.cec_adapter*, %struct.cec_adapter** %103, i64 %105
  %107 = load %struct.cec_adapter*, %struct.cec_adapter** %106, align 8
  store %struct.cec_adapter* %107, %struct.cec_adapter** %10, align 8
  br label %108

108:                                              ; preds = %92, %50
  %109 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %120 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %4, align 4
  br label %198

124:                                              ; preds = %113, %108
  %125 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %126 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @ENODATA, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %198

132:                                              ; preds = %124
  %133 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %137 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %198

143:                                              ; preds = %132
  %144 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %148 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  %154 = icmp sgt i32 %146, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %143
  %156 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %157 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %160 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %158, %161
  %163 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %164 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %155, %143
  %166 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  %167 = icmp ne %struct.cec_adapter* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %170 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %173 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %174, 128
  %176 = load %struct.cec_adapter*, %struct.cec_adapter** %10, align 8
  %177 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @v4l2_set_edid_phys_addr(i64 %171, i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %168, %165
  %181 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %185 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %188 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %189, 128
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %186, %191
  %193 = load %struct.v4l2_edid*, %struct.v4l2_edid** %7, align 8
  %194 = getelementptr inbounds %struct.v4l2_edid, %struct.v4l2_edid* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 128
  %197 = call i32 @memcpy(i32 %183, i64 %192, i32 %196)
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %180, %140, %129, %118, %89, %76, %62, %47, %33
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @v4l2_set_edid_phys_addr(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
