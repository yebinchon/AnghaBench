; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_chtwc.c_cht_wc_byte_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_chtwc.c_cht_wc_byte_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }

@REG_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error I2C address not specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@REG_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @cht_wc_byte_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_byte_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.i2c_client*
  store %struct.i2c_client* %12, %struct.i2c_client** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @REG_ADDR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @REG_ADDR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @REG_ADDR_SHIFT, align 4
  %31 = lshr i32 %29, %30
  %32 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @REG_OFFSET_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %26
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %44, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
