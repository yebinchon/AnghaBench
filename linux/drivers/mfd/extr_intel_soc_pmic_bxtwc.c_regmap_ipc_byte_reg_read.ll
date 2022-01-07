; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_regmap_ipc_byte_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_bxtwc.c_regmap_ipc_byte_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_pmic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_ADDR_MASK = common dso_local global i32 0, align 4
@REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@BXTWC_DEVICE1_ADDR = common dso_local global i32 0, align 4
@REG_OFFSET_MASK = common dso_local global i32 0, align 4
@PMC_IPC_PMIC_ACCESS = common dso_local global i32 0, align 4
@PMC_IPC_PMIC_ACCESS_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read from PMIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @regmap_ipc_byte_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_ipc_byte_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.intel_soc_pmic*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.intel_soc_pmic*
  store %struct.intel_soc_pmic* %14, %struct.intel_soc_pmic** %12, align 8
  %15 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %12, align 8
  %16 = icmp ne %struct.intel_soc_pmic* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @REG_ADDR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @REG_ADDR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @REG_ADDR_SHIFT, align 4
  %30 = lshr i32 %28, %29
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @BXTWC_DEVICE1_ADDR, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* @REG_OFFSET_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @PMC_IPC_PMIC_ACCESS, align 4
  %42 = load i32, i32* @PMC_IPC_PMIC_ACCESS_READ, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %45 = call i32 @intel_pmc_ipc_command(i32 %41, i32 %42, i32* %43, i32 8, i32* %44, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %12, align 8
  %50 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %33
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %48, %17
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @intel_pmc_ipc_command(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
