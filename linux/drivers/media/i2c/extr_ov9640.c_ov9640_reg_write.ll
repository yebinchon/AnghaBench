; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed writing register 0x%02x!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed reading back register 0x%02x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8, i8)* @ov9640_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9640_reg_write(%struct.i2c_client* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %13 = load i8, i8* %6, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load i8, i8* %7, align 1
  store i8 %15, i8* %14, align 1
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i2c_transfer(i32 %26, %struct.i2c_msg* %11, i32 1)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i8, i8* %6, align 1
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %3
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i8, i8* %6, align 1
  %39 = call i32 @ov9640_reg_read(%struct.i2c_client* %37, i8 zeroext %38, i8* %9)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i8, i8* %6, align 1
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %45)
  br label %47

47:                                               ; preds = %42, %36
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @ov9640_reg_read(%struct.i2c_client*, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
