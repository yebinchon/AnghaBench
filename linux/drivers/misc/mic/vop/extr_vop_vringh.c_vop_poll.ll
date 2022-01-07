; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vop_vdev* }
%struct.vop_vdev = type { i32, i64, i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @vop_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vop_vdev*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vop_vdev*, %struct.vop_vdev** %8, align 8
  store %struct.vop_vdev* %9, %struct.vop_vdev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %11 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %14 = call i64 @vop_vdev_inited(%struct.vop_vdev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EPOLLERR, align 4
  store i32 %17, i32* %6, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %21 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %20, i32 0, i32 2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @poll_wait(%struct.file* %19, i32* %21, i32* %22)
  %24 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %25 = call i64 @vop_vdev_inited(%struct.vop_vdev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @EPOLLERR, align 4
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %31 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %36 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @EPOLLIN, align 4
  %38 = load i32, i32* @EPOLLOUT, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %16
  %43 = load %struct.vop_vdev*, %struct.vop_vdev** %5, align 8
  %44 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vop_vdev_inited(%struct.vop_vdev*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
