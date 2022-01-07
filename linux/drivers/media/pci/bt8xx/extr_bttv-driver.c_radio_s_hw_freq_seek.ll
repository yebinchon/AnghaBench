; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i32, i64 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @radio_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bttv_fh*
  store %struct.bttv_fh* %11, %struct.bttv_fh** %8, align 8
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %13 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %12, i32 0, i32 0
  %14 = load %struct.bttv*, %struct.bttv** %13, align 8
  store %struct.bttv* %14, %struct.bttv** %9, align 8
  %15 = load %struct.bttv*, %struct.bttv** %9, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load %struct.bttv*, %struct.bttv** %9, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 0
  %23 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %24 = call i32 @snd_tea575x_s_hw_freq_seek(%struct.file* %20, i32* %22, %struct.v4l2_hw_freq_seek* %23)
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOTTY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @snd_tea575x_s_hw_freq_seek(%struct.file*, i32*, %struct.v4l2_hw_freq_seek*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
