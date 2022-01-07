; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_set_features_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_set_features_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.2*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_chip.2 = type opaque
%struct.nand_sdr_timings = type { i32, i32, i32 }
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@ONFI_SUBFEATURE_PARAM_LEN = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i8*)* @nand_set_features_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_set_features_op(%struct.nand_chip* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nand_sdr_timings*, align 8
  %12 = alloca [4 x %struct.nand_op_instr], align 16
  %13 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = call i64 @nand_has_exec_op(%struct.nand_chip* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 2
  %22 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %21)
  store %struct.nand_sdr_timings* %22, %struct.nand_sdr_timings** %11, align 8
  %23 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %12, i64 0, i64 0
  %24 = load i32, i32* @NAND_CMD_SET_FEATURES, align 4
  %25 = call i32 @NAND_OP_CMD(i32 %24, i32 0)
  %26 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %23, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %23, i64 1
  %28 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %29 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PSEC_TO_NSEC(i32 %30)
  %32 = call i32 @NAND_OP_ADDR(i32 1, i32* %6, i32 %31)
  %33 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %27, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %27, i64 1
  %35 = load i32, i32* @ONFI_SUBFEATURE_PARAM_LEN, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %38 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PSEC_TO_NSEC(i32 %39)
  %41 = call i32 @NAND_OP_8BIT_DATA_OUT(i32 %35, i8* %36, i32 %40)
  %42 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %34, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %34, i64 1
  %44 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %45 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PSEC_TO_MSEC(i32 %46)
  %48 = call i32 @NAND_OP_WAIT_RDY(i32 %47, i32 0)
  %49 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %43, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %12, i64 0, i64 0
  %54 = call i32 @NAND_OPERATION(i32 %52, %struct.nand_op_instr* %53)
  %55 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %13, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %57 = call i32 @nand_exec_op(%struct.nand_chip* %56, %struct.nand_operation* %13)
  store i32 %57, i32* %4, align 4
  br label %109

58:                                               ; preds = %3
  %59 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32 (%struct.nand_chip.2*, i32, i32, i32)*, i32 (%struct.nand_chip.2*, i32, i32, i32)** %61, align 8
  %63 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %64 = bitcast %struct.nand_chip* %63 to %struct.nand_chip.2*
  %65 = load i32, i32* @NAND_CMD_SET_FEATURES, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 %62(%struct.nand_chip.2* %64, i32 %65, i32 %66, i32 -1)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %85, %58
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ONFI_SUBFEATURE_PARAM_LEN, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %75, align 8
  %77 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %78 = bitcast %struct.nand_chip* %77 to %struct.nand_chip.1*
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %76(%struct.nand_chip.1* %78, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %68

88:                                               ; preds = %68
  %89 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %91, align 8
  %93 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %94 = bitcast %struct.nand_chip* %93 to %struct.nand_chip.0*
  %95 = call i32 %92(%struct.nand_chip.0* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %109

100:                                              ; preds = %88
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105, %98, %19
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_8BIT_DATA_OUT(i32, i8*, i32) #1

declare dso_local i32 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
