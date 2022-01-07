; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_prog_page_end_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_prog_page_end_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_sdr_timings = type { i32, i32 }
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_prog_page_end_op(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_sdr_timings*, align 8
  %7 = alloca [2 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call i64 @nand_has_exec_op(%struct.nand_chip* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 2
  %15 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %14)
  store %struct.nand_sdr_timings* %15, %struct.nand_sdr_timings** %6, align 8
  %16 = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %7, i64 0, i64 0
  %17 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %18 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %19 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PSEC_TO_NSEC(i32 %20)
  %22 = call i32 @NAND_OP_CMD(i32 %17, i32 %21)
  %23 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %16, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %16, i64 1
  %25 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %26 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PSEC_TO_MSEC(i32 %27)
  %29 = call i32 @NAND_OP_WAIT_RDY(i32 %28, i32 0)
  %30 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %24, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %7, i64 0, i64 0
  %35 = call i32 @NAND_OPERATION(i32 %33, %struct.nand_op_instr* %34)
  %36 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = call i32 @nand_exec_op(%struct.nand_chip* %37, %struct.nand_operation* %8)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %12
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %82

43:                                               ; preds = %12
  %44 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %45 = call i32 @nand_status_op(%struct.nand_chip* %44, i32* %5)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %43
  br label %73

51:                                               ; preds = %1
  %52 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %54, align 8
  %56 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %57 = bitcast %struct.nand_chip* %56 to %struct.nand_chip.1*
  %58 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %59 = call i32 %55(%struct.nand_chip.1* %57, i32 %58, i32 -1, i32 -1)
  %60 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %62, align 8
  %64 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %65 = bitcast %struct.nand_chip* %64 to %struct.nand_chip.0*
  %66 = call i32 %63(%struct.nand_chip.0* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %82

71:                                               ; preds = %51
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %50
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %69, %48, %41
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
