; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_alter_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_alter_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov9640_reg_alt = type { i32, i32, i8*, i32 }

@OV9640_COM12_YUV_AVG = common dso_local global i32 0, align 4
@OV9640_COM13_Y_DELAY_EN = common dso_local global i32 0, align 4
@OV9640_COM7_RGB = common dso_local global i8* null, align 8
@OV9640_COM13_RGB_AVG = common dso_local global i8* null, align 8
@OV9640_COM15_RGB_555 = common dso_local global i32 0, align 4
@OV9640_COM15_RGB_565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ov9640_reg_alt*)* @ov9640_alter_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov9640_alter_regs(i32 %0, %struct.ov9640_reg_alt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov9640_reg_alt*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ov9640_reg_alt* %1, %struct.ov9640_reg_alt** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %6 [
    i32 128, label %7
    i32 130, label %16
    i32 129, label %27
  ]

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i32, i32* @OV9640_COM12_YUV_AVG, align 4
  %9 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %10 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @OV9640_COM13_Y_DELAY_EN, align 4
  %12 = call i32 @OV9640_COM13_YUV_DLY(i32 1)
  %13 = or i32 %11, %12
  %14 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %15 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load i8*, i8** @OV9640_COM7_RGB, align 8
  %18 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %19 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @OV9640_COM13_RGB_AVG, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %23 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @OV9640_COM15_RGB_555, align 4
  %25 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %26 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load i8*, i8** @OV9640_COM7_RGB, align 8
  %29 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %30 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @OV9640_COM13_RGB_AVG, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %34 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @OV9640_COM15_RGB_565, align 4
  %36 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %4, align 8
  %37 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %16, %7
  ret void
}

declare dso_local i32 @OV9640_COM13_YUV_DLY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
