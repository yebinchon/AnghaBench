; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_upm_nand = type { i32, i64*, i32 }
%struct.mtd_info = type { %struct.fsl_upm_nand* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fun_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fun_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_upm_nand*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.fsl_upm_nand* @dev_get_drvdata(i32* %7)
  store %struct.fsl_upm_nand* %8, %struct.fsl_upm_nand** %3, align 8
  %9 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %9, i32 0, i32 2
  %11 = call %struct.mtd_info* @nand_to_mtd(i32* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %4, align 8
  %12 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %12, i32 0, i32 2
  %14 = call i32 @nand_release(i32* %13)
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %16, align 8
  %18 = call i32 @kfree(%struct.fsl_upm_nand* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %44, %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %47

35:                                               ; preds = %25
  %36 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gpio_free(i64 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %19

47:                                               ; preds = %34, %19
  %48 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %3, align 8
  %49 = call i32 @kfree(%struct.fsl_upm_nand* %48)
  ret i32 0
}

declare dso_local %struct.fsl_upm_nand* @dev_get_drvdata(i32*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @kfree(%struct.fsl_upm_nand*) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
