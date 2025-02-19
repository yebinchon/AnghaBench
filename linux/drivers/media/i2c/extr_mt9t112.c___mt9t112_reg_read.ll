; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c___mt9t112_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c___mt9t112_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @__mt9t112_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9t112_reg_read(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @swab16(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  store i64 0, i64* %17, align 16
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  store i32 2, i32* %19, align 16
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32* %5, i32** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* @I2C_M_RD, align 8
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 16
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  store i32 2, i32* %31, align 16
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %39 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 2)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %2
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %46 = call i32 @memcpy(i32* %8, i32* %45, i32 2)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @swab16(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
