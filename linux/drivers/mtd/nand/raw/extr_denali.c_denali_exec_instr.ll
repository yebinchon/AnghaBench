; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_exec_instr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_exec_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_op_instr = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.denali_controller = type { i32 }

@DENALI_MAP11_CMD = common dso_local global i32 0, align 4
@DENALI_MAP11_ADDR = common dso_local global i32 0, align 4
@DENALI_MAP11_DATA = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unsupported NAND instruction type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_op_instr*)* @denali_exec_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_exec_instr(%struct.nand_chip* %0, %struct.nand_op_instr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_op_instr*, align 8
  %6 = alloca %struct.denali_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_op_instr* %1, %struct.nand_op_instr** %5, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %8 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %7)
  store %struct.denali_controller* %8, %struct.denali_controller** %6, align 8
  %9 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %10 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %99 [
    i32 131, label %12
    i32 132, label %20
    i32 130, label %34
    i32 129, label %65
    i32 128, label %96
  ]

12:                                               ; preds = %2
  %13 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %14 = load i32, i32* @DENALI_MAP11_CMD, align 4
  %15 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %16 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @denali_exec_out8(%struct.denali_controller* %13, i32 %14, i32* %18, i32 1)
  store i32 0, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %22 = load i32, i32* @DENALI_MAP11_ADDR, align 4
  %23 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %24 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %29 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @denali_exec_out8(%struct.denali_controller* %21, i32 %22, i32* %27, i32 %32)
  store i32 0, i32* %3, align 4
  br label %106

34:                                               ; preds = %2
  %35 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %36 = load i32, i32* @DENALI_MAP11_DATA, align 4
  %37 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %38 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %44 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %49 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %34
  %55 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %54, %34
  %62 = phi i1 [ false, %34 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @denali_exec_in(%struct.denali_controller* %35, i32 %36, i32 %42, i32 %47, i32 %63)
  store i32 0, i32* %3, align 4
  br label %106

65:                                               ; preds = %2
  %66 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %67 = load i32, i32* @DENALI_MAP11_DATA, align 4
  %68 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %69 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %75 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %80 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %65
  %86 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %85, %65
  %93 = phi i1 [ false, %65 ], [ %91, %85 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @denali_exec_out(%struct.denali_controller* %66, i32 %67, i32 %73, i32 %78, i32 %94)
  store i32 0, i32* %3, align 4
  br label %106

96:                                               ; preds = %2
  %97 = load %struct.denali_controller*, %struct.denali_controller** %6, align 8
  %98 = call i32 @denali_exec_waitrdy(%struct.denali_controller* %97)
  store i32 %98, i32* %3, align 4
  br label %106

99:                                               ; preds = %2
  %100 = load %struct.nand_op_instr*, %struct.nand_op_instr** %5, align 8
  %101 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %99, %96, %92, %61, %20, %12
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local i32 @denali_exec_out8(%struct.denali_controller*, i32, i32*, i32) #1

declare dso_local i32 @denali_exec_in(%struct.denali_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @denali_exec_out(%struct.denali_controller*, i32, i32, i32, i32) #1

declare dso_local i32 @denali_exec_waitrdy(%struct.denali_controller*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
