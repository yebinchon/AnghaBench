; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"msp_write(0x%x, 0x%x, 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"I/O error #%d (write 0x%02x/0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"resetting chip, sound will go off.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @msp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_write(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %14, 8
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 8
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %24, i32* %25, align 16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* @msp_debug, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dev_dbg_lvl(i32* %27, i32 3, i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %51, %4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %39 = call i32 @i2c_master_send(%struct.i2c_client* %37, i32* %38, i32 5)
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %54

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_warn(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = call i32 @msecs_to_jiffies(i32 10)
  %50 = call i32 @schedule_timeout_interruptible(i32 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %33

54:                                               ; preds = %41, %33
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_warn(i32* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = call i32 @msp_reset(%struct.i2c_client* %61)
  store i32 -1, i32* %5, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
