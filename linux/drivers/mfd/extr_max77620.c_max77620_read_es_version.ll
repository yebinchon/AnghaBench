; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_read_es_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_read_es_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_chip = type { i32, i32 }

@MAX77620_REG_CID0 = common dso_local global i32 0, align 4
@MAX77620_REG_CID5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read CID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CID%d: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PMIC Version OTP:0x%02X and ES:0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_chip*)* @max77620_read_es_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_read_es_version(%struct.max77620_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77620_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max77620_chip* %0, %struct.max77620_chip** %3, align 8
  %8 = load i32, i32* @MAX77620_REG_CID0, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX77620_REG_CID5, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.max77620_chip*, %struct.max77620_chip** %3, align 8
  %15 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.max77620_chip*, %struct.max77620_chip** %3, align 8
  %23 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %57

28:                                               ; preds = %13
  %29 = load %struct.max77620_chip*, %struct.max77620_chip** %3, align 8
  %30 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX77620_REG_CID0, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX77620_REG_CID0, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %41
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %9

46:                                               ; preds = %9
  %47 = load %struct.max77620_chip*, %struct.max77620_chip** %3, align 8
  %48 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %51 = load i32, i32* %50, align 16
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MAX77620_CID5_DIDM(i32 %53)
  %55 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %46, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @MAX77620_CID5_DIDM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
