; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7134_dev = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SAA7134_INPUT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAA7134_NO_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %10)
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SAA7134_INPUT_MAX, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @card_in(%struct.saa7134_dev* %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SAA7134_NO_INPUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %18
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @video_mux(%struct.saa7134_dev* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %27, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @card_in(%struct.saa7134_dev*, i32) #1

declare dso_local i32 @video_mux(%struct.saa7134_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
