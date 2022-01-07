; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_i2c_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_i2c_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.et8ek8_reg = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ET8EK8_REG_TERM = common dso_local global i64 0, align 8
@ET8EK8_REG_DELAY = common dso_local global i64 0, align 8
@ET8EK8_REG_8BIT = common dso_local global i64 0, align 8
@ET8EK8_REG_16BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid type = %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"i2c transfer error!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.et8ek8_reg*)* @et8ek8_i2c_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_i2c_write_regs(%struct.i2c_client* %0, %struct.et8ek8_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.et8ek8_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.et8ek8_reg*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.et8ek8_reg* %1, %struct.et8ek8_reg** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %101

16:                                               ; preds = %2
  %17 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %5, align 8
  %18 = icmp ne %struct.et8ek8_reg* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %101

22:                                               ; preds = %16
  %23 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %5, align 8
  store %struct.et8ek8_reg* %23, %struct.et8ek8_reg** %8, align 8
  br label %24

24:                                               ; preds = %94, %22
  br label %25

25:                                               ; preds = %62, %24
  %26 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %27 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ET8EK8_REG_TERM, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %33 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ET8EK8_REG_DELAY, align 8
  %36 = icmp ne i64 %34, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ false, %25 ], [ %36, %31 ]
  br i1 %38, label %39, label %67

39:                                               ; preds = %37
  %40 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %41 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ET8EK8_REG_8BIT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %47 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ET8EK8_REG_16BIT, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i1 [ false, %39 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %55 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @WARN(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %66 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %65, i32 1
  store %struct.et8ek8_reg* %66, %struct.et8ek8_reg** %8, align 8
  br label %25

67:                                               ; preds = %37
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @et8ek8_i2c_buffered_write_regs(%struct.i2c_client* %68, %struct.et8ek8_reg* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %101

79:                                               ; preds = %67
  %80 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %81 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ET8EK8_REG_DELAY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %87 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @msleep(i32 %88)
  %90 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %91 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %90, i32 1
  store %struct.et8ek8_reg* %91, %struct.et8ek8_reg** %8, align 8
  %92 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  store %struct.et8ek8_reg* %92, %struct.et8ek8_reg** %5, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %85, %79
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.et8ek8_reg*, %struct.et8ek8_reg** %8, align 8
  %96 = getelementptr inbounds %struct.et8ek8_reg, %struct.et8ek8_reg* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ET8EK8_REG_TERM, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %24, label %100

100:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %74, %59, %19, %13
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i32 @et8ek8_i2c_buffered_write_regs(%struct.i2c_client*, %struct.et8ek8_reg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
