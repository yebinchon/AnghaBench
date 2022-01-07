; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dt3155_priv = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VT_60HZ = common dso_local global i32 0, align 4
@VT_50HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @dt3155_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dt3155_priv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.dt3155_priv* @video_drvdata(%struct.file* %9)
  store %struct.dt3155_priv* %10, %struct.dt3155_priv** %8, align 8
  %11 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %12 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %19 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %18, i32 0, i32 4
  %20 = call i64 @vb2_is_busy(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %28 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %30 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @V4L2_STD_525_60, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32, i32* @VT_60HZ, align 4
  %37 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %38 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %40 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %39, i32 0, i32 1
  store i32 640, i32* %40, align 4
  %41 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %42 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %41, i32 0, i32 2
  store i32 480, i32* %42, align 4
  br label %51

43:                                               ; preds = %25
  %44 = load i32, i32* @VT_50HZ, align 4
  %45 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %46 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %48 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %47, i32 0, i32 1
  store i32 768, i32* %48, align 4
  %49 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %50 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %49, i32 0, i32 2
  store i32 576, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %35
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %22, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.dt3155_priv* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
