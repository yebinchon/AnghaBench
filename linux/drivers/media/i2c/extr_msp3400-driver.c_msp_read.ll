; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"I/O error #%d (read 0x%02x/0x%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"resetting chip, sound will go off.\0A\00", align 1
@msp_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"msp_read(0x%x, 0x%x): 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @msp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_read(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  store i32 3, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  %27 = load i32, i32* @I2C_M_RD, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %61, %3
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %49 = call i32 @i2c_transfer(i32 %47, %struct.i2c_msg* %48, i32 2)
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %64

52:                                               ; preds = %44
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_warn(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = call i32 @msecs_to_jiffies(i32 10)
  %60 = call i32 @schedule_timeout_interruptible(i32 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %41

64:                                               ; preds = %51, %41
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_warn(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %72 = call i32 @msp_reset(%struct.i2c_client* %71)
  store i32 -1, i32* %4, align 4
  br label %88

73:                                               ; preds = %64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %76, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* @msp_debug, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @dev_dbg_lvl(i32* %81, i32 3, i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %73, %67
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
