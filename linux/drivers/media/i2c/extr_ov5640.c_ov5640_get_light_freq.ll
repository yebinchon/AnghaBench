; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_get_light_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_get_light_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@OV5640_REG_HZ5060_CTRL01 = common dso_local global i32 0, align 4
@OV5640_REG_HZ5060_CTRL00 = common dso_local global i32 0, align 4
@OV5640_REG_SIGMADELTA_CTRL0C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*)* @ov5640_get_light_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_get_light_freq(%struct.ov5640_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %9 = load i32, i32* @OV5640_REG_HZ5060_CTRL01, align 4
  %10 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %8, i32 %9, i32* %6)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %21 = load i32, i32* @OV5640_REG_HZ5060_CTRL00, align 4
  %22 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %20, i32 %21, i32* %7)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 50, i32* %5, align 4
  br label %33

32:                                               ; preds = %27
  store i32 60, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %49

34:                                               ; preds = %15
  %35 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %36 = load i32, i32* @OV5640_REG_SIGMADELTA_CTRL0C, align 4
  %37 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %35, i32 %36, i32* %7)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 50, i32* %5, align 4
  br label %48

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %40, %25, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @ov5640_read_reg(%struct.ov5640_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
