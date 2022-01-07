; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@msp_reset.reset_off = internal global [3 x i32] [i32 129, i32 128, i32 0], align 4
@msp_reset.reset_on = internal global [3 x i32] [i32 129, i32 0, i32 0], align 4
@msp_reset.write = internal global [3 x i32] [i32 129, i32 0, i32 30], align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"msp_reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"chip reset failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_reset(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x %struct.i2c_msg], align 16
  %6 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 3, i32* %8, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @msp_reset.reset_off, i64 0, i64 0), i32** %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  %11 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i64 1
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  store i32 3, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @msp_reset.reset_on, i64 0, i64 0), i32** %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  %20 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  store i32 3, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @msp_reset.write, i64 0, i64 0), i32** %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 1
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32* %36, i32** %35, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 2
  %38 = load i32, i32* @I2C_M_RD, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %39, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* @msp_debug, align 4
  %46 = call i32 @dev_dbg_lvl(i32* %44, i32 3, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 0
  %51 = call i32 @i2c_transfer(i32 %49, %struct.i2c_msg* %50, i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %67, label %53

53:                                               ; preds = %1
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %5, i64 0, i64 1
  %58 = call i32 @i2c_transfer(i32 %56, %struct.i2c_msg* %57, i32 1)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %65 = call i32 @i2c_transfer(i32 %63, %struct.i2c_msg* %64, i32 2)
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %53, %1
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %72

71:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
