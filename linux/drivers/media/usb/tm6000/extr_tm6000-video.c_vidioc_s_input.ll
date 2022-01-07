; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.tm6000_fh = type { %struct.tm6000_core* }
%struct.tm6000_core = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm6000_fh*, align 8
  %9 = alloca %struct.tm6000_core*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tm6000_fh*
  store %struct.tm6000_fh* %12, %struct.tm6000_fh** %8, align 8
  %13 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %14 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %13, i32 0, i32 0
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %14, align 8
  store %struct.tm6000_core* %15, %struct.tm6000_core** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %23 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %37 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %41 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vidioc_s_std(%struct.file* %38, i8* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %31, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @vidioc_s_std(%struct.file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
