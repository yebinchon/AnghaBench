; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_parse_cfe_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_parse_cfe_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_partition = type { i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.bcm963xx_nvram = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @bcm63xx_parse_cfe_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_parse_cfe_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.bcm963xx_nvram*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  store %struct.bcm963xx_nvram* null, %struct.bcm963xx_nvram** %8, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call i64 @bcm63xx_detect_cfe(%struct.mtd_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = call %struct.bcm963xx_nvram* @vzalloc(i32 4)
  store %struct.bcm963xx_nvram* %17, %struct.bcm963xx_nvram** %8, align 8
  %18 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %8, align 8
  %19 = icmp ne %struct.bcm963xx_nvram* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %16
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %8, align 8
  %26 = call i32 @bcm63xx_read_nvram(%struct.mtd_info* %24, %struct.bcm963xx_nvram* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %32 = call i32 @mtd_type_is_nand(%struct.mtd_info* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  %37 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %8, align 8
  %38 = call i32 @bcm63xx_parse_cfe_nor_partitions(%struct.mtd_info* %35, %struct.mtd_partition** %36, %struct.bcm963xx_nvram* %37)
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %8, align 8
  %45 = call i32 @vfree(%struct.bcm963xx_nvram* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %20, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @bcm63xx_detect_cfe(%struct.mtd_info*) #1

declare dso_local %struct.bcm963xx_nvram* @vzalloc(i32) #1

declare dso_local i32 @bcm63xx_read_nvram(%struct.mtd_info*, %struct.bcm963xx_nvram*) #1

declare dso_local i32 @mtd_type_is_nand(%struct.mtd_info*) #1

declare dso_local i32 @bcm63xx_parse_cfe_nor_partitions(%struct.mtd_info*, %struct.mtd_partition**, %struct.bcm963xx_nvram*) #1

declare dso_local i32 @vfree(%struct.bcm963xx_nvram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
