; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_afs.c_parse_afs_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_afs.c_parse_afs_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.mtd_partition = type { %struct.mtd_partition* }
%struct.mtd_part_parser_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @parse_afs_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_afs_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i64 @afs_is_v1(%struct.mtd_info* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 8
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @afs_is_v2(%struct.mtd_info* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 8
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %134

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.mtd_partition* @kzalloc(i64 %51, i32 %52)
  store %struct.mtd_partition* %53, %struct.mtd_partition** %8, align 8
  %54 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %55 = icmp ne %struct.mtd_partition* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %134

59:                                               ; preds = %50
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %105, %59
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %60
  %67 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @afs_is_v1(%struct.mtd_info* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %74, i64 %76
  %78 = call i32 @afs_parse_v1_partition(%struct.mtd_info* %72, i64 %73, %struct.mtd_partition* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %115

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %66
  %86 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @afs_is_v2(%struct.mtd_info* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %93, i64 %95
  %97 = call i32 @afs_parse_v2_partition(%struct.mtd_info* %91, i64 %92, %struct.mtd_partition* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %115

101:                                              ; preds = %90
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %85
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %107 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %9, align 8
  br label %60

111:                                              ; preds = %60
  %112 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %113 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %112, %struct.mtd_partition** %113, align 8
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %134

115:                                              ; preds = %100, %81
  br label %116

116:                                              ; preds = %119, %115
  %117 = load i32, i32* %12, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %120, i64 %122
  %124 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %123, i32 0, i32 0
  %125 = load %struct.mtd_partition*, %struct.mtd_partition** %124, align 8
  %126 = call i32 @kfree(%struct.mtd_partition* %125)
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %12, align 4
  br label %116

129:                                              ; preds = %116
  %130 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %131 = call i32 @kfree(%struct.mtd_partition* %130)
  %132 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* null, %struct.mtd_partition** %132, align 8
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %111, %56, %49
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @afs_is_v1(%struct.mtd_info*, i64) #1

declare dso_local i64 @afs_is_v2(%struct.mtd_info*, i64) #1

declare dso_local %struct.mtd_partition* @kzalloc(i64, i32) #1

declare dso_local i32 @afs_parse_v1_partition(%struct.mtd_info*, i64, %struct.mtd_partition*) #1

declare dso_local i32 @afs_parse_v2_partition(%struct.mtd_info*, i64, %struct.mtd_partition*) #1

declare dso_local i32 @kfree(%struct.mtd_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
