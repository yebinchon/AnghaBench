; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-devnode.c___media_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-devnode.c___media_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.media_devnode = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64 (%struct.file*, i32, i64)*)* @__media_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__media_ioctl(%struct.file* %0, i32 %1, i64 %2, i64 (%struct.file*, i32, i64)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64 (%struct.file*, i32, i64)*, align 8
  %10 = alloca %struct.media_devnode*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 (%struct.file*, i32, i64)* %3, i64 (%struct.file*, i32, i64)** %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = call %struct.media_devnode* @media_devnode_data(%struct.file* %11)
  store %struct.media_devnode* %12, %struct.media_devnode** %10, align 8
  %13 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %9, align 8
  %14 = icmp ne i64 (%struct.file*, i32, i64)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @ENOTTY, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %31

18:                                               ; preds = %4
  %19 = load %struct.media_devnode*, %struct.media_devnode** %10, align 8
  %20 = call i32 @media_devnode_is_registered(%struct.media_devnode* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @EIO, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %31

25:                                               ; preds = %18
  %26 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %9, align 8
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i64 %26(%struct.file* %27, i32 %28, i64 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %25, %22, %15
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local %struct.media_devnode* @media_devnode_data(%struct.file*) #1

declare dso_local i32 @media_devnode_is_registered(%struct.media_devnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
