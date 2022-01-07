; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_data_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_read_data_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.1*)* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.nand_op_instr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nand_operation = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_read_data_op(%struct.nand_chip* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.nand_op_instr], align 4
  %11 = alloca %struct.nand_operation, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %84

22:                                               ; preds = %16
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = call i64 @nand_has_exec_op(%struct.nand_chip* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %10, i64 0, i64 0
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @NAND_OP_DATA_IN(i32 %28, i8* %29, i32 0)
  %31 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %27, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %10, i64 0, i64 0
  %38 = call i32 @NAND_OPERATION(i32 %36, %struct.nand_op_instr* %37)
  %39 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %11, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %10, i64 0, i64 0
  %42 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %46 = call i32 @nand_exec_op(%struct.nand_chip* %45, %struct.nand_operation* %11)
  store i32 %46, i32* %5, align 4
  br label %84

47:                                               ; preds = %22
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %69, %50
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32 (%struct.nand_chip.1*)*, i32 (%struct.nand_chip.1*)** %60, align 8
  %62 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %63 = bitcast %struct.nand_chip* %62 to %struct.nand_chip.1*
  %64 = call i32 %61(%struct.nand_chip.1* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %53

72:                                               ; preds = %53
  br label %83

73:                                               ; preds = %47
  %74 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %75 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.nand_chip.0*, i8*, i32)*, i32 (%struct.nand_chip.0*, i8*, i32)** %76, align 8
  %78 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %79 = bitcast %struct.nand_chip* %78 to %struct.nand_chip.0*
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 %77(%struct.nand_chip.0* %79, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %72
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %26, %19
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local i32 @NAND_OP_DATA_IN(i32, i8*, i32) #1

declare dso_local i32 @NAND_OPERATION(i32, %struct.nand_op_instr*) #1

declare dso_local i32 @nand_exec_op(%struct.nand_chip*, %struct.nand_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
