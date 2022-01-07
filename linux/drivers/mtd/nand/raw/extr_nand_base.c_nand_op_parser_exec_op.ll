; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_op_parser_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_op_parser = type { i32, %struct.nand_op_parser_pattern* }
%struct.nand_op_parser_pattern = type { i32 (%struct.nand_chip.0*, %struct.TYPE_2__*)* }
%struct.nand_chip.0 = type opaque
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.nand_operation = type { i64, i64 }
%struct.nand_op_parser_ctx = type { i64, i64, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [40 x i8] c"->exec_op() parser: pattern not found!\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_op_parser_exec_op(%struct.nand_chip* %0, %struct.nand_op_parser* %1, %struct.nand_operation* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.nand_op_parser*, align 8
  %8 = alloca %struct.nand_operation*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_op_parser_ctx, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nand_op_parser_pattern*, align 8
  %13 = alloca %struct.nand_op_parser_ctx, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nand_op_parser_ctx, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store %struct.nand_op_parser* %1, %struct.nand_op_parser** %7, align 8
  store %struct.nand_operation* %2, %struct.nand_operation** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 0
  %18 = load %struct.nand_operation*, %struct.nand_operation** %8, align 8
  %19 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %17, align 8
  %21 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 1
  %22 = load %struct.nand_operation*, %struct.nand_operation** %8, align 8
  %23 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %21, align 8
  %25 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %26 = bitcast %struct.TYPE_2__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %28 = load %struct.nand_operation*, %struct.nand_operation** %8, align 8
  %29 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %27, align 8
  br label %31

31:                                               ; preds = %128, %4
  %32 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nand_operation*, %struct.nand_operation** %8, align 8
  %36 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nand_operation*, %struct.nand_operation** %8, align 8
  %39 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = icmp slt i64 %34, %41
  br i1 %42, label %43, label %134

43:                                               ; preds = %31
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.nand_op_parser*, %struct.nand_op_parser** %7, align 8
  %47 = getelementptr inbounds %struct.nand_op_parser, %struct.nand_op_parser* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = bitcast %struct.nand_op_parser_ctx* %16 to i8*
  %52 = bitcast %struct.nand_op_parser_ctx* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 48, i1 false)
  %53 = load %struct.nand_op_parser*, %struct.nand_op_parser** %7, align 8
  %54 = getelementptr inbounds %struct.nand_op_parser, %struct.nand_op_parser* %53, i32 0, i32 1
  %55 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %55, i64 %57
  store %struct.nand_op_parser_pattern* %58, %struct.nand_op_parser_pattern** %12, align 8
  %59 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %12, align 8
  %60 = call i32 @nand_op_parser_match_pat(%struct.nand_op_parser_pattern* %59, %struct.nand_op_parser_ctx* %16)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %74

63:                                               ; preds = %50
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i64 @nand_op_parser_cmp_ctx(%struct.nand_op_parser_ctx* %16, %struct.nand_op_parser_ctx* %13)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %74

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %15, align 4
  %72 = bitcast %struct.nand_op_parser_ctx* %13 to i8*
  %73 = bitcast %struct.nand_op_parser_ctx* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 48, i1 false)
  br label %74

74:                                               ; preds = %70, %69, %62
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %44

77:                                               ; preds = %44
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %135

84:                                               ; preds = %77
  %85 = bitcast %struct.nand_op_parser_ctx* %10 to i8*
  %86 = bitcast %struct.nand_op_parser_ctx* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 48, i1 false)
  %87 = call i32 @nand_op_parser_trace(%struct.nand_op_parser_ctx* %10)
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %84
  %91 = load %struct.nand_op_parser*, %struct.nand_op_parser** %7, align 8
  %92 = getelementptr inbounds %struct.nand_op_parser, %struct.nand_op_parser* %91, i32 0, i32 1
  %93 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %93, i64 %95
  store %struct.nand_op_parser_pattern* %96, %struct.nand_op_parser_pattern** %12, align 8
  %97 = load %struct.nand_op_parser_pattern*, %struct.nand_op_parser_pattern** %12, align 8
  %98 = getelementptr inbounds %struct.nand_op_parser_pattern, %struct.nand_op_parser_pattern* %97, i32 0, i32 0
  %99 = load i32 (%struct.nand_chip.0*, %struct.TYPE_2__*)*, i32 (%struct.nand_chip.0*, %struct.TYPE_2__*)** %98, align 8
  %100 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %101 = bitcast %struct.nand_chip* %100 to %struct.nand_chip.0*
  %102 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %103 = call i32 %99(%struct.nand_chip.0* %101, %struct.TYPE_2__* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %90
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %135

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %84
  %110 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %109
  %124 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %123, %109
  %129 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.nand_op_parser_ctx, %struct.nand_op_parser_ctx* %10, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  br label %31

134:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %106, %80
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nand_op_parser_match_pat(%struct.nand_op_parser_pattern*, %struct.nand_op_parser_ctx*) #2

declare dso_local i64 @nand_op_parser_cmp_ctx(%struct.nand_op_parser_ctx*, %struct.nand_op_parser_ctx*) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @nand_op_parser_trace(%struct.nand_op_parser_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
