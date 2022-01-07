; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i64, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i64, i64 }
%struct.saa7134_dev = type { i32, i64, %struct.v4l2_rect, %struct.v4l2_rect }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @saa7134_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.v4l2_rect*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %11)
  store %struct.saa7134_dev* %12, %struct.saa7134_dev** %8, align 8
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %14 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %13, i32 0, i32 3
  store %struct.v4l2_rect* %14, %struct.v4l2_rect** %9, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 2
  store %struct.v4l2_rect* %16, %struct.v4l2_rect** %10, align 8
  %17 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %199

31:                                               ; preds = %22, %3
  %32 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %199

40:                                               ; preds = %31
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %199

48:                                               ; preds = %40
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %50 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %49, i32 0, i32 0
  %51 = call i64 @vb2_is_streaming(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %199

56:                                               ; preds = %48
  %57 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %58 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %58, i32 0, i32 2
  %60 = bitcast %struct.v4l2_rect* %57 to i8*
  %61 = bitcast %struct.v4l2_rect* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 32, i1 false)
  %62 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %63 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %56
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = icmp sgt i64 %78, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %75
  %88 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %87, %75
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %102 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %105 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %109 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = icmp sgt i64 %100, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %97
  %114 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %126 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %113, %97
  %128 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %129 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %132 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %137 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %140 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %127
  %142 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %143 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %149 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = icmp sgt i64 %144, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %141
  %154 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %155 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %158 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %162 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %153, %141
  %164 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %165 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %168 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %171 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %169, %172
  %174 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %175 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %173, %176
  %178 = icmp sgt i64 %166, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %163
  %180 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %181 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %184 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %182, %185
  %187 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %188 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %186, %189
  %191 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %192 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %179, %163
  %194 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %195 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %194, i32 0, i32 2
  %196 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %197 = bitcast %struct.v4l2_rect* %195 to i8*
  %198 = bitcast %struct.v4l2_rect* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %197, i8* align 8 %198, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %193, %53, %45, %37, %28
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
