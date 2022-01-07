; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_change_write_column_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_change_write_column_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32, i32 }
%struct.nand_sdr_timings = type { i32 }
%struct.nand_op_instr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nand_operation = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@NAND_CMD_RNDIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_change_write_column_op(%struct.nand_chip* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.nand_sdr_timings*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca [3 x %struct.nand_op_instr], align 4
  %16 = alloca %struct.nand_operation, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %134

28:                                               ; preds = %22, %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %29, %30
  %32 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = icmp ugt i32 %31, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %134

43:                                               ; preds = %28
  %44 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ule i32 %46, 512
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %134

51:                                               ; preds = %43
  %52 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %53 = call i64 @nand_has_exec_op(%struct.nand_chip* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %51
  %56 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 2
  %58 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %57)
  store %struct.nand_sdr_timings* %58, %struct.nand_sdr_timings** %13, align 8
  %59 = getelementptr inbounds [3 x %struct.nand_op_instr], [3 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %60 = load i32, i32* @NAND_CMD_RNDIN, align 4
  %61 = call i32 @NAND_OP_CMD(i32 %60, i32 0)
  %62 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %59, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %59, i64 1
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %67 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %13, align 8
  %68 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PSEC_TO_NSEC(i32 %69)
  %71 = call i32 @NAND_OP_ADDR(i32 2, i32* %66, i32 %70)
  %72 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %65, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %65, i64 1
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @NAND_OP_DATA_OUT(i32 %76, i8* %77, i32 0)
  %79 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %75, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds [3 x %struct.nand_op_instr], [3 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %86 = call i32 @NAND_OPERATION(i32 %84, %struct.nand_op_instr* %85)
  %87 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %16, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @nand_fill_column_cycles(%struct.nand_chip* %88, i32* %89, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %55
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %6, align 4
  br label %134

96:                                               ; preds = %55
  %97 = load i32, i32* %11, align 4
  %98 = getelementptr inbounds [3 x %struct.nand_op_instr], [3 x %struct.nand_op_instr]* %15, i64 0, i64 2
  %99 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %104, %96
  %109 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %110 = call i32 @nand_exec_op(%struct.nand_chip* %109, %struct.nand_operation* %16)
  store i32 %110, i32* %6, align 4
  br label %134

111:                                              ; preds = %51
  %112 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %114, align 8
  %116 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %117 = bitcast %struct.nand_chip* %116 to %struct.nand_chip.1*
  %118 = load i32, i32* @NAND_CMD_RNDIN, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 %115(%struct.nand_chip.1* %117, i32 %118, i32 %119, i32 -1)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %111
  %124 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %125 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.0*, i8*, i32)** %126, align 8
  %128 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %129 = bitcast %struct.nand_chip* %128 to %struct.nand_chip.0*
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 %127(%struct.nand_chip.0* %129, i8* %130, i32 %131)
  br label %133

133:                                              ; preds = %123, %111
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %108, %94, %48, %40, %25
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_DATA_OUT(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_fill_column_cycles(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
