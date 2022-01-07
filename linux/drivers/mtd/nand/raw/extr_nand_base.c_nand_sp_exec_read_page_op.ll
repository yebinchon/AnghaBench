; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_sp_exec_read_page_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_sp_exec_read_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.mtd_info = type { i32 }
%struct.nand_sdr_timings = type { i32, i32, i32 }
%struct.nand_op_instr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_READ1 = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i8*, i32)* @nand_sp_exec_read_page_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_sp_exec_read_page_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.nand_sdr_timings*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x %struct.nand_op_instr], align 16
  %16 = alloca %struct.nand_operation, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %12, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 2
  %22 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %21)
  store %struct.nand_sdr_timings* %22, %struct.nand_sdr_timings** %13, align 8
  %23 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %24 = load i32, i32* @NAND_CMD_READ0, align 4
  %25 = call i64 @NAND_OP_CMD(i32 %24, i32 0)
  %26 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %23, i32 0, i32 0
  %27 = bitcast %struct.TYPE_6__* %26 to i64*
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %23, i64 1
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %30 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %13, align 8
  %31 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PSEC_TO_NSEC(i32 %32)
  %34 = call i64 @NAND_OP_ADDR(i32 3, i32* %29, i32 %33)
  %35 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %28, i32 0, i32 0
  %36 = bitcast %struct.TYPE_6__* %35 to i64*
  store i64 %34, i64* %36, align 8
  %37 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %28, i64 1
  %38 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %13, align 8
  %39 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PSEC_TO_MSEC(i32 %40)
  %42 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %13, align 8
  %43 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PSEC_TO_NSEC(i32 %44)
  %46 = call i64 @NAND_OP_WAIT_RDY(i32 %41, i32 %45)
  %47 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i32 0, i32 0
  %48 = bitcast %struct.TYPE_6__* %47 to i64*
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i64 1
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i64 @NAND_OP_DATA_IN(i32 %50, i8* %51, i32 0)
  %53 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %49, i32 0, i32 0
  %54 = bitcast %struct.TYPE_6__* %53 to i64*
  store i64 %52, i64* %54, align 8
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %59 = call i32 @NAND_OPERATION(i32 %57, %struct.nand_op_instr* %58)
  %60 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %16, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %5
  %64 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %16, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %63, %5
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp uge i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i32, i32* @NAND_CMD_READOOB, align 4
  %75 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %76 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %96

79:                                               ; preds = %67
  %80 = load i32, i32* %9, align 4
  %81 = icmp uge i32 %80, 256
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @NAND_CMD_READ1, align 4
  %91 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %92 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %82, %79
  br label %96

96:                                               ; preds = %95, %73
  %97 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @nand_fill_column_cycles(%struct.nand_chip* %97, i32* %98, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %6, align 4
  br label %130

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = lshr i32 %108, 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %109, i32* %110, align 8
  %111 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %105
  %118 = load i32, i32* %8, align 4
  %119 = lshr i32 %118, 16
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 1
  %122 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %117, %105
  %128 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %129 = call i32 @nand_exec_op(%struct.nand_chip* %128, %struct.nand_operation* %16)
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %103
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i64 @NAND_OP_CMD(i32, i32) #1

declare dso_local i64 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i64 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i64 @NAND_OP_DATA_IN(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_fill_column_cycles(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
