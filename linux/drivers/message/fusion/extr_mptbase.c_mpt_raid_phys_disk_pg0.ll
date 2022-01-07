; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_raid_phys_disk_pg0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_raid_phys_disk_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }

@MPI_RAIDPHYSDISKPAGE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_RAID_PHYSDISK = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_raid_phys_disk_pg0(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %12 = call i32 @memset(%struct.TYPE_18__* %7, i32 0, i32 40)
  %13 = call i32 @memset(%struct.TYPE_18__* %8, i32 0, i32 40)
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = call i32 @memset(%struct.TYPE_18__* %14, i32 0, i32 40)
  %16 = load i32, i32* @MPI_RAIDPHYSDISKPAGE0_PAGEVERSION, align 4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 7
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, align 4
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 6
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = call i64 @mpt_config(%struct.TYPE_19__* %25, %struct.TYPE_18__* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %74

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 4
  %45 = call %struct.TYPE_17__* @pci_alloc_consistent(i32 %41, i32 %44, i32* %9)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %10, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %74

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = call i64 @mpt_config(%struct.TYPE_19__* %58, %struct.TYPE_18__* %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %74

64:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = call i32 @memcpy(%struct.TYPE_18__* %65, %struct.TYPE_17__* %66, i32 4)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %64, %61, %48, %35, %28
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = icmp ne %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @pci_free_consistent(i32 %80, i32 %83, %struct.TYPE_17__* %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %74
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @mpt_config(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
