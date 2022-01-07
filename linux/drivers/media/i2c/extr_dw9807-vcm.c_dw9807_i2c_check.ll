; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_dw9807-vcm.c_dw9807_i2c_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_dw9807-vcm.c_dw9807_i2c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DW9807_STATUS_ADDR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [40 x i8] c"I2C write STATUS address fail ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"I2C read STATUS value fail ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @dw9807_i2c_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw9807_i2c_check(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load i8, i8* @DW9807_STATUS_ADDR, align 1
  store i8 %7, i8* %4, align 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call i32 @i2c_master_send(%struct.i2c_client* %8, i8* %4, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 @i2c_master_recv(%struct.i2c_client* %19, i8* %5, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %23, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
