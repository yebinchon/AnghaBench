; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_socrates_nand.c_socrates_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_socrates_nand.c_socrates_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.socrates_nand_host = type { i32 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@FPGA_NAND_CMD_COMMAND = common dso_local global i32 0, align 4
@FPGA_NAND_CMD_ADDR = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@FPGA_NAND_ENABLE = common dso_local global i32 0, align 4
@FPGA_NAND_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @socrates_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socrates_nand_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socrates_nand_host*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.socrates_nand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.socrates_nand_host* %10, %struct.socrates_nand_host** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NAND_CMD_NONE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %45

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NAND_CLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @FPGA_NAND_CMD_COMMAND, align 4
  store i32 %21, i32* %8, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @FPGA_NAND_CMD_ADDR, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NAND_NCE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @FPGA_NAND_ENABLE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* @FPGA_NAND_DATA_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %7, align 8
  %41 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @out_be32(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %14
  ret void
}

declare dso_local %struct.socrates_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @out_be32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
