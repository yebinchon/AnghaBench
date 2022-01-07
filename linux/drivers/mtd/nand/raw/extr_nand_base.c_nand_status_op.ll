; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_status_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_status_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_sdr_timings = type { i32 }
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_status_op(%struct.nand_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nand_sdr_timings*, align 8
  %7 = alloca [2 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i64 @nand_has_exec_op(%struct.nand_chip* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 2
  %15 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %14)
  store %struct.nand_sdr_timings* %15, %struct.nand_sdr_timings** %6, align 8
  %16 = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %7, i64 0, i64 0
  %17 = load i32, i32* @NAND_CMD_STATUS, align 4
  %18 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %19 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PSEC_TO_NSEC(i32 %20)
  %22 = call i32 @NAND_OP_CMD(i32 %17, i32 %21)
  %23 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %16, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %16, i64 1
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @NAND_OP_8BIT_DATA_IN(i32 1, i32* %25, i32 0)
  %27 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %24, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %7, i64 0, i64 0
  %32 = call i32 @NAND_OPERATION(i32 %30, %struct.nand_op_instr* %31)
  %33 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %12
  %37 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %36, %12
  %41 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %42 = call i32 @nand_exec_op(%struct.nand_chip* %41, %struct.nand_operation* %8)
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %2
  %44 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %46, align 8
  %48 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %49 = bitcast %struct.nand_chip* %48 to %struct.nand_chip.1*
  %50 = load i32, i32* @NAND_CMD_STATUS, align 4
  %51 = call i32 %47(%struct.nand_chip.1* %49, i32 %50, i32 -1, i32 -1)
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %57, align 8
  %59 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %60 = bitcast %struct.nand_chip* %59 to %struct.nand_chip.0*
  %61 = call i32 %58(%struct.nand_chip.0* %60)
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %43
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_8BIT_DATA_IN(i32, i32*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
