; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32*, i32, i32 }

@MAX_VID_CAP_CHANNEL_NUM = common dso_local global i32 0, align 4
@SRAM_CH08 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_dev_unregister(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %4 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pci_resource_len(i32 %15, i32 0)
  %17 = call i32 @release_mem_region(i32 %12, i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %32, %9
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MAX_VID_CAP_CHANNEL_NUM, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SRAM_CH08, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %32

28:                                               ; preds = %23
  %29 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @cx25821_video_unregister(%struct.cx25821_dev* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %37 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @cx25821_i2c_unregister(i32* %39)
  %41 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %42 = call i32 @cx25821_iounmap(%struct.cx25821_dev* %41)
  br label %43

43:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @cx25821_video_unregister(%struct.cx25821_dev*, i32) #1

declare dso_local i32 @cx25821_i2c_unregister(i32*) #1

declare dso_local i32 @cx25821_iounmap(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
