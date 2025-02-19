; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_chip_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_chip_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.fsl_upm_nand = type { i64, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"busy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @fun_chip_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fun_chip_ready(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.fsl_upm_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = call i32 @nand_to_mtd(%struct.nand_chip* %5)
  %7 = call %struct.fsl_upm_nand* @to_fsl_upm_nand(i32 %6)
  store %struct.fsl_upm_nand* %7, %struct.fsl_upm_nand** %4, align 8
  %8 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %12 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gpio_get_value(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_vdbg(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.fsl_upm_nand* @to_fsl_upm_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
