; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6507x.c_tps6507x_i2c_write_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6507x.c_tps6507x_i2c_write_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6507x_dev = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@TPS6507X_MAX_REGISTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps6507x_dev*, i8, i32, i8*)* @tps6507x_i2c_write_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_i2c_write_device(%struct.tps6507x_dev* %0, i8 signext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps6507x_dev*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tps6507x_dev* %0, %struct.tps6507x_dev** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %16 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load i32, i32* @TPS6507X_MAX_REGISTER, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @TPS6507X_MAX_REGISTER, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %53

29:                                               ; preds = %4
  %30 = load i8, i8* %7, align 1
  %31 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %30, i8* %31, align 16
  %32 = getelementptr inbounds i8, i8* %22, i64 1
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @memcpy(i8* %32, i8* %33, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @i2c_master_send(%struct.i2c_client* %36, i8* %22, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %53

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %53

53:                                               ; preds = %52, %49, %42, %26
  %54 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
