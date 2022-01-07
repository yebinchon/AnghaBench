; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_read_partinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_read_partinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sharpsl_nand_partinfo = type { i32, i32, i32 }
%struct.sharpsl_ftl = type { i32 }

@BOOT_MAGIC = common dso_local global i64 0, align 8
@FSRO_MAGIC = common dso_local global i64 0, align 8
@FSRW_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"sharpslpart: magic values mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"sharpslpart: partition sizes mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, %struct.sharpsl_nand_partinfo*, %struct.sharpsl_ftl*)* @sharpsl_nand_read_partinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_nand_read_partinfo(%struct.mtd_info* %0, i32 %1, i64 %2, %struct.sharpsl_nand_partinfo* %3, %struct.sharpsl_ftl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sharpsl_nand_partinfo*, align 8
  %11 = alloca %struct.sharpsl_ftl*, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.sharpsl_nand_partinfo* %3, %struct.sharpsl_nand_partinfo** %10, align 8
  store %struct.sharpsl_ftl* %4, %struct.sharpsl_ftl** %11, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %17 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %11, align 8
  %18 = call i32 @sharpsl_nand_read_laddr(%struct.mtd_info* %13, i32 %14, i64 %15, %struct.sharpsl_nand_partinfo* %16, %struct.sharpsl_ftl* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %123

23:                                               ; preds = %5
  %24 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %25 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %24, i64 0
  %26 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be32_to_cpu(i32 %27)
  %29 = load i64, i64* @BOOT_MAGIC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %23
  %32 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %33 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %32, i64 1
  %34 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be32_to_cpu(i32 %35)
  %37 = load i64, i64* @FSRO_MAGIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %41 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %40, i64 2
  %42 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @be32_to_cpu(i32 %43)
  %45 = load i64, i64* @FSRW_MAGIC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39, %31, %23
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %123

51:                                               ; preds = %39
  %52 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_le32(i32 %54)
  %56 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %57 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %56, i64 2
  %58 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %60 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %59, i64 0
  %61 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le32_to_cpu(i32 %62)
  %64 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %65 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %64, i64 0
  %66 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32_to_cpu(i32 %67)
  %69 = icmp sle i64 %63, %68
  br i1 %69, label %118, label %70

70:                                               ; preds = %51
  %71 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %72 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %71, i64 1
  %73 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le32_to_cpu(i32 %74)
  %76 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %77 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %76, i64 0
  %78 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @le32_to_cpu(i32 %79)
  %81 = icmp slt i64 %75, %80
  br i1 %81, label %118, label %82

82:                                               ; preds = %70
  %83 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %84 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %83, i64 1
  %85 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %89 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %88, i64 1
  %90 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = icmp sle i64 %87, %92
  br i1 %93, label %118, label %94

94:                                               ; preds = %82
  %95 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %96 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %95, i64 2
  %97 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32_to_cpu(i32 %98)
  %100 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %101 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %100, i64 1
  %102 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  %105 = icmp slt i64 %99, %104
  br i1 %105, label %118, label %106

106:                                              ; preds = %94
  %107 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %108 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %107, i64 2
  %109 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = load %struct.sharpsl_nand_partinfo*, %struct.sharpsl_nand_partinfo** %10, align 8
  %113 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %112, i64 2
  %114 = getelementptr inbounds %struct.sharpsl_nand_partinfo, %struct.sharpsl_nand_partinfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @le32_to_cpu(i32 %115)
  %117 = icmp sle i64 %111, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %106, %94, %82, %70, %51
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %123

122:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %118, %47, %21
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @sharpsl_nand_read_laddr(%struct.mtd_info*, i32, i64, %struct.sharpsl_nand_partinfo*, %struct.sharpsl_ftl*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
