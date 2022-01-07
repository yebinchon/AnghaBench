; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_i2c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_i2c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error reading EEPROM\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32, i32*, i32)* @i2c_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read_eeprom(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %12, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds i32, i32* %19, i64 1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  store i32 2, i32* %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 1
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %36 = load i32*, i32** %10, align 8
  store i32* %36, i32** %35, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 2
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 3
  %40 = load i32, i32* @I2C_M_RD, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %43 = call i32 @i2c_transfer(%struct.i2c_adapter* %41, %struct.i2c_msg* %42, i32 2)
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %5
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
