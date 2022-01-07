; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_parser_trx.c_parser_trx_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_parser_trx.c_parser_trx_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i8*, i64, i64 }
%struct.mtd_part_parser_data = type { i32 }
%struct.trx_header = type { i64, i64* }

@TRX_PARSER_MAX_PARTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MTD reading error: %d\0A\00", align 1
@TRX_MAGIC = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"loader\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @parser_trx_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parser_trx_parse(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca %struct.mtd_partition*, align 8
  %10 = alloca %struct.trx_header, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @TRX_PARSER_MAX_PARTS, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mtd_partition* @kcalloc(i32 %16, i32 24, i32 %17)
  store %struct.mtd_partition* %18, %struct.mtd_partition** %8, align 8
  %19 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %20 = icmp ne %struct.mtd_partition* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %163

24:                                               ; preds = %3
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = bitcast %struct.trx_header* %10 to i64*
  %27 = call i32 @mtd_read(%struct.mtd_info* %25, i32 0, i32 16, i64* %11, i64* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %34 = call i32 @kfree(%struct.mtd_partition* %33)
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %4, align 4
  br label %163

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TRX_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %43 = call i32 @kfree(%struct.mtd_partition* %42)
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %163

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  %56 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %53, i64 %54
  store %struct.mtd_partition* %56, %struct.mtd_partition** %9, align 8
  %57 = load %struct.mtd_partition*, %struct.mtd_partition** %9, align 8
  %58 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %58, align 8
  %59 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mtd_partition*, %struct.mtd_partition** %9, align 8
  %65 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %52, %46
  %69 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  %79 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %76, i64 %77
  store %struct.mtd_partition* %79, %struct.mtd_partition** %9, align 8
  %80 = load %struct.mtd_partition*, %struct.mtd_partition** %9, align 8
  %81 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %81, align 8
  %82 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.mtd_partition*, %struct.mtd_partition** %9, align 8
  %88 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %75, %68
  %92 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %12, align 8
  %102 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %99, i64 %100
  store %struct.mtd_partition* %102, %struct.mtd_partition** %9, align 8
  %103 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %104 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @parser_trx_data_part_name(%struct.mtd_info* %103, i64 %108)
  %110 = load %struct.mtd_partition*, %struct.mtd_partition** %9, align 8
  %111 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %10, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.mtd_partition*, %struct.mtd_partition** %9, align 8
  %118 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %13, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %13, align 8
  br label %121

121:                                              ; preds = %98, %91
  store i64 0, i64* %13, align 8
  br label %122

122:                                              ; preds = %155, %121
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %158

126:                                              ; preds = %122
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* %12, align 8
  %129 = sub i64 %128, 1
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, 1
  %135 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %132, i64 %134
  %136 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  br label %142

138:                                              ; preds = %126
  %139 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %140 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  br label %142

142:                                              ; preds = %138, %131
  %143 = phi i64 [ %137, %131 ], [ %141, %138 ]
  store i64 %143, i64* %15, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %146 = load i64, i64* %13, align 8
  %147 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %145, i64 %146
  %148 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %144, %149
  %151 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %152 = load i64, i64* %13, align 8
  %153 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %151, i64 %152
  %154 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %153, i32 0, i32 2
  store i64 %150, i64* %154, align 8
  br label %155

155:                                              ; preds = %142
  %156 = load i64, i64* %13, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %13, align 8
  br label %122

158:                                              ; preds = %122
  %159 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %160 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %159, %struct.mtd_partition** %160, align 8
  %161 = load i64, i64* %13, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %41, %30, %21
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.mtd_partition* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i64*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.mtd_partition*) #1

declare dso_local i8* @parser_trx_data_part_name(%struct.mtd_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
