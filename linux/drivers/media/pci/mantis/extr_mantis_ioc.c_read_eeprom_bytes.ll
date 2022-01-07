; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ioc.c_read_eeprom_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ioc.c_read_eeprom_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ERROR: i2c read: < err=%i d0=0x%02x d1=0x%02x >\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mantis_pci*, i32, i32*, i32)* @read_eeprom_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eeprom_bytes(%struct.mantis_pci* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mantis_pci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.mantis_pci* %0, %struct.mantis_pci** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %6, align 8
  %15 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %14, i32 0, i32 0
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %10, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  store i32 80, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  store i32* %12, i32** %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  store i32 80, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  %29 = load i32, i32* @I2C_M_RD, align 4
  store i32 %29, i32* %28, align 4
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %32 = call i32 @i2c_transfer(%struct.i2c_adapter* %30, %struct.i2c_msg* %31, i32 2)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %4
  %36 = load i32, i32* @MANTIS_ERROR, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(i32 %36, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
