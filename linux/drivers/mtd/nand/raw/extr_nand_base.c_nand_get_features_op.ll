; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_get_features_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_get_features_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_sdr_timings = type { i32, i32, i32 }
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_GET_FEATURES = common dso_local global i32 0, align 4
@ONFI_SUBFEATURE_PARAM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i8*)* @nand_get_features_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_get_features_op(%struct.nand_chip* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_sdr_timings*, align 8
  %11 = alloca [4 x %struct.nand_op_instr], align 16
  %12 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = call i64 @nand_has_exec_op(%struct.nand_chip* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 2
  %21 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %20)
  store %struct.nand_sdr_timings* %21, %struct.nand_sdr_timings** %10, align 8
  %22 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %11, i64 0, i64 0
  %23 = load i32, i32* @NAND_CMD_GET_FEATURES, align 4
  %24 = call i32 @NAND_OP_CMD(i32 %23, i32 0)
  %25 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %22, i64 1
  %27 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %28 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PSEC_TO_NSEC(i32 %29)
  %31 = call i32 @NAND_OP_ADDR(i32 1, i32* %6, i32 %30)
  %32 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %26, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %26, i64 1
  %34 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %35 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PSEC_TO_MSEC(i32 %36)
  %38 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %39 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PSEC_TO_NSEC(i32 %40)
  %42 = call i32 @NAND_OP_WAIT_RDY(i32 %37, i32 %41)
  %43 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i64 1
  %45 = load i32, i32* @ONFI_SUBFEATURE_PARAM_LEN, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @NAND_OP_8BIT_DATA_IN(i32 %45, i8* %46, i32 0)
  %48 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %44, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %11, i64 0, i64 0
  %53 = call i32 @NAND_OPERATION(i32 %51, %struct.nand_op_instr* %52)
  %54 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %56 = call i32 @nand_exec_op(%struct.nand_chip* %55, %struct.nand_operation* %12)
  store i32 %56, i32* %4, align 4
  br label %87

57:                                               ; preds = %3
  %58 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %60, align 8
  %62 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %63 = bitcast %struct.nand_chip* %62 to %struct.nand_chip.1*
  %64 = load i32, i32* @NAND_CMD_GET_FEATURES, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 %61(%struct.nand_chip.1* %63, i32 %64, i32 %65, i32 -1)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %83, %57
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ONFI_SUBFEATURE_PARAM_LEN, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %74, align 8
  %76 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %77 = bitcast %struct.nand_chip* %76 to %struct.nand_chip.0*
  %78 = call i32 %75(%struct.nand_chip.0* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %67

86:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @NAND_OP_8BIT_DATA_IN(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
