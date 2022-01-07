; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_videostandard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_videostandard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@DENC_A_REG_4 = common dso_local global i32 0, align 4
@DENC_B_REG_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_set_videostandard(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %14 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %1
  %20 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %21 = call i32 @medusa_initialize_pal(%struct.cx25821_dev* %20)
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %12
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %24 = call i32 @medusa_initialize_ntsc(%struct.cx25821_dev* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* @DENC_A_REG_4, align 4
  %31 = call i32 @cx25821_i2c_read(i32* %29, i32 %30, i32* %5)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @setBitAtPos(i32 %32, i32 4)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* @DENC_A_REG_4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @cx25821_i2c_write(i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %42 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* @DENC_B_REG_4, align 4
  %46 = call i32 @cx25821_i2c_read(i32* %44, i32 %45, i32* %5)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @setBitAtPos(i32 %47, i32 4)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %50 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* @DENC_B_REG_4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @cx25821_i2c_write(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @medusa_initialize_pal(%struct.cx25821_dev*) #1

declare dso_local i32 @medusa_initialize_ntsc(%struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @setBitAtPos(i32, i32) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
