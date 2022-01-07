; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmstb_nand_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmstb_nand_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32 }
%struct.mtd_info = type { i64 }

@NAND_CTRL_RDY = common dso_local global i32 0, align 4
@NAND_POLL_STATUS_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @brcmstb_nand_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_nand_wait_for_completion(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca %struct.brcmnand_controller*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.brcmnand_host* %10, %struct.brcmnand_host** %3, align 8
  %11 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %12 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %11, i32 0, i32 0
  %13 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  store %struct.brcmnand_controller* %13, %struct.brcmnand_controller** %4, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %22 = call i32 @disable_ctrl_irqs(%struct.brcmnand_controller* %21)
  %23 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %24 = load i32, i32* @NAND_CTRL_RDY, align 4
  %25 = load i32, i32* @NAND_CTRL_RDY, align 4
  %26 = call i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller* %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %6, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load i32, i32* @NAND_POLL_STATUS_TIMEOUT_MS, align 4
  %33 = call i64 @msecs_to_jiffies(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %35 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @wait_for_completion_timeout(i32* %35, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %31, %20
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @disable_ctrl_irqs(%struct.brcmnand_controller*) #1

declare dso_local i32 @bcmnand_ctrl_poll_status(%struct.brcmnand_controller*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
