; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_i2c_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_i2c_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i8*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ET8EK8_REG_8BIT = common dso_local global i32 0, align 4
@ET8EK8_REG_16BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"read from offset 0x%x error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @et8ek8_i2c_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_i2c_read_reg(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [4 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %95

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ET8EK8_REG_16BIT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %95

31:                                               ; preds = %24, %20
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 2, i32* %37, align 8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 255
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_transfer(i32 %50, %struct.i2c_msg* %11, i32 1)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %88

55:                                               ; preds = %31
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load i64, i64* @I2C_M_RD, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64 %58, i64* %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @i2c_transfer(i32 %62, %struct.i2c_msg* %11, i32 1)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %88

67:                                               ; preds = %55
  %68 = load i8*, i8** %9, align 8
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %9, align 8
  store i8 %74, i8* %75, align 1
  br label %87

76:                                               ; preds = %67
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %80, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %9, align 8
  store i8 %85, i8* %86, align 1
  br label %87

87:                                               ; preds = %76, %72
  store i32 0, i32* %5, align 4
  br label %95

88:                                               ; preds = %66, %54
  %89 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %88, %87, %28, %17
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
