; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_PALCombInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_PALCombInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@COMB_2D_HFS_CFG = common dso_local global i64 0, align 8
@COMB_2D_HFD_CFG = common dso_local global i64 0, align 8
@COMB_2D_LF_CFG = common dso_local global i64 0, align 8
@COMB_FLAT_THRESH_CTRL = common dso_local global i64 0, align 8
@COMB_2D_BLEND = common dso_local global i64 0, align 8
@COMB_MISC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_dev*, i32)* @medusa_PALCombInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @medusa_PALCombInit(%struct.cx25821_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i64, i64* @COMB_2D_HFS_CFG, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 512, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @cx25821_i2c_write(i32* %11, i64 %16, i32 536881249)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i64, i64* @COMB_2D_HFD_CFG, align 8
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 512, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @cx25821_i2c_write(i32* %21, i64 %26, i32 536881249)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %29 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i64, i64* @COMB_2D_LF_CFG, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 512, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @cx25821_i2c_write(i32* %31, i64 %36, i32 537530403)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %39 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i64, i64* @COMB_FLAT_THRESH_CTRL, align 8
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 512, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @cx25821_i2c_read(i32* %41, i64 %46, i32* %7)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 102957056
  store i32 %49, i32* %6, align 4
  %50 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %51 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i64, i64* @COMB_FLAT_THRESH_CTRL, align 8
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 512, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @cx25821_i2c_write(i32* %53, i64 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %62 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i64, i64* @COMB_2D_BLEND, align 8
  %66 = load i32, i32* %4, align 4
  %67 = mul nsw i32 512, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %65, %68
  %70 = call i32 @cx25821_i2c_write(i32* %64, i64 %69, i32 554635023)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %72 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i64, i64* @COMB_MISC_CTRL, align 8
  %76 = load i32, i32* %4, align 4
  %77 = mul nsw i32 512, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = call i32 @cx25821_i2c_write(i32* %74, i64 %79, i32 1091701375)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
