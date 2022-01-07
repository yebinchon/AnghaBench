; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_must_split_instr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_must_split_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_op_parser_pattern_elem = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nand_op_instr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_op_parser_pattern_elem*, %struct.nand_op_instr*, i32*)* @nand_op_parser_must_split_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_op_parser_must_split_instr(%struct.nand_op_parser_pattern_elem* %0, %struct.nand_op_instr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_op_parser_pattern_elem*, align 8
  %6 = alloca %struct.nand_op_instr*, align 8
  %7 = alloca i32*, align 8
  store %struct.nand_op_parser_pattern_elem* %0, %struct.nand_op_parser_pattern_elem** %5, align 8
  store %struct.nand_op_instr* %1, %struct.nand_op_instr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %9 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %77 [
    i32 130, label %11
    i32 129, label %44
    i32 128, label %44
  ]

11:                                               ; preds = %3
  %12 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %13 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %78

19:                                               ; preds = %11
  %20 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %21 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %24, %26
  %28 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %29 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ugt i32 %27, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %19
  %35 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %36 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, %39
  store i32 %42, i32* %40, align 4
  store i32 1, i32* %4, align 4
  br label %79

43:                                               ; preds = %19
  br label %78

44:                                               ; preds = %3, %3
  %45 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %46 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %78

52:                                               ; preds = %44
  %53 = load %struct.nand_op_instr*, %struct.nand_op_instr** %6, align 8
  %54 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %57, %59
  %61 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %62 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ugt i32 %60, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %52
  %68 = load %struct.nand_op_parser_pattern_elem*, %struct.nand_op_parser_pattern_elem** %5, align 8
  %69 = getelementptr inbounds %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, %72
  store i32 %75, i32* %73, align 4
  store i32 1, i32* %4, align 4
  br label %79

76:                                               ; preds = %52
  br label %78

77:                                               ; preds = %3
  br label %78

78:                                               ; preds = %77, %76, %51, %43, %18
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %67, %34
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
