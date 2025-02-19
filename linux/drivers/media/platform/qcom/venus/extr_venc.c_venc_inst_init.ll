; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_inst_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_inst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@venc_formats = common dso_local global i32* null, align 8
@HFI_VIDEO_CODEC_H264 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_inst*)* @venc_inst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_inst_init(%struct.venus_inst* %0) #0 {
  %2 = alloca %struct.venus_inst*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %2, align 8
  %3 = load i32*, i32** @venc_formats, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 2
  %5 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %6 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %5, i32 0, i32 8
  store i32* %4, i32** %6, align 8
  %7 = load i32*, i32** @venc_formats, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %10 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %9, i32 0, i32 7
  store i32* %8, i32** %10, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %12 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %11, i32 0, i32 0
  store i32 1280, i32* %12, align 8
  %13 = call i32 @ALIGN(i32 720, i32 32)
  %14 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %17 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %16, i32 0, i32 1
  store i32 1280, i32* %17, align 4
  %18 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %19 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %18, i32 0, i32 2
  store i32 720, i32* %19, align 8
  %20 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %21 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %20, i32 0, i32 3
  store i32 15, i32* %21, align 4
  %22 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %23 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %26 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 15, i32* %27, align 4
  %28 = load i32, i32* @HFI_VIDEO_CODEC_H264, align 4
  %29 = load %struct.venus_inst*, %struct.venus_inst** %2, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
