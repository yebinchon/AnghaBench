; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_match_pat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_match_pat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_op_parser_pattern = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nand_op_parser_ctx = type { i32, %struct.TYPE_3__, %struct.nand_op_instr* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.nand_op_instr* }
%struct.nand_op_instr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_op_parser_pattern*, %struct.nand_op_parser_ctx*)* @nand_op_parser_match_pat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_op_parser_match_pat(%struct.nand_op_parser_pattern* %0, %struct.nand_op_parser_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_op_parser_pattern*, align 8
  %5 = alloca %struct.nand_op_parser_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_op_instr*, align 8
  %8 = alloca %struct.nand_op_instr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nand_op_parser_pattern* %0, %struct.nand_op_parser_pattern** %4, align 8
  store %struct.nand_op_parser_ctx* %1, %struct.nand_op_parser_ctx** %5, align 8
  %11 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %15, i32 0, i32 2
  %17 = load %struct.nand_op_instr*, %struct.nand_op_instr** %16, align 8
  %18 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %17, i64 %21
  store %struct.nand_op_instr* %22, %struct.nand_op_instr** %7, align 8
  %23 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load %struct.nand_op_instr*, %struct.nand_op_instr** %25, align 8
  store %struct.nand_op_instr* %26, %struct.nand_op_instr** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %84, %2
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %4, align 8
  %30 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %35 = load %struct.nand_op_instr*, %struct.nand_op_instr** %7, align 8
  %36 = icmp ult %struct.nand_op_instr* %34, %35
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %87

39:                                               ; preds = %37
  %40 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %41 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %4, align 8
  %44 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %42, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %39
  %53 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %4, align 8
  %54 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %122

63:                                               ; preds = %52
  br label %84

64:                                               ; preds = %39
  %65 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %4, align 8
  %66 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %72 = call i64 @nand_op_parser_must_split_instr(%struct.TYPE_4__* %70, %struct.nand_op_instr* %71, i32* %6)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %87

79:                                               ; preds = %64
  %80 = load %struct.nand_op_instr*, %struct.nand_op_instr** %8, align 8
  %81 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %80, i32 1
  store %struct.nand_op_instr* %81, %struct.nand_op_instr** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %63
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %27

87:                                               ; preds = %74, %37
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %122

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %110, %91
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %4, align 8
  %95 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %4, align 8
  %100 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %122

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %92

113:                                              ; preds = %92
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %116 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %113, %108, %90, %62
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @nand_op_parser_must_split_instr(%struct.TYPE_4__*, %struct.nand_op_instr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
