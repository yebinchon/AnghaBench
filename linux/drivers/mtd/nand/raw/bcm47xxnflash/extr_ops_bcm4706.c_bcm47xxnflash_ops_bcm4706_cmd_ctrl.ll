; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.bcm47xxnflash = type { i32 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CTRL_CLE = common dso_local global i32 0, align 4
@NCTL_CMD0 = common dso_local global i32 0, align 4
@NAND_CMD_RESET = common dso_local global i32 0, align 4
@NCTL_CSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @bcm47xxnflash_ops_bcm4706_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xxnflash_ops_bcm4706_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm47xxnflash*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.bcm47xxnflash* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.bcm47xxnflash* %10, %struct.bcm47xxnflash** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NAND_CMD_NONE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %38

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NAND_CTRL_CLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NCTL_CMD0, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NAND_CMD_RESET, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @NCTL_CSA, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %7, align 8
  %34 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @bcm47xxnflash_ops_bcm4706_ctl_cmd(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %14
  ret void
}

declare dso_local %struct.bcm47xxnflash* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @bcm47xxnflash_ops_bcm4706_ctl_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
