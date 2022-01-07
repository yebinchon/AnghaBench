; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_fops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si470x_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si470x_fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_fops_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = call %struct.si470x_device* @video_drvdata(%struct.file* %4)
  store %struct.si470x_device* %5, %struct.si470x_device** %3, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call i64 @v4l2_fh_is_singular_file(%struct.file* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %11 = call i32 @si470x_stop(%struct.si470x_device* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = call i32 @v4l2_fh_release(%struct.file* %13)
  ret i32 %14
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @si470x_stop(%struct.si470x_device*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
