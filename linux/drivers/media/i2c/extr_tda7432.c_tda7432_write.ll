; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda7432.c_tda7432_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"In tda7432_write\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Writing %d 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"I/O error, trying (write %d 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @tda7432_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca [2 x i8], align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 2, i32 %12, %struct.v4l2_subdev* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %15, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 %24, i8* %25, align 1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %28 = call i32 @i2c_master_send(%struct.i2c_client* %26, i8* %27, i32 2)
  %29 = icmp ne i32 2, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @v4l2_err(%struct.v4l2_subdev* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %33)
  store i32 -1, i32* %4, align 4
  br label %36

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
