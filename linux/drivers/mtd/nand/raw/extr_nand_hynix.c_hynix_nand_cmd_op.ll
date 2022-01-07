; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_cmd_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_cmd_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @hynix_nand_cmd_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hynix_nand_cmd_op(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call i64 @nand_has_exec_op(%struct.nand_chip* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %6, i64 0, i64 0
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @NAND_OP_CMD(i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %6, i64 0, i64 0
  %20 = call i32 @NAND_OPERATION(i32 %18, %struct.nand_op_instr* %19)
  %21 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = call i32 @nand_exec_op(%struct.nand_chip* %22, %struct.nand_operation* %7)
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nand_chip.0*, i32, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32, i32)** %27, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = bitcast %struct.nand_chip* %29 to %struct.nand_chip.0*
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %28(%struct.nand_chip.0* %30, i32 %31, i32 -1, i32 -1)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
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
