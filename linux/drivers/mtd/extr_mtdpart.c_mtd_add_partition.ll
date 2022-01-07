; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_mtd_add_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_mtd_add_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_partition = type { i8*, i64, i64 }
%struct.mtd_part = type { i32, i32 }

@MTDPART_OFS_APPEND = common dso_local global i64 0, align 8
@MTDPART_OFS_NXTBLK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MTDPART_SIZ_FULL = common dso_local global i64 0, align 8
@mtd_partitions_mutex = common dso_local global i32 0, align 4
@mtd_partitions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_add_partition(%struct.mtd_info* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtd_partition, align 8
  %11 = alloca %struct.mtd_part*, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @MTDPART_OFS_APPEND, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @MTDPART_OFS_NXTBLK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %16
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @MTDPART_SIZ_FULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i64, i64* %9, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %80

39:                                               ; preds = %33
  %40 = call i32 @memset(%struct.mtd_partition* %10, i32 0, i32 24)
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %10, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %10, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %10, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call %struct.mtd_part* @allocate_partition(%struct.mtd_info* %47, %struct.mtd_partition* %10, i32 -1, i64 %48)
  store %struct.mtd_part* %49, %struct.mtd_part** %11, align 8
  %50 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %51 = call i64 @IS_ERR(%struct.mtd_part* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %55 = call i32 @PTR_ERR(%struct.mtd_part* %54)
  store i32 %55, i32* %5, align 4
  br label %80

56:                                               ; preds = %39
  %57 = call i32 @mutex_lock(i32* @mtd_partitions_mutex)
  %58 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %59 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %59, i32* @mtd_partitions)
  %61 = call i32 @mutex_unlock(i32* @mtd_partitions_mutex)
  %62 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %63 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %62, i32 0, i32 1
  %64 = call i32 @add_mtd_device(i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %71

68:                                               ; preds = %56
  %69 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %70 = call i32 @mtd_add_partition_attrs(%struct.mtd_part* %69)
  store i32 0, i32* %5, align 4
  br label %80

71:                                               ; preds = %67
  %72 = call i32 @mutex_lock(i32* @mtd_partitions_mutex)
  %73 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %74 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %73, i32 0, i32 0
  %75 = call i32 @list_del(i32* %74)
  %76 = call i32 @mutex_unlock(i32* @mtd_partitions_mutex)
  %77 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %78 = call i32 @free_partition(%struct.mtd_part* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %71, %68, %53, %36, %20
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.mtd_partition*, i32, i32) #1

declare dso_local %struct.mtd_part* @allocate_partition(%struct.mtd_info*, %struct.mtd_partition*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.mtd_part*) #1

declare dso_local i32 @PTR_ERR(%struct.mtd_part*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @add_mtd_device(i32*) #1

declare dso_local i32 @mtd_add_partition_attrs(%struct.mtd_part*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_partition(%struct.mtd_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
