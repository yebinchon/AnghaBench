; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_wait_rdy_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_wait_rdy_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32)* @nand_wait_rdy_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_wait_rdy_op(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.nand_op_instr], align 4
  %9 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call i64 @nand_has_exec_op(%struct.nand_chip* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %8, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @PSEC_TO_MSEC(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PSEC_TO_NSEC(i32 %17)
  %19 = call i32 @NAND_OP_WAIT_RDY(i32 %16, i32 %18)
  %20 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %14, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %8, i64 0, i64 0
  %25 = call i32 @NAND_OPERATION(i32 %23, %struct.nand_op_instr* %24)
  %26 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = call i32 @nand_exec_op(%struct.nand_chip* %27, %struct.nand_operation* %9)
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @udelay(i32 %39)
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = call i32 @nand_wait_ready(%struct.nand_chip* %42)
  br label %44

44:                                               ; preds = %41, %35
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local i32 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
