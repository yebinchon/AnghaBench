; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_get_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_get_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_REG_AEC_PK_EXPOSURE_HI = common dso_local global i32 0, align 4
@OV5640_REG_AEC_PK_EXPOSURE_MED = common dso_local global i32 0, align 4
@OV5640_REG_AEC_PK_EXPOSURE_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*)* @ov5640_get_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_get_exposure(%struct.ov5640_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  %7 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %8 = load i32, i32* @OV5640_REG_AEC_PK_EXPOSURE_HI, align 4
  %9 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %7, i32 %8, i64* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 15
  %18 = shl i32 %17, 16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %20 = load i32, i32* @OV5640_REG_AEC_PK_EXPOSURE_MED, align 4
  %21 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %19, i32 %20, i64* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %14
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %33 = load i32, i32* @OV5640_REG_AEC_PK_EXPOSURE_LO, align 4
  %34 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %32, i32 %33, i64* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %37, %24, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ov5640_read_reg(%struct.ov5640_dev*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
