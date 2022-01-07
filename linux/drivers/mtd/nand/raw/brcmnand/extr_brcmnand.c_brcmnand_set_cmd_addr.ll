; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_set_cmd_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_set_cmd_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { i32, %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32 }

@BRCMNAND_CMD_EXT_ADDRESS = common dso_local global i32 0, align 4
@BRCMNAND_CMD_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @brcmnand_set_cmd_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_set_cmd_addr(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.brcmnand_host*, align 8
  %7 = alloca %struct.brcmnand_controller*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %8)
  store %struct.nand_chip* %9, %struct.nand_chip** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.brcmnand_host* %11, %struct.brcmnand_host** %6, align 8
  %12 = load %struct.brcmnand_host*, %struct.brcmnand_host** %6, align 8
  %13 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %12, i32 0, i32 1
  %14 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %13, align 8
  store %struct.brcmnand_controller* %14, %struct.brcmnand_controller** %7, align 8
  %15 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %16 = load i32, i32* @BRCMNAND_CMD_EXT_ADDRESS, align 4
  %17 = load %struct.brcmnand_host*, %struct.brcmnand_host** %6, align 8
  %18 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 32
  %23 = and i32 %22, 65535
  %24 = or i32 %20, %23
  %25 = call i32 @brcmnand_write_reg(%struct.brcmnand_controller* %15, i32 %16, i32 %24)
  %26 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %27 = load i32, i32* @BRCMNAND_CMD_EXT_ADDRESS, align 4
  %28 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %26, i32 %27)
  %29 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %30 = load i32, i32* @BRCMNAND_CMD_ADDRESS, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @lower_32_bits(i32 %31)
  %33 = call i32 @brcmnand_write_reg(%struct.brcmnand_controller* %29, i32 %30, i32 %32)
  %34 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %7, align 8
  %35 = load i32, i32* @BRCMNAND_CMD_ADDRESS, align 4
  %36 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %34, i32 %35)
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @brcmnand_write_reg(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @brcmnand_read_reg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
