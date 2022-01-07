; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_send_cmd_readid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_send_cmd_readid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinfc_host = type { i32 }

@HINFC504_NANDINFO_LEN = common dso_local global i32 0, align 4
@HINFC504_DATA_NUM = common dso_local global i32 0, align 4
@NAND_CMD_READID = common dso_local global i32 0, align 4
@HINFC504_CMD = common dso_local global i32 0, align 4
@HINFC504_ADDRL = common dso_local global i32 0, align 4
@HINFC504_OP_CMD1_EN = common dso_local global i32 0, align 4
@HINFC504_OP_ADDR_EN = common dso_local global i32 0, align 4
@HINFC504_OP_READ_DATA_EN = common dso_local global i32 0, align 4
@HINFC504_OP_NF_CS_MASK = common dso_local global i32 0, align 4
@HINFC504_OP_NF_CS_SHIFT = common dso_local global i32 0, align 4
@HINFC504_OP_ADDR_CYCLE_SHIFT = common dso_local global i32 0, align 4
@HINFC504_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinfc_host*)* @hisi_nfc_send_cmd_readid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nfc_send_cmd_readid(%struct.hinfc_host* %0) #0 {
  %2 = alloca %struct.hinfc_host*, align 8
  store %struct.hinfc_host* %0, %struct.hinfc_host** %2, align 8
  %3 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %4 = load i32, i32* @HINFC504_NANDINFO_LEN, align 4
  %5 = load i32, i32* @HINFC504_DATA_NUM, align 4
  %6 = call i32 @hinfc_write(%struct.hinfc_host* %3, i32 %4, i32 %5)
  %7 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %8 = load i32, i32* @NAND_CMD_READID, align 4
  %9 = load i32, i32* @HINFC504_CMD, align 4
  %10 = call i32 @hinfc_write(%struct.hinfc_host* %7, i32 %8, i32 %9)
  %11 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %12 = load i32, i32* @HINFC504_ADDRL, align 4
  %13 = call i32 @hinfc_write(%struct.hinfc_host* %11, i32 0, i32 %12)
  %14 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %15 = load i32, i32* @HINFC504_OP_CMD1_EN, align 4
  %16 = load i32, i32* @HINFC504_OP_ADDR_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @HINFC504_OP_READ_DATA_EN, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %21 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HINFC504_OP_NF_CS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @HINFC504_OP_NF_CS_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %19, %26
  %28 = load i32, i32* @HINFC504_OP_ADDR_CYCLE_SHIFT, align 4
  %29 = shl i32 1, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @HINFC504_OP, align 4
  %32 = call i32 @hinfc_write(%struct.hinfc_host* %14, i32 %30, i32 %31)
  %33 = load %struct.hinfc_host*, %struct.hinfc_host** %2, align 8
  %34 = call i32 @wait_controller_finished(%struct.hinfc_host* %33)
  ret i32 0
}

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

declare dso_local i32 @wait_controller_finished(%struct.hinfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
