; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_create_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_create_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSR_DWE = common dso_local global i32 0, align 4
@CSR_DEF = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_PEC = common dso_local global i32 0, align 4
@CCODE_PEC = common dso_local global i64 0, align 8
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idt_89hpesx_dev* (%struct.i2c_client*)* @idt_create_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idt_89hpesx_dev* @idt_create_pdev(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.idt_89hpesx_dev*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 2
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.idt_89hpesx_dev* @devm_kmalloc(i32* %6, i32 24, i32 %7)
  store %struct.idt_89hpesx_dev* %8, %struct.idt_89hpesx_dev** %4, align 8
  %9 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %10 = icmp eq %struct.idt_89hpesx_dev* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.idt_89hpesx_dev* @ERR_PTR(i32 %13)
  store %struct.idt_89hpesx_dev* %14, %struct.idt_89hpesx_dev** %2, align 8
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %18 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %17, i32 0, i32 3
  store %struct.i2c_client* %16, %struct.i2c_client** %18, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.idt_89hpesx_dev* %20)
  %22 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %23 = call i32 @idt_get_fw_data(%struct.idt_89hpesx_dev* %22)
  %24 = load i32, i32* @CSR_DWE, align 4
  %25 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %26 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CSR_DEF, align 4
  %28 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %29 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I2C_FUNC_SMBUS_PEC, align 4
  %34 = call i64 @i2c_check_functionality(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %15
  %37 = load i64, i64* @CCODE_PEC, align 8
  %38 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %39 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %48

45:                                               ; preds = %15
  %46 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %47 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  store %struct.idt_89hpesx_dev* %49, %struct.idt_89hpesx_dev** %2, align 8
  br label %50

50:                                               ; preds = %48, %11
  %51 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %2, align 8
  ret %struct.idt_89hpesx_dev* %51
}

declare dso_local %struct.idt_89hpesx_dev* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local %struct.idt_89hpesx_dev* @ERR_PTR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.idt_89hpesx_dev*) #1

declare dso_local i32 @idt_get_fw_data(%struct.idt_89hpesx_dev*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
