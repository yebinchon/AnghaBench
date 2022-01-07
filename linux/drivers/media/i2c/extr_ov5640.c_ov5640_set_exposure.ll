; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_REG_AEC_PK_EXPOSURE_LO = common dso_local global i32 0, align 4
@OV5640_REG_AEC_PK_EXPOSURE_MED = common dso_local global i32 0, align 4
@OV5640_REG_AEC_PK_EXPOSURE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i32)* @ov5640_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_exposure(%struct.ov5640_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = shl i32 %7, 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %10 = load i32, i32* @OV5640_REG_AEC_PK_EXPOSURE_LO, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 255
  %13 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %9, i32 %10, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %20 = load i32, i32* @OV5640_REG_AEC_PK_EXPOSURE_MED, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %19, i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %31 = load i32, i32* @OV5640_REG_AEC_PK_EXPOSURE_HI, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 15
  %35 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %30, i32 %31, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %27, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ov5640_write_reg(%struct.ov5640_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
