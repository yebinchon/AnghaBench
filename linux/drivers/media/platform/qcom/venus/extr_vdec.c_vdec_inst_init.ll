; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_inst_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_inst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, %struct.TYPE_2__, i32, i8*, i32, i8*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HFI_VIDEO_CODEC_H264 = common dso_local global i32 0, align 4
@vdec_formats = common dso_local global i32* null, align 8
@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_inst*)* @vdec_inst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_inst_init(%struct.venus_inst* %0) #0 {
  %2 = alloca %struct.venus_inst*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %2, align 8
  %3 = load i32, i32* @HFI_VIDEO_CODEC_H264, align 4
  %4 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %5 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %4, i32 0, i32 9
  store i32 %3, i32* %5, align 8
  %6 = load i32*, i32** @vdec_formats, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 6
  %8 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %9 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %8, i32 0, i32 8
  store i32* %7, i32** %9, align 8
  %10 = load i32*, i32** @vdec_formats, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %13 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %12, i32 0, i32 7
  store i32* %11, i32** %13, align 8
  %14 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %15 = call i8* @frame_width_min(%struct.venus_inst* %14)
  %16 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %17 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %16, i32 0, i32 6
  store i8* %15, i8** %17, align 8
  %18 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %19 = call i32 @frame_height_min(%struct.venus_inst* %18)
  %20 = call i32 @ALIGN(i32 %19, i32 32)
  %21 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %22 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %24 = call i8* @frame_width_min(%struct.venus_inst* %23)
  %25 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %26 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %28 = call i32 @frame_height_min(%struct.venus_inst* %27)
  %29 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %32 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %31, i32 0, i32 0
  store i32 30, i32* %32, align 8
  %33 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %37 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 30, i32* %38, align 4
  %39 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %40 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %41 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i8* @frame_width_min(%struct.venus_inst*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @frame_height_min(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
