; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_read_u8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_read_u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Wrong data size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5mols_read_u8(%struct.v4l2_subdev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @I2C_SIZE(i64 %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call i32 @v4l2_err(%struct.v4l2_subdev* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @I2C_SIZE(i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @m5mols_read(%struct.v4l2_subdev* %19, i32 %21, i64 %22, i64* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load i64, i64* %8, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %26, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @I2C_SIZE(i64) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @m5mols_read(%struct.v4l2_subdev*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
