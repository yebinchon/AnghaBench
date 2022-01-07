; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_dw9807-vcm.c_dw9807_set_dac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_dw9807-vcm.c_dw9807_set_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DW9807_MSB_ADDR = common dso_local global i32 0, align 4
@dw9807_i2c_check = common dso_local global i32 0, align 4
@DW9807_CTRL_DELAY_US = common dso_local global i32 0, align 4
@MAX_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cannot do the write operation because VCM is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"I2C write MSB fail ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @dw9807_set_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw9807_set_dac(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %10 = load i32, i32* @DW9807_MSB_ADDR, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %9, align 1
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 3
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %12, align 1
  %17 = getelementptr inbounds i8, i8* %12, i64 1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %17, align 1
  %21 = load i32, i32* @dw9807_i2c_check, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @DW9807_CTRL_DELAY_US, align 4
  %28 = load i32, i32* @MAX_RETRY, align 4
  %29 = load i32, i32* @DW9807_CTRL_DELAY_US, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @readx_poll_timeout(i32 %21, %struct.i2c_client* %22, i32 %23, i32 %26, i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34, %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %34
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %57 = call i32 @i2c_master_send(%struct.i2c_client* %55, i8* %56, i32 3)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %60, %52
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @readx_poll_timeout(i32, %struct.i2c_client*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
