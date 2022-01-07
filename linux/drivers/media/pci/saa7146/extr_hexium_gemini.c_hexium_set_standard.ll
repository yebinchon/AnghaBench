; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_gemini.c_hexium_set_standard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_gemini.c_hexium_set_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hexium = type { i32 }
%struct.hexium_data = type { i32, i32 }
%union.i2c_smbus_data = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"hexium_init_done: hexium_set_standard() failed for address 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hexium*, %struct.hexium_data*)* @hexium_set_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexium_set_standard(%struct.hexium* %0, %struct.hexium_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hexium*, align 8
  %5 = alloca %struct.hexium_data*, align 8
  %6 = alloca %union.i2c_smbus_data, align 4
  %7 = alloca i32, align 4
  store %struct.hexium* %0, %struct.hexium** %4, align 8
  store %struct.hexium_data* %1, %struct.hexium_data** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @DEB_D(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.hexium_data*, %struct.hexium_data** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hexium_data, %struct.hexium_data* %10, i64 %12
  %14 = getelementptr inbounds %struct.hexium_data, %struct.hexium_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %43

17:                                               ; preds = %9
  %18 = load %struct.hexium_data*, %struct.hexium_data** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hexium_data, %struct.hexium_data* %18, i64 %20
  %22 = getelementptr inbounds %struct.hexium_data, %struct.hexium_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.i2c_smbus_data* %6 to i32*
  store i32 %23, i32* %24, align 4
  %25 = load %struct.hexium*, %struct.hexium** %4, align 8
  %26 = getelementptr inbounds %struct.hexium, %struct.hexium* %25, i32 0, i32 0
  %27 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %28 = load %struct.hexium_data*, %struct.hexium_data** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hexium_data, %struct.hexium_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.hexium_data, %struct.hexium_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %35 = call i64 @i2c_smbus_xfer(i32* %26, i32 108, i32 0, i32 %27, i32 %33, i32 %34, %union.i2c_smbus_data* %6)
  %36 = icmp ne i64 0, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %3, align 4
  br label %44

40:                                               ; preds = %17
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %9

43:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i64 @i2c_smbus_xfer(i32*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
