; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_parse_mtd_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_parse_mtd_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_partition = type { i8*, i8*, i8* }
%struct.mtd_part_parser_data = type { i32 }
%struct.sharpsl_ftl = type { i32 }
%struct.sharpsl_nand_partinfo = type { i32, i32 }

@SHARPSL_NAND_PARTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"sharpslpart: try reading first partition table\0A\00", align 1
@SHARPSL_PARTINFO1_LADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"sharpslpart: first partition table is invalid, retry using the second\0A\00", align 1
@SHARPSL_PARTINFO2_LADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"sharpslpart: both partition tables are invalid\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"smf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"home\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @sharpsl_parse_mtd_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_parse_mtd_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.sharpsl_ftl, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mtd_partition*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  %14 = load i32, i32* @SHARPSL_NAND_PARTS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca %struct.sharpsl_nand_partinfo, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = call i32 @sharpsl_nand_check_ooblayout(%struct.mtd_info* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

24:                                               ; preds = %3
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = call i32 @sharpsl_nand_init_ftl(%struct.mtd_info* %25, %struct.sharpsl_ftl* %8)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

31:                                               ; preds = %24
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = load i32, i32* @SHARPSL_PARTINFO1_LADDR, align 4
  %35 = mul nuw i64 8, %15
  %36 = trunc i64 %35 to i32
  %37 = call i32 @sharpsl_nand_read_partinfo(%struct.mtd_info* %33, i32 %34, i32 %36, %struct.sharpsl_nand_partinfo* %17, %struct.sharpsl_ftl* %8)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %43 = load i32, i32* @SHARPSL_PARTINFO2_LADDR, align 4
  %44 = mul nuw i64 8, %15
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sharpsl_nand_read_partinfo(%struct.mtd_info* %42, i32 %43, i32 %45, %struct.sharpsl_nand_partinfo* %17, %struct.sharpsl_ftl* %8)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %40, %31
  %48 = call i32 @sharpsl_nand_cleanup_ftl(%struct.sharpsl_ftl* %8)
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

54:                                               ; preds = %47
  %55 = load i32, i32* @SHARPSL_NAND_PARTS, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.mtd_partition* @kcalloc(i32 %55, i32 24, i32 %56)
  store %struct.mtd_partition* %57, %struct.mtd_partition** %11, align 8
  %58 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %59 = icmp ne %struct.mtd_partition* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

63:                                               ; preds = %54
  %64 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %65 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %64, i64 0
  %66 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %66, align 8
  %67 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 0
  %68 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 16
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %72 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %71, i64 0
  %73 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 0
  %75 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le32_to_cpu(i32 %76)
  %78 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 0
  %79 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = call i8* @le32_to_cpu(i32 %80)
  %82 = ptrtoint i8* %77 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %87 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %86, i64 0
  %88 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %90 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %89, i64 1
  %91 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 1
  %93 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @le32_to_cpu(i32 %94)
  %96 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %97 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %96, i64 1
  %98 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  %99 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 1
  %100 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le32_to_cpu(i32 %101)
  %103 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 1
  %104 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = ptrtoint i8* %102 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %112 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %111, i64 1
  %113 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %112, i32 0, i32 1
  store i8* %110, i8** %113, align 8
  %114 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %115 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %114, i64 2
  %116 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %116, align 8
  %117 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 2
  %118 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 16
  %120 = call i8* @le32_to_cpu(i32 %119)
  %121 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %122 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %121, i64 2
  %123 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %122, i32 0, i32 2
  store i8* %120, i8** %123, align 8
  %124 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 2
  %125 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @le32_to_cpu(i32 %126)
  %128 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %17, i64 2
  %129 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 16
  %131 = call i8* @le32_to_cpu(i32 %130)
  %132 = ptrtoint i8* %127 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %137 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %136, i64 2
  %138 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load %struct.mtd_partition*, %struct.mtd_partition** %11, align 8
  %140 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %139, %struct.mtd_partition** %140, align 8
  %141 = load i32, i32* @SHARPSL_NAND_PARTS, align 4
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %142

142:                                              ; preds = %63, %60, %51, %29, %22
  %143 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sharpsl_nand_check_ooblayout(%struct.mtd_info*) #2

declare dso_local i32 @sharpsl_nand_init_ftl(%struct.mtd_info*, %struct.sharpsl_ftl*) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local i32 @sharpsl_nand_read_partinfo(%struct.mtd_info*, i32, i32, %struct.sharpsl_nand_partinfo*, %struct.sharpsl_ftl*) #2

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i32 @sharpsl_nand_cleanup_ftl(%struct.sharpsl_ftl*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local %struct.mtd_partition* @kcalloc(i32, i32, i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
