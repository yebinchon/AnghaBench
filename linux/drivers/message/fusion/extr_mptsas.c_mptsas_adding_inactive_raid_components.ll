; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_adding_inactive_raid_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_adding_inactive_raid_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.mptsas_phyinfo = type { i32 }
%struct.mptsas_devinfo = type { i32, i32 }

@MPI_CONFIG_PAGETYPE_RAID_VOLUME = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_STATUS_FLAG_VOLUME_INACTIVE = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_BUS_TARGET_ID = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_PGAD_FORM_SHIFT = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE0_FLAGS_DEVICE_PRESENT = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE0_FLAGS_DEVICE_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i32, i32)* @mptsas_adding_inactive_raid_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_adding_inactive_raid_components(%struct.TYPE_25__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca %struct.TYPE_26__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mptsas_phyinfo*, align 8
  %14 = alloca %struct.mptsas_devinfo, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  %15 = call i32 @memset(%struct.TYPE_26__* %7, i32 0, i32 40)
  %16 = call i32 @memset(%struct.TYPE_26__* %8, i32 0, i32 40)
  %17 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 6
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store %struct.TYPE_26__* %8, %struct.TYPE_26__** %25, align 8
  %26 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = call i64 @mpt_config(%struct.TYPE_25__* %30, %struct.TYPE_26__* %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %134

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %134

39:                                               ; preds = %34
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 4
  %46 = call %struct.TYPE_23__* @pci_alloc_consistent(i32 %42, i32 %45, i32* %9)
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %10, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %48 = icmp ne %struct.TYPE_23__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %134

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %56 = call i64 @mpt_config(%struct.TYPE_25__* %55, %struct.TYPE_26__* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %134

59:                                               ; preds = %50
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MPI_RAIDVOL0_STATUS_FLAG_VOLUME_INACTIVE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %134

68:                                               ; preds = %59
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %134

74:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %130, %74
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %75
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @mpt_raid_phys_disk_pg0(%struct.TYPE_25__* %82, i32 %90, %struct.TYPE_24__* %11)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %130

94:                                               ; preds = %81
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_BUS_TARGET_ID, align 4
  %97 = load i32, i32* @MPI_SAS_DEVICE_PGAD_FORM_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %102, %104
  %106 = call i64 @mptsas_sas_device_pg0(%struct.TYPE_25__* %95, %struct.mptsas_devinfo* %14, i32 %98, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %130

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %14, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MPI_SAS_DEVICE0_FLAGS_DEVICE_PRESENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %14, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MPI_SAS_DEVICE0_FLAGS_DEVICE_MAPPED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %115, %109
  br label %130

122:                                              ; preds = %115
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %14, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.mptsas_phyinfo* @mptsas_find_phyinfo_by_sas_address(%struct.TYPE_25__* %123, i32 %125)
  store %struct.mptsas_phyinfo* %126, %struct.mptsas_phyinfo** %13, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %128 = load %struct.mptsas_phyinfo*, %struct.mptsas_phyinfo** %13, align 8
  %129 = call i32 @mptsas_add_end_device(%struct.TYPE_25__* %127, %struct.mptsas_phyinfo* %128)
  br label %130

130:                                              ; preds = %122, %121, %108, %93
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %75

133:                                              ; preds = %75
  br label %134

134:                                              ; preds = %133, %73, %67, %58, %49, %38, %33
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %136 = icmp ne %struct.TYPE_23__* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @pci_free_consistent(i32 %140, i32 %143, %struct.TYPE_23__* %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %134
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @mpt_config(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_23__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i64 @mpt_raid_phys_disk_pg0(%struct.TYPE_25__*, i32, %struct.TYPE_24__*) #1

declare dso_local i64 @mptsas_sas_device_pg0(%struct.TYPE_25__*, %struct.mptsas_devinfo*, i32, i64) #1

declare dso_local %struct.mptsas_phyinfo* @mptsas_find_phyinfo_by_sas_address(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @mptsas_add_end_device(%struct.TYPE_25__*, %struct.mptsas_phyinfo*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
