; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_send_page_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_send_page_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.mxc_nand_host = type { i32 }

@NFC_V1_V2_BUF_ADDR = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @send_page_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_page_v2(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mxc_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %7)
  store %struct.nand_chip* %8, %struct.nand_chip** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %10 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.mxc_nand_host* %10, %struct.mxc_nand_host** %6, align 8
  %11 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %12 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 4
  %15 = load i32, i32* @NFC_V1_V2_BUF_ADDR, align 4
  %16 = call i32 @writew(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NFC_V1_V2_CONFIG2, align 4
  %19 = call i32 @writew(i32 %17, i32 %18)
  %20 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %21 = call i32 @wait_op_done(%struct.mxc_nand_host* %20, i32 1)
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @wait_op_done(%struct.mxc_nand_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
