; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32, i32 }

@BRCMNAND_CMD_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"send native cmd %d addr 0x%llx\0A\00", align 1
@NAND_CTRL_RDY = common dso_local global i32 0, align 4
@BRCMNAND_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmnand_host*, i32)* @brcmnand_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_send_cmd(%struct.brcmnand_host* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmnand_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %9 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %8, i32 0, i32 0
  %10 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %9, align 8
  store %struct.brcmnand_controller* %10, %struct.brcmnand_controller** %5, align 8
  %11 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %12 = load i32, i32* @BRCMNAND_CMD_ADDRESS, align 4
  %13 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %15 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %21 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %28 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %30 = load i32, i32* @NAND_CTRL_RDY, align 4
  %31 = load i32, i32* @NAND_CTRL_RDY, align 4
  %32 = call i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = call i32 (...) @mb()
  %36 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %37 = load i32, i32* @BRCMNAND_CMD_START, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %40 = call i32 @brcmnand_cmd_shift(%struct.brcmnand_controller* %39)
  %41 = shl i32 %38, %40
  %42 = call i32 @brcmnand_write_reg(%struct.brcmnand_controller* %36, i32 %37, i32 %41)
  ret void
}

declare dso_local i32 @brcmnand_read_reg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @brcmnand_write_reg(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @brcmnand_cmd_shift(%struct.brcmnand_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
