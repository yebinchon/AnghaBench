; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.viu_fh = type { i64 }
%struct.viu_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.viu_fh*, align 8
  %8 = alloca %struct.viu_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.viu_fh*
  store %struct.viu_fh* %11, %struct.viu_fh** %7, align 8
  %12 = load %struct.viu_fh*, %struct.viu_fh** %7, align 8
  %13 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.viu_dev*
  store %struct.viu_dev* %15, %struct.viu_dev** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %20 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %24 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @viu_activate_overlay(i32 %25)
  %27 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %28 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %30 = call i32 @viu_start_dma(%struct.viu_dev* %29)
  %31 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %32 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %40

35:                                               ; preds = %3
  %36 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %37 = call i32 @viu_stop_dma(%struct.viu_dev* %36)
  %38 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %39 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %18
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @viu_activate_overlay(i32) #1

declare dso_local i32 @viu_start_dma(%struct.viu_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @viu_stop_dma(%struct.viu_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
