; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-vbi.c_cx18_av_s_raw_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-vbi.c_cx18_av_s_raw_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_vbi_format = type { i32 }
%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_s_raw_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_vbi_format*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_av_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_vbi_format* %1, %struct.v4l2_vbi_format** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.cx18* %8, %struct.cx18** %5, align 8
  %9 = load %struct.cx18*, %struct.cx18** %5, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  store %struct.cx18_av_state* %10, %struct.cx18_av_state** %6, align 8
  %11 = load %struct.cx18*, %struct.cx18** %5, align 8
  %12 = call i32 @cx18_av_std_setup(%struct.cx18* %11)
  %13 = load %struct.cx18*, %struct.cx18** %5, align 8
  %14 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %15 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cx18_av_write(%struct.cx18* %13, i32 1151, i32 %16)
  %18 = load %struct.cx18*, %struct.cx18** %5, align 8
  %19 = call i32 @cx18_av_write(%struct.cx18* %18, i32 1028, i32 46)
  ret i32 0
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_std_setup(%struct.cx18*) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
