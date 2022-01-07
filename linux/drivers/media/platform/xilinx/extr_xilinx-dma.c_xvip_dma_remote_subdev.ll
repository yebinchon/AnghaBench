; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_remote_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_remote_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_pad = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_subdev* (%struct.media_pad*, i32*)* @xvip_dma_remote_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_subdev* @xvip_dma_remote_subdev(%struct.media_pad* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.media_pad*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.media_pad*, align 8
  store %struct.media_pad* %0, %struct.media_pad** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %8 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %7)
  store %struct.media_pad* %8, %struct.media_pad** %6, align 8
  %9 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %10 = icmp ne %struct.media_pad* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %13 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_media_entity_v4l2_subdev(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %2
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %3, align 8
  br label %31

18:                                               ; preds = %11
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %23 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load %struct.media_pad*, %struct.media_pad** %6, align 8
  %28 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %29)
  store %struct.v4l2_subdev* %30, %struct.v4l2_subdev** %3, align 8
  br label %31

31:                                               ; preds = %26, %17
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  ret %struct.v4l2_subdev* %32
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
