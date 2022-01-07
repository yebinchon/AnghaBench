; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_readid_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_readid_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.1*, i32, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_sdr_timings = type { i32 }
%struct.nand_op_instr = type { i32 }
%struct.nand_operation = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_CMD_READID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_readid_op(%struct.nand_chip* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nand_sdr_timings*, align 8
  %13 = alloca [3 x %struct.nand_op_instr], align 4
  %14 = alloca %struct.nand_operation, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %94

25:                                               ; preds = %19, %4
  %26 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %27 = call i64 @nand_has_exec_op(%struct.nand_chip* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 2
  %32 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %31)
  store %struct.nand_sdr_timings* %32, %struct.nand_sdr_timings** %12, align 8
  %33 = getelementptr inbounds [3 x %struct.nand_op_instr], [3 x %struct.nand_op_instr]* %13, i64 0, i64 0
  %34 = load i32, i32* @NAND_CMD_READID, align 4
  %35 = call i32 @NAND_OP_CMD(i32 %34, i32 0)
  %36 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i64 1
  %38 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %12, align 8
  %39 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PSEC_TO_NSEC(i32 %40)
  %42 = call i32 @NAND_OP_ADDR(i32 1, i32* %7, i32 %41)
  %43 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i64 1
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @NAND_OP_8BIT_DATA_IN(i32 %45, i8* %46, i32 0)
  %48 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %44, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [3 x %struct.nand_op_instr], [3 x %struct.nand_op_instr]* %13, i64 0, i64 0
  %53 = call i32 @NAND_OPERATION(i32 %51, %struct.nand_op_instr* %52)
  %54 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %14, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %57, %29
  %62 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %63 = call i32 @nand_exec_op(%struct.nand_chip* %62, %struct.nand_operation* %14)
  store i32 %63, i32* %5, align 4
  br label %94

64:                                               ; preds = %25
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (%struct.nand_chip.1*, i32, i32, i32)*, i32 (%struct.nand_chip.1*, i32, i32, i32)** %67, align 8
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = bitcast %struct.nand_chip* %69 to %struct.nand_chip.1*
  %71 = load i32, i32* @NAND_CMD_READID, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 %68(%struct.nand_chip.1* %70, i32 %71, i32 %72, i32 -1)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %90, %64
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.nand_chip.0*)*, i32 (%struct.nand_chip.0*)** %81, align 8
  %83 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %84 = bitcast %struct.nand_chip* %83 to %struct.nand_chip.0*
  %85 = call i32 %82(%struct.nand_chip.0* %84)
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %74

93:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %61, %22
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @NAND_OP_CMD(i32, i32) #1

declare dso_local i32 @NAND_OP_ADDR(i32, i32*, i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @NAND_OP_8BIT_DATA_IN(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
