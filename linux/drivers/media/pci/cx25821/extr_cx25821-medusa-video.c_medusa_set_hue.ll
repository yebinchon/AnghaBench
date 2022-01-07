; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_hue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_hue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@VIDEO_PROCAMP_MAX = common dso_local global i32 0, align 4
@VIDEO_PROCAMP_MIN = common dso_local global i32 0, align 4
@SIGNED_BYTE_MIN = common dso_local global i32 0, align 4
@SIGNED_BYTE_MAX = common dso_local global i32 0, align 4
@VDEC_A_HUE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_set_hue(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
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
  br label %57

20:                                               ; preds = %15
  %21 = load i32, i32* @VIDEO_PROCAMP_MIN, align 4
  %22 = load i32, i32* @VIDEO_PROCAMP_MAX, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SIGNED_BYTE_MIN, align 4
  %25 = load i32, i32* @SIGNED_BYTE_MAX, align 4
  %26 = call i32 @mapM(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @convert_to_twos(i32 %27, i32 8)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %30 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i64, i64* @VDEC_A_HUE_CTRL, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 512, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @cx25821_i2c_read(i32* %32, i64 %37, i32* %11)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, -256
  store i32 %40, i32* %10, align 4
  %41 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %42 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i64, i64* @VDEC_A_HUE_CTRL, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 512, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @cx25821_i2c_write(i32* %44, i64 %49, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %20, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @mapM(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @convert_to_twos(i32, i32) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
