; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_ofpart.c_parse_ofoldpart_partitions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_ofpart.c_parse_ofoldpart_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_partition = type { i32, i32, i8*, i32 }
%struct.mtd_part_parser_data = type { i32 }
%struct.device_node = type { i32 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Device tree uses obsolete partition map binding: %pOF\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"partition-names\00", align 1
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @parse_ofoldpart_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ofoldpart_partitions(%struct.mtd_info* %0, %struct.mtd_partition** %1, %struct.mtd_part_parser_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.mtd_partition**, align 8
  %7 = alloca %struct.mtd_part_parser_data*, align 8
  %8 = alloca %struct.mtd_partition*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.anon*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.mtd_partition** %1, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_part_parser_data* %2, %struct.mtd_part_parser_data** %7, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %17 = call %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %16)
  store %struct.device_node* %17, %struct.device_node** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %9, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %9, align 8
  %23 = call i8* @of_get_property(%struct.device_node* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %11)
  %24 = bitcast i8* %23 to %struct.anon*
  store %struct.anon* %24, %struct.anon** %13, align 8
  %25 = load %struct.anon*, %struct.anon** %13, align 8
  %26 = icmp ne %struct.anon* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %122

28:                                               ; preds = %21
  %29 = load %struct.device_node*, %struct.device_node** %9, align 8
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %29)
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mtd_partition* @kcalloc(i32 %35, i32 24, i32 %36)
  store %struct.mtd_partition* %37, %struct.mtd_partition** %8, align 8
  %38 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %39 = icmp ne %struct.mtd_partition* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %122

43:                                               ; preds = %28
  %44 = load %struct.device_node*, %struct.device_node** %9, align 8
  %45 = call i8* @of_get_property(%struct.device_node* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  store i8* %45, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %115, %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %118

50:                                               ; preds = %46
  %51 = load %struct.anon*, %struct.anon** %13, align 8
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be32_to_cpu(i32 %53)
  %55 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %55, i64 %57
  %59 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load %struct.anon*, %struct.anon** %13, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be32_to_cpu(i32 %62)
  %64 = and i32 %63, -2
  %65 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %65, i64 %67
  %69 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.anon*, %struct.anon** %13, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %50
  %77 = load i32, i32* @MTD_WRITEABLE, align 4
  %78 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %78, i64 %80
  %82 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %81, i32 0, i32 3
  store i32 %77, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %50
  %84 = load i8*, i8** %14, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %94, i64 %96
  %98 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %97, i32 0, i32 2
  store i8* %93, i8** %98, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i8*, i8** %14, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %14, align 8
  br label %112

106:                                              ; preds = %86, %83
  %107 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %107, i64 %109
  %111 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %110, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %111, align 8
  br label %112

112:                                              ; preds = %106, %89
  %113 = load %struct.anon*, %struct.anon** %13, align 8
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 1
  store %struct.anon* %114, %struct.anon** %13, align 8
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %46

118:                                              ; preds = %46
  %119 = load %struct.mtd_partition*, %struct.mtd_partition** %8, align 8
  %120 = load %struct.mtd_partition**, %struct.mtd_partition*** %6, align 8
  store %struct.mtd_partition* %119, %struct.mtd_partition** %120, align 8
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %118, %40, %27, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.device_node* @mtd_get_of_node(%struct.mtd_info*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*, %struct.device_node*) #1

declare dso_local %struct.mtd_partition* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
