; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_audio_mute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_audio_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, i32)* @audio_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_mute(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bttv*, %struct.bttv** %3, align 8
  %7 = load %struct.bttv*, %struct.bttv** %3, align 8
  %8 = getelementptr inbounds %struct.bttv, %struct.bttv* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @audio_mux_gpio(%struct.bttv* %6, i32 %9, i32 %10)
  %12 = load %struct.bttv*, %struct.bttv** %3, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.bttv*, %struct.bttv** %3, align 8
  %18 = getelementptr inbounds %struct.bttv, %struct.bttv* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %23 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %21, i32 %22)
  store %struct.v4l2_ctrl* %23, %struct.v4l2_ctrl** %5, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %25 = icmp ne %struct.v4l2_ctrl* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %16
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.bttv*, %struct.bttv** %3, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.bttv*, %struct.bttv** %3, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %43 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %41, i32 %42)
  store %struct.v4l2_ctrl* %43, %struct.v4l2_ctrl** %5, align 8
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %45 = icmp ne %struct.v4l2_ctrl* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.bttv*, %struct.bttv** %3, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.bttv*, %struct.bttv** %3, align 8
  %58 = getelementptr inbounds %struct.bttv, %struct.bttv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %63 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %61, i32 %62)
  store %struct.v4l2_ctrl* %63, %struct.v4l2_ctrl** %5, align 8
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %65 = icmp ne %struct.v4l2_ctrl* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %56
  br label %71

71:                                               ; preds = %70, %51
  ret i32 0
}

declare dso_local i32 @audio_mux_gpio(%struct.bttv*, i32, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(%struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
