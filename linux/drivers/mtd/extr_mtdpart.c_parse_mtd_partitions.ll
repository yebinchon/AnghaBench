; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_parse_mtd_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_parse_mtd_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.mtd_partitions = type { i32, i32 }
%struct.mtd_part_parser = type { i8* }

@default_subpartition_types = common dso_local global i8** null, align 8
@default_mtd_part_types = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"ofpart\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: parsing partitions %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: got parser %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_mtd_partitions(%struct.mtd_info* %0, i8** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partitions, align 4
  %9 = alloca %struct.mtd_part_parser*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  %12 = bitcast %struct.mtd_partitions* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = call i64 @mtd_is_partition(%struct.mtd_info* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8**, i8*** @default_subpartition_types, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load i8**, i8*** @default_mtd_part_types, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i8** [ %20, %19 ], [ %22, %21 ]
  store i8** %24, i8*** %6, align 8
  br label %25

25:                                               ; preds = %23, %3
  br label %26

26:                                               ; preds = %116, %25
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %119

30:                                               ; preds = %26
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = call i32 @mtd_part_of_parse(%struct.mtd_info* %36, %struct.mtd_partitions* %8)
  store i32 %37, i32* %10, align 4
  br label %87

38:                                               ; preds = %30
  %39 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %43)
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call %struct.mtd_part_parser* @mtd_part_parser_get(i8* %46)
  store %struct.mtd_part_parser* %47, %struct.mtd_part_parser** %9, align 8
  %48 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %9, align 8
  %49 = icmp ne %struct.mtd_part_parser* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %38
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call %struct.mtd_part_parser* @mtd_part_parser_get(i8* %57)
  store %struct.mtd_part_parser* %58, %struct.mtd_part_parser** %9, align 8
  br label %59

59:                                               ; preds = %55, %50, %38
  %60 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %9, align 8
  %64 = icmp ne %struct.mtd_part_parser* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %9, align 8
  %67 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ null, %69 ]
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %62, i8* %71)
  %73 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %9, align 8
  %74 = icmp ne %struct.mtd_part_parser* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %116

76:                                               ; preds = %70
  %77 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %9, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %79 = load %struct.mtd_part_parser_data*, %struct.mtd_part_parser_data** %7, align 8
  %80 = call i32 @mtd_part_do_parse(%struct.mtd_part_parser* %77, %struct.mtd_info* %78, %struct.mtd_partitions* %8, %struct.mtd_part_parser_data* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %9, align 8
  %85 = call i32 @mtd_part_parser_put(%struct.mtd_part_parser* %84)
  br label %86

86:                                               ; preds = %83, %76
  br label %87

87:                                               ; preds = %86, %35
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %8, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %8, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @add_mtd_partitions(%struct.mtd_info* %91, i32 %93, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = call i32 @mtd_part_parser_cleanup(%struct.mtd_partitions* %8)
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* %11, align 4
  br label %105

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %8, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %104, %102 ]
  store i32 %106, i32* %4, align 4
  br label %121

107:                                              ; preds = %87
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %110, %107
  br label %116

116:                                              ; preds = %115, %75
  %117 = load i8**, i8*** %6, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %6, align 8
  br label %26

119:                                              ; preds = %26
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %105
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mtd_is_partition(%struct.mtd_info*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @mtd_part_of_parse(%struct.mtd_info*, %struct.mtd_partitions*) #2

declare dso_local i32 @pr_debug(i8*, i32, i8*) #2

declare dso_local %struct.mtd_part_parser* @mtd_part_parser_get(i8*) #2

declare dso_local i32 @request_module(i8*, i8*) #2

declare dso_local i32 @mtd_part_do_parse(%struct.mtd_part_parser*, %struct.mtd_info*, %struct.mtd_partitions*, %struct.mtd_part_parser_data*) #2

declare dso_local i32 @mtd_part_parser_put(%struct.mtd_part_parser*) #2

declare dso_local i32 @add_mtd_partitions(%struct.mtd_info*, i32, i32) #2

declare dso_local i32 @mtd_part_parser_cleanup(%struct.mtd_partitions*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
