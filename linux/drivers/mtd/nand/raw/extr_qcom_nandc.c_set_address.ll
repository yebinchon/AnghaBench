; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_nand_host = type { %struct.nand_chip }
%struct.nand_chip = type { i32 }
%struct.qcom_nand_controller = type { i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_ADDR0 = common dso_local global i32 0, align 4
@NAND_ADDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_nand_host*, i32, i32)* @set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_address(%struct.qcom_nand_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qcom_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.qcom_nand_controller*, align 8
  store %struct.qcom_nand_host* %0, %struct.qcom_nand_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qcom_nand_host*, %struct.qcom_nand_host** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_nand_host, %struct.qcom_nand_host* %9, i32 0, i32 0
  store %struct.nand_chip* %10, %struct.nand_chip** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %12 = call %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip* %11)
  store %struct.qcom_nand_controller* %12, %struct.qcom_nand_controller** %8, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %24 = load i32, i32* @NAND_ADDR0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 16
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %23, i32 %24, i32 %28)
  %30 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %8, align 8
  %31 = load i32, i32* @NAND_ADDR1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = call i32 @nandc_set_reg(%struct.qcom_nand_controller* %30, i32 %31, i32 %34)
  ret void
}

declare dso_local %struct.qcom_nand_controller* @get_qcom_nand_controller(%struct.nand_chip*) #1

declare dso_local i32 @nandc_set_reg(%struct.qcom_nand_controller*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
