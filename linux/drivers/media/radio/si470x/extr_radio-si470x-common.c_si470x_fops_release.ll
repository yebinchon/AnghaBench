; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_fops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si470x_device = type { i32 (%struct.file.0*)* }
%struct.file.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si470x_fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_fops_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.si470x_device* @video_drvdata(%struct.file* %4)
  store %struct.si470x_device* %5, %struct.si470x_device** %3, align 8
  %6 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %7 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 0
  %8 = load i32 (%struct.file.0*)*, i32 (%struct.file.0*)** %7, align 8
  %9 = load %struct.file*, %struct.file** %2, align 8
  %10 = bitcast %struct.file* %9 to %struct.file.0*
  %11 = call i32 %8(%struct.file.0* %10)
  ret i32 %11
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
