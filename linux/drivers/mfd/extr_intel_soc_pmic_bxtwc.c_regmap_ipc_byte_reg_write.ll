; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_regmap_ipc_byte_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_regmap_ipc_byte_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_pmic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_ADDR_MASK = common dso_local global i32 0, align 4
@REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@BXTWC_DEVICE1_ADDR = common dso_local global i32 0, align 4
@REG_OFFSET_MASK = common dso_local global i32 0, align 4
@PMC_IPC_PMIC_ACCESS = common dso_local global i32 0, align 4
@PMC_IPC_PMIC_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to write to PMIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @regmap_ipc_byte_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_ipc_byte_reg_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca %struct.intel_soc_pmic*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.intel_soc_pmic*
  store %struct.intel_soc_pmic* %13, %struct.intel_soc_pmic** %11, align 8
  %14 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %11, align 8
  %15 = icmp ne %struct.intel_soc_pmic* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @REG_ADDR_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @REG_ADDR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @REG_ADDR_SHIFT, align 4
  %29 = lshr i32 %27, %28
  store i32 %29, i32* %9, align 4
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* @BXTWC_DEVICE1_ADDR, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* @REG_OFFSET_MASK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @PMC_IPC_PMIC_ACCESS, align 4
  %43 = load i32, i32* @PMC_IPC_PMIC_ACCESS_WRITE, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %45 = call i32 @intel_pmc_ipc_command(i32 %42, i32 %43, i32* %44, i32 12, i32* null, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %32
  %49 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %11, align 8
  %50 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %48, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @intel_pmc_ipc_command(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
