; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_exit_status_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_exit_status_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_exit_status_op(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca [1 x %struct.nand_op_instr], align 4
  %5 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i64 @nand_has_exec_op(%struct.nand_chip* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %4, i64 0, i64 0
  %11 = load i32, i32* @NAND_CMD_READ0, align 4
  %12 = call i32 @NAND_OP_CMD(i32 %11, i32 0)
  %13 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %10, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %4, i64 0, i64 0
  %18 = call i32 @NAND_OPERATION(i32 %16, %struct.nand_op_instr* %17)
  %19 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %21 = call i32 @nand_exec_op(%struct.nand_chip* %20, %struct.nand_operation* %5)
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nand_chip.0*, i32, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32, i32)** %25, align 8
  %27 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %28 = bitcast %struct.nand_chip* %27 to %struct.nand_chip.0*
  %29 = load i32, i32* @NAND_CMD_READ0, align 4
  %30 = call i32 %26(%struct.nand_chip.0* %28, i32 %29, i32 -1, i32 -1)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
