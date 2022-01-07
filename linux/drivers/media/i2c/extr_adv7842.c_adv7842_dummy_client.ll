; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_dummy_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_dummy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no %s i2c addr configured\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"register %s on i2c addr 0x%x failed with %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_client* (%struct.v4l2_subdev*, i8*, i32, i32)* @adv7842_dummy_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_client* @adv7842_dummy_client(%struct.v4l2_subdev* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %10, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 1
  %18 = call i32 @io_write(%struct.v4l2_subdev* %14, i32 %15, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (%struct.v4l2_subdev*, i8*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %23)
  store %struct.i2c_client* null, %struct.i2c_client** %5, align 8
  br label %46

25:                                               ; preds = %4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @io_read(%struct.v4l2_subdev* %29, i32 %30)
  %32 = ashr i32 %31, 1
  %33 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %28, i32 %32)
  store %struct.i2c_client* %33, %struct.i2c_client** %11, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %35 = call i64 @IS_ERR(%struct.i2c_client* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %42 = call i32 @PTR_ERR(%struct.i2c_client* %41)
  %43 = call i32 (%struct.v4l2_subdev*, i8*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %40, i32 %42)
  store %struct.i2c_client* null, %struct.i2c_client** %11, align 8
  br label %44

44:                                               ; preds = %37, %25
  %45 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %45, %struct.i2c_client** %5, align 8
  br label %46

46:                                               ; preds = %44, %21
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  ret %struct.i2c_client* %47
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i8*, ...) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
