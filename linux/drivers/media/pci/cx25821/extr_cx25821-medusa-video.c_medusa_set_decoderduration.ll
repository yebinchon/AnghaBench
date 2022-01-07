; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_decoderduration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_set_decoderduration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@DISP_AB_CNT = common dso_local global i32 0, align 4
@VDEC_A = common dso_local global i32 0, align 4
@DISP_CD_CNT = common dso_local global i32 0, align 4
@DISP_EF_CNT = common dso_local global i32 0, align 4
@DISP_GH_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, i32, i32)* @medusa_set_decoderduration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @medusa_set_decoderduration(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @DISP_AB_CNT, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VDEC_A, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 128
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  br label %58

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %20 [
    i32 133, label %21
    i32 132, label %21
    i32 131, label %23
    i32 130, label %23
    i32 129, label %25
    i32 128, label %25
  ]

20:                                               ; preds = %18
  br label %27

21:                                               ; preds = %18, %18
  %22 = load i32, i32* @DISP_CD_CNT, align 4
  store i32 %22, i32* %9, align 4
  br label %27

23:                                               ; preds = %18, %18
  %24 = load i32, i32* @DISP_EF_CNT, align 4
  store i32 %24, i32* %9, align 4
  br label %27

25:                                               ; preds = %18, %18
  %26 = load i32, i32* @DISP_GH_CNT, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %23, %21, %20
  %28 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %29 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @cx25821_i2c_read(i32* %31, i32 %32, i32* %8)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, -65536
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %50

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 65535
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %52 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cx25821_i2c_write(i32* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %17
  ret void
}

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
