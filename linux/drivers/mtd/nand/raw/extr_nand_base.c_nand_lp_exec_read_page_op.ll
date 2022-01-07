; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_lp_exec_read_page_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_lp_exec_read_page_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.nand_sdr_timings = type { i32, i32, i32 }
%struct.nand_op_instr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nand_operation = type { i32 }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i8*, i32)* @nand_lp_exec_read_page_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_lp_exec_read_page_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nand_sdr_timings*, align 8
  %13 = alloca [5 x i32], align 16
  %14 = alloca [5 x %struct.nand_op_instr], align 16
  %15 = alloca %struct.nand_operation, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %18)
  store %struct.nand_sdr_timings* %19, %struct.nand_sdr_timings** %12, align 8
  %20 = getelementptr inbounds [5 x %struct.nand_op_instr], [5 x %struct.nand_op_instr]* %14, i64 0, i64 0
  %21 = load i32, i32* @NAND_CMD_READ0, align 4
  %22 = call i32 @NAND_OP_CMD(i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %20, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %20, i64 1
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %28 = call i32 @NAND_OP_ADDR(i32 4, i32* %27, i32 0)
  %29 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %26, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %26, i64 1
  %33 = load i32, i32* @NAND_CMD_READSTART, align 4
  %34 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %12, align 8
  %35 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PSEC_TO_NSEC(i32 %36)
  %38 = call i32 @NAND_OP_CMD(i32 %33, i32 %37)
  %39 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %32, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %32, i64 1
  %43 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %12, align 8
  %44 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PSEC_TO_MSEC(i32 %45)
  %47 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %12, align 8
  %48 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PSEC_TO_NSEC(i32 %49)
  %51 = call i32 @NAND_OP_WAIT_RDY(i32 %46, i32 %50)
  %52 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %42, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %42, i64 1
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @NAND_OP_DATA_IN(i32 %56, i8* %57, i32 0)
  %59 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %55, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [5 x %struct.nand_op_instr], [5 x %struct.nand_op_instr]* %14, i64 0, i64 0
  %66 = call i32 @NAND_OPERATION(i32 %64, %struct.nand_op_instr* %65)
  %67 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %15, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %5
  %71 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %15, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %70, %5
  %75 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nand_fill_column_cycles(%struct.nand_chip* %75, i32* %76, i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %6, align 4
  br label %108

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = lshr i32 %86, 8
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  store i32 %87, i32* %88, align 4
  %89 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %83
  %96 = load i32, i32* %8, align 4
  %97 = lshr i32 %96, 16
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4
  store i32 %97, i32* %98, align 16
  %99 = getelementptr inbounds [5 x %struct.nand_op_instr], [5 x %struct.nand_op_instr]* %14, i64 0, i64 1
  %100 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %95, %83
  %106 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %107 = call i32 @nand_exec_op(%struct.nand_chip* %106, %struct.nand_operation* %15)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %81
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_WAIT_RDY(i32, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @NAND_OP_DATA_IN(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_fill_column_cycles(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
