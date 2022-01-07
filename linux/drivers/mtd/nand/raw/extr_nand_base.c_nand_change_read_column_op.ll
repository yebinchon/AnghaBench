; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_change_read_column_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_change_read_column_op.c"
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
@NAND_CMD_RNDOUT = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_change_read_column_op(%struct.nand_chip* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.nand_sdr_timings*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca [4 x %struct.nand_op_instr], align 16
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
  br label %141

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
  br label %141

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
  br label %141

51:                                               ; preds = %43
  %52 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %53 = call i64 @nand_has_exec_op(%struct.nand_chip* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %118

55:                                               ; preds = %51
  %56 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 2
  %58 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %57)
  store %struct.nand_sdr_timings* %58, %struct.nand_sdr_timings** %13, align 8
  %59 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %59, i8 0, i64 8, i1 false)
  %60 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %61 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %62 = call i32 @NAND_OP_CMD(i32 %61, i32 0)
  %63 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %60, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %60, i64 1
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %68 = call i32 @NAND_OP_ADDR(i32 2, i32* %67, i32 0)
  %69 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %66, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %66, i64 1
  %73 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %74 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %13, align 8
  %75 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PSEC_TO_NSEC(i32 %76)
  %78 = call i32 @NAND_OP_CMD(i32 %73, i32 %77)
  %79 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %72, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %72, i64 1
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @NAND_OP_DATA_IN(i32 %83, i8* %84, i32 0)
  %86 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %82, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 0
  %93 = call i32 @NAND_OPERATION(i32 %91, %struct.nand_op_instr* %92)
  %94 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %16, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @nand_fill_column_cycles(%struct.nand_chip* %95, i32* %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %55
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %6, align 4
  br label %141

103:                                              ; preds = %55
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %16, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %11, align 4
  %112 = getelementptr inbounds [4 x %struct.nand_op_instr], [4 x %struct.nand_op_instr]* %15, i64 0, i64 3
  %113 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 4
  %116 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %117 = call i32 @nand_exec_op(%struct.nand_chip* %116, %struct.nand_operation* %16)
  store i32 %117, i32* %6, align 4
  br label %141

118:                                              ; preds = %51
  %119 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %121, align 8
  %123 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %124 = bitcast %struct.nand_chip* %123 to %struct.nand_chip.1*
  %125 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 %122(%struct.nand_chip.1* %124, i32 %125, i32 %126, i32 -1)
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.0*, i8*, i32)** %133, align 8
  %135 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %136 = bitcast %struct.nand_chip* %135 to %struct.nand_chip.0*
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 %134(%struct.nand_chip.0* %136, i8* %137, i32 %138)
  br label %140

140:                                              ; preds = %130, %118
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %140, %110, %101, %48, %40, %25
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_DATA_IN(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_fill_column_cycles(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
