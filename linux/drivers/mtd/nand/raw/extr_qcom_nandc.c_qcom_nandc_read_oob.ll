; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.qcom_nand_host = type { i32 }
%struct.qcom_nand_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @qcom_nandc_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_read_oob(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_nand_host*, align 8
  %6 = alloca %struct.qcom_nand_controller*, align 8
  %7 = alloca %struct.nand_ecc_ctrl*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip* %8)
  store %struct.qcom_nand_host* %9, %struct.qcom_nand_host** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %10)
  store %struct.qcom_nand_controller* %11, %struct.qcom_nand_controller** %6, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %13, %struct.nand_ecc_ctrl** %7, align 8
  %14 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %15 = call i32 @clear_read_regs(%struct.qcom_nand_controller* %14)
  %16 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %6, align 8
  %17 = call i32 @clear_bam_transaction(%struct.qcom_nand_controller* %16)
  %18 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %5, align 8
  %19 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @set_address(%struct.qcom_nand_host* %20, i32 0, i32 %21)
  %23 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %5, align 8
  %24 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %7, align 8
  %25 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @update_rw_regs(%struct.qcom_nand_host* %23, i32 %26, i32 1)
  %28 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %5, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @read_page_ecc(%struct.qcom_nand_host* %28, i32* null, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local %struct.qcom_nand_host* @to_qcom_nand_host(%struct.nand_chip*) #1

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @clear_read_regs(%struct.qcom_nand_controller*) #1

declare dso_local i32 @clear_bam_transaction(%struct.qcom_nand_controller*) #1

declare dso_local i32 @set_address(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @update_rw_regs(%struct.qcom_nand_host*, i32, i32) #1

declare dso_local i32 @read_page_ecc(%struct.qcom_nand_host*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
