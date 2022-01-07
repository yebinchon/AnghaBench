; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_eeprom_md7134_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_eeprom_md7134_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: DVB-T demod i2c gate was left open\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: EEPROM i2c gate close failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*)* @saa7134_i2c_eeprom_md7134_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7134_i2c_eeprom_md7134_gate(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  %8 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  store i32 7, i32* %3, align 4
  %9 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32* %3, i32** %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i64 1
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  store i32 8, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32* %4, i32** %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %19 = load i32, i32* @I2C_M_RD, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %8, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32 8, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32 2, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %29 = call i32 @i2c_transfer(i32* %27, %struct.i2c_msg* %28, i32 2)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %57

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, -3
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %8, i64 0, i64 0
  %49 = call i32 @i2c_transfer(i32* %47, %struct.i2c_msg* %48, i32 1)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %36
  br label %57

57:                                               ; preds = %56, %32, %1
  ret void
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
