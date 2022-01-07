; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_operation = type { i32, %struct.nand_op_instr* }
%struct.nand_op_instr = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.fsmc_nand_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Executing operation [%d instructions]:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@USE_DMA_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_operation*, i32)* @fsmc_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsmc_exec_op(%struct.nand_chip* %0, %struct.nand_operation* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_operation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsmc_nand_data*, align 8
  %8 = alloca %struct.nand_op_instr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_operation* %1, %struct.nand_operation** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = call %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip* %12)
  store %struct.fsmc_nand_data* %13, %struct.fsmc_nand_data** %7, align 8
  store %struct.nand_op_instr* null, %struct.nand_op_instr** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %15 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %152, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %21 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %155

24:                                               ; preds = %18
  %25 = load %struct.nand_operation*, %struct.nand_operation** %5, align 8
  %26 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %25, i32 0, i32 1
  %27 = load %struct.nand_op_instr*, %struct.nand_op_instr** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %27, i64 %29
  store %struct.nand_op_instr* %30, %struct.nand_op_instr** %8, align 8
  %31 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %32 = call i32 @nand_op_trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.nand_op_instr* %31)
  %33 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %34 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %151 [
    i32 131, label %36
    i32 132, label %46
    i32 130, label %73
    i32 129, label %108
    i32 128, label %143
  ]

36:                                               ; preds = %24
  %37 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %38 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %43 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @writeb_relaxed(i32 %41, i32 %44)
  br label %151

46:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %50 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %47
  %56 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %57 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %66 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writeb_relaxed(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %47

72:                                               ; preds = %47
  br label %151

73:                                               ; preds = %24
  %74 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %75 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @USE_DMA_ACCESS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %81 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %82 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %88 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fsmc_read_buf_dma(%struct.fsmc_nand_data* %80, i32 %86, i32 %91)
  br label %107

93:                                               ; preds = %73
  %94 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %95 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %96 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %102 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fsmc_read_buf(%struct.fsmc_nand_data* %94, i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %93, %79
  br label %151

108:                                              ; preds = %24
  %109 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %110 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @USE_DMA_ACCESS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %116 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %117 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %123 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @fsmc_write_buf_dma(%struct.fsmc_nand_data* %115, i32 %121, i32 %126)
  br label %142

128:                                              ; preds = %108
  %129 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %7, align 8
  %130 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %131 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %137 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @fsmc_write_buf(%struct.fsmc_nand_data* %129, i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %128, %114
  br label %151

143:                                              ; preds = %24
  %144 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %145 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %146 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @nand_soft_waitrdy(%struct.nand_chip* %144, i32 %149)
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %24, %143, %142, %107, %72, %36
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %18

155:                                              ; preds = %18
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local %struct.fsmc_nand_data* @nand_to_fsmc(%struct.nand_chip*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @nand_op_trace(i8*, %struct.nand_op_instr*) #1

declare dso_local i32 @writeb_relaxed(i32, i32) #1

declare dso_local i32 @fsmc_read_buf_dma(%struct.fsmc_nand_data*, i32, i32) #1

declare dso_local i32 @fsmc_read_buf(%struct.fsmc_nand_data*, i32, i32) #1

declare dso_local i32 @fsmc_write_buf_dma(%struct.fsmc_nand_data*, i32, i32) #1

declare dso_local i32 @fsmc_write_buf(%struct.fsmc_nand_data*, i32, i32) #1

declare dso_local i32 @nand_soft_waitrdy(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
