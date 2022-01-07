; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_parse_cfe_nor_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_parse_cfe_nor_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.mtd_partition = type { i8*, i32, i32, i32 }
%struct.bcm963xx_nvram = type { i32 }

@uint32_t = common dso_local global i32 0, align 4
@BCM963XX_CFE_BLOCK_SIZE = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CFE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@bcm63xx_cfe_part_types = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Partition %d is %s offset %llx and length %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.bcm963xx_nvram*)* @bcm63xx_parse_cfe_nor_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_parse_cfe_nor_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.bcm963xx_nvram* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.bcm963xx_nvram*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.bcm963xx_nvram* %2, %struct.bcm963xx_nvram** %7, align 8
  store i32 3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @uint32_t, align 4
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BCM963XX_CFE_BLOCK_SIZE, align 4
  %20 = call i32 @max_t(i32 %15, i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %7, align 8
  %23 = getelementptr inbounds %struct.bcm963xx_nvram, %struct.bcm963xx_nvram* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SZ_1K, align 4
  %26 = mul i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @roundup(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 24, %31
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 10, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 %32, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mtd_partition* @kzalloc(i32 %37, i32 %38)
  store %struct.mtd_partition* %39, %struct.mtd_partition** %8, align 8
  %40 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %41 = icmp ne %struct.mtd_partition* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %148

45:                                               ; preds = %3
  %46 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %46, i64 %48
  %50 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %51, i64 %53
  %55 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %57, i64 %59
  %61 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %60, i32 0, i32 2
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %64, i64 %66
  %68 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %68, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub i32 %71, %72
  %74 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %74, i64 %76
  %78 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %80, i64 %82
  %84 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %87, i64 %89
  %91 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %93, i64 %95
  %97 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 8
  %98 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %99 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = sub i32 %102, %103
  %105 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %105, i64 %107
  %109 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %108, i32 0, i32 2
  store i32 %104, i32* %109, align 4
  %110 = load i32, i32* @bcm63xx_cfe_part_types, align 4
  %111 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %111, i64 %113
  %115 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %114, i32 0, i32 3
  store i32 %110, i32* %115, align 8
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %141, %45
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %122, i64 %124
  %126 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %128, i64 %130
  %132 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %134, i64 %136
  %138 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %121, i8* %127, i32 %133, i32 %139)
  br label %141

141:                                              ; preds = %120
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %116

144:                                              ; preds = %116
  %145 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %146 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %145, %struct.mtd_partition** %146, align 8
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %144, %42
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.mtd_partition* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
