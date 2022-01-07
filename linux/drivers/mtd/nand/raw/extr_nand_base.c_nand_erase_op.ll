; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_erase_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_erase_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_sdr_timings = type { i32, i32 }
%struct.nand_op_instr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_ERASE1 = common dso_local global i32 0, align 4
@NAND_CMD_ERASE2 = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_erase_op(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_sdr_timings*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [4 x %struct.nand_op_instr], align 16
  %12 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  %21 = shl i32 %13, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = call i64 @nand_has_exec_op(%struct.nand_chip* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %102

25:                                               ; preds = %2
  %26 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 5
  %28 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %27)
  store %struct.nand_sdr_timings* %28, %struct.nand_sdr_timings** %9, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* %6, align 4
  %33 = lshr i32 %32, 8
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds i32, i32* %31, i64 1
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 16
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %11, i64 0, i64 0
  %38 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %39 = call i32 @NAND_OP_CMD(i32 %38, i32 0)
  %40 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i64 1
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %45 = call i32 @NAND_OP_ADDR(i32 2, i32* %44, i32 0)
  %46 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %43, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %43, i64 1
  %50 = load i32, i32* @NAND_CMD_ERASE2, align 4
  %51 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %52 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PSEC_TO_MSEC(i32 %53)
  %55 = call i32 @NAND_OP_CMD(i32 %50, i32 %54)
  %56 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %49, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %49, i64 1
  %60 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %61 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PSEC_TO_MSEC(i32 %62)
  %64 = call i32 @NAND_OP_WAIT_RDY(i32 %63, i32 0)
  %65 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %59, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %11, i64 0, i64 0
  %72 = call i32 @NAND_OPERATION(i32 %70, %struct.nand_op_instr* %71)
  %73 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %12, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %75 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %25
  %81 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %11, i64 0, i64 1
  %82 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %25
  %88 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %89 = call i32 @nand_exec_op(%struct.nand_chip* %88, %struct.nand_operation* %12)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %142

94:                                               ; preds = %87
  %95 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %96 = call i32 @nand_status_op(%struct.nand_chip* %95, i32* %8)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %142

101:                                              ; preds = %94
  br label %133

102:                                              ; preds = %2
  %103 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %105, align 8
  %107 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %108 = bitcast %struct.nand_chip* %107 to %struct.nand_chip.1*
  %109 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 %106(%struct.nand_chip.1* %108, i32 %109, i32 -1, i32 %110)
  %112 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %114, align 8
  %116 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %117 = bitcast %struct.nand_chip* %116 to %struct.nand_chip.1*
  %118 = load i32, i32* @NAND_CMD_ERASE2, align 4
  %119 = call i32 %115(%struct.nand_chip.1* %117, i32 %118, i32 -1, i32 -1)
  %120 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %122, align 8
  %124 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %125 = bitcast %struct.nand_chip* %124 to %struct.nand_chip.0*
  %126 = call i32 %123(%struct.nand_chip.0* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %102
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %3, align 4
  br label %142

131:                                              ; preds = %102
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %131, %101
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %138, %129, %99, %92
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
