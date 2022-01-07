; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_divide_rdc_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_divide_rdc_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu_parent = type { i32, i32*, i32*, i32, %struct.niu_rdc_tables* }
%struct.niu_rdc_tables = type { i32, i32, %struct.rdc_table* }
%struct.rdc_table = type { i32* }

@NIU_NUM_RDC_TABLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"niu%d: Port %d RDC tbl(%d) [ \00", align 1
@NIU_RDC_TABLE_SLOTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu_parent*, i32, i32)* @niu_divide_rdc_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_divide_rdc_groups(%struct.niu_parent* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.niu_rdc_tables*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rdc_table*, align 8
  %17 = alloca i32, align 4
  store %struct.niu_parent* %0, %struct.niu_parent** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %19 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* @NIU_NUM_RDC_TABLES, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %121, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %124

28:                                               ; preds = %24
  %29 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %30 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %29, i32 0, i32 4
  %31 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %31, i64 %33
  store %struct.niu_rdc_tables* %34, %struct.niu_rdc_tables** %12, align 8
  %35 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %36 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %44 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %47 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %104, %28
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %51 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %48
  %55 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %56 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %55, i32 0, i32 2
  %57 = load %struct.rdc_table*, %struct.rdc_table** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rdc_table, %struct.rdc_table* %57, i64 %59
  store %struct.rdc_table* %60, %struct.rdc_table** %16, align 8
  %61 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %62 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %66 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %69)
  store i32 0, i32* %17, align 4
  br label %71

71:                                               ; preds = %99, %54
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @NIU_RDC_TABLE_SLOTS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.rdc_table*, %struct.rdc_table** %16, align 8
  %80 = getelementptr inbounds %struct.rdc_table, %struct.rdc_table* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.rdc_table*, %struct.rdc_table** %16, align 8
  %86 = getelementptr inbounds %struct.rdc_table, %struct.rdc_table* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %71

102:                                              ; preds = %71
  %103 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %48

107:                                              ; preds = %48
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %110 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %24

124:                                              ; preds = %24
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
