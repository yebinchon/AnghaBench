; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_s_fmt_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_s_fmt_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.viu_fh = type { i32, i64 }
%struct.viu_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.viu_fh*, align 8
  %9 = alloca %struct.viu_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.viu_fh*
  store %struct.viu_fh* %13, %struct.viu_fh** %8, align 8
  %14 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %15 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.viu_dev*
  store %struct.viu_dev* %17, %struct.viu_dev** %9, align 8
  %18 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @verify_preview(%struct.viu_dev* %18, i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %33 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %35 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %39 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %40 = call i32 @viu_setup_preview(%struct.viu_dev* %38, %struct.viu_fh* %39)
  %41 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %42 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @verify_preview(%struct.viu_dev*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @viu_setup_preview(%struct.viu_dev*, %struct.viu_fh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
