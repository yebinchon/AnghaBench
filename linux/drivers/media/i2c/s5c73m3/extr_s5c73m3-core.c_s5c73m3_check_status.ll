; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@REG_STATUS = common dso_local global i32 0, align 4
@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"status check took %dms\0A\00", align 1
@REG_I2C_STATUS = common dso_local global i32 0, align 4
@REG_I2C_SEQ_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"wrong status %#x, expected: %#x, i2c_status: %#x/%#x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_check_status(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @msecs_to_jiffies(i32 2000)
  %16 = add i64 %14, %15
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %32, %2
  %18 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %19 = load i32, i32* @REG_STATUS, align 4
  %20 = call i32 @s5c73m3_read(%struct.s5c73m3* %18, i32 %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %17
  br label %36

28:                                               ; preds = %23
  %29 = call i32 @usleep_range(i32 500, i32 1000)
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @time_is_after_jiffies(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %17, label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* @s5c73m3_dbg, align 4
  %41 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %42 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %41, i32 0, i32 0
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @jiffies_to_msecs(i64 %45)
  %47 = call i32 @v4l2_dbg(i32 1, i32 %40, i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %39, %36
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %56 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %57 = load i32, i32* @REG_I2C_STATUS, align 4
  %58 = call i32 @s5c73m3_read(%struct.s5c73m3* %56, i32 %57, i32* %11)
  %59 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %60 = load i32, i32* @REG_I2C_SEQ_STATUS, align 4
  %61 = call i32 @s5c73m3_read(%struct.s5c73m3* %59, i32 %60, i32* %12)
  %62 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %63 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %62, i32 0, i32 0
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @v4l2_err(i32* %63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %51, %48
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %55
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @s5c73m3_read(%struct.s5c73m3*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
