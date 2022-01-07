; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@VIDEO_PROCAMP_MAX = common dso_local global i32 0, align 4
@VIDEO_PROCAMP_MIN = common dso_local global i32 0, align 4
@UNSIGNED_BYTE_MIN = common dso_local global i32 0, align 4
@UNSIGNED_BYTE_MAX = common dso_local global i32 0, align 4
@VDEC_A_CNTRST_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_set_contrast(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @VIDEO_PROCAMP_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VIDEO_PROCAMP_MIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %55

20:                                               ; preds = %15
  %21 = load i32, i32* @VIDEO_PROCAMP_MIN, align 4
  %22 = load i32, i32* @VIDEO_PROCAMP_MAX, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @UNSIGNED_BYTE_MIN, align 4
  %25 = load i32, i32* @UNSIGNED_BYTE_MAX, align 4
  %26 = call i32 @mapM(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %28 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i64, i64* @VDEC_A_CNTRST_CTRL, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 512, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @cx25821_i2c_read(i32* %30, i64 %35, i32* %11)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, -256
  store i32 %38, i32* %10, align 4
  %39 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %40 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i64, i64* @VDEC_A_CNTRST_CTRL, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 512, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @cx25821_i2c_write(i32* %42, i64 %47, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %20, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mapM(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
