; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"i2c_read: 0x%04x : 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"i2c_read: error during transfer (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*, i32)* @s5k5baf_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_i2c_read(%struct.s5k5baf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  %11 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %13 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %12, i32 0, i32 1
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32* %7, i32** %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  store i32* %8, i32** %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %27 = load i32, i32* @I2C_M_RD, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %33 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @cpu_to_be16(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %44 = call i32 @i2c_transfer(i32 %42, %struct.i2c_msg* %43, i32 2)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @be16_to_cpu(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @debug, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @v4l2_dbg(i32 3, i32 %47, %struct.i2c_client* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %61

54:                                               ; preds = %37
  %55 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @v4l2_err(%struct.i2c_client* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %60 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %37
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %36
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
