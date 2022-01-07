; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tlv320aic23b.c_tlv320aic23b_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tlv320aic23b.c_tlv320aic23b_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Invalid register R%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"I2C: cannot write %03x to register R%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @tlv320aic23b_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23b_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 9
  br i1 %16, label %17, label %24

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 15
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_err(%struct.v4l2_subdev* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %4, align 4
  br label %49

24:                                               ; preds = %17, %14
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = or i32 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %29, i32 %34, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %49

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_err(%struct.v4l2_subdev* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  store i32 -1, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %39, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
