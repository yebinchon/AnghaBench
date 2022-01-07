; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak7375.c_ak7375_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak7375.c_ak7375_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak7375_device = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak7375_device*, i32, i32, i32)* @ak7375_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak7375_i2c_write(%struct.ak7375_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ak7375_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.ak7375_device* %0, %struct.ak7375_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ak7375_device*, %struct.ak7375_device** %6, align 8
  %14 = getelementptr inbounds %struct.ak7375_device, %struct.ak7375_device* %13, i32 0, i32 0
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %59

24:                                               ; preds = %18, %4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %42 = bitcast i32* %41 to i8*
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @i2c_master_send(%struct.i2c_client* %40, i8* %42, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %59

50:                                               ; preds = %39
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55, %48, %21
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
