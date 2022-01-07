; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid chip select\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @qcom_nandc_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_nandc_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %6)
  store %struct.qcom_nand_controller* %7, %struct.qcom_nand_controller** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %16

11:                                               ; preds = %2
  %12 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %5, align 8
  %13 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
