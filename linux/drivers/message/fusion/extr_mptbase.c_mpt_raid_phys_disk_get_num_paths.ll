; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_raid_phys_disk_get_num_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_raid_phys_disk_get_num_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }

@MPI_RAIDPHYSDISKPAGE1_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_RAID_PHYSDISK = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_raid_phys_disk_get_num_paths(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %10 = call i32 @memset(%struct.TYPE_15__* %5, i32 0, i32 40)
  %11 = call i32 @memset(%struct.TYPE_15__* %6, i32 0, i32 40)
  %12 = load i32, i32* @MPI_RAIDPHYSDISKPAGE1_PAGEVERSION, align 4
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 7
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, align 4
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 6
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = call i64 @mpt_config(%struct.TYPE_14__* %22, %struct.TYPE_15__* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %57

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %57

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 4
  %38 = call %struct.TYPE_13__* @pci_alloc_consistent(i32 %34, i32 %37, i32* %7)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %8, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %57

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 4
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = call i64 @mpt_config(%struct.TYPE_14__* %49, %struct.TYPE_15__* %5)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %52, %41, %30, %25
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pci_free_consistent(i32 %63, i32 %66, %struct.TYPE_13__* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %57
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @mpt_config(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
