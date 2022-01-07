; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_sriov_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_sriov_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_3__*, %struct.be_resources }
%struct.TYPE_3__ = type { i32 }
%struct.be_resources = type { i8*, i32 }

@ACTIVE_PROFILE_TYPE = common dso_local global i32 0, align 4
@RESOURCE_LIMITS = common dso_local global i32 0, align 4
@MAX_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d VFs are already enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"RSS can be enabled for all VFs if num_vfs <= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_get_sriov_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_sriov_config(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_resources, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %6 = bitcast %struct.be_resources* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = load i32, i32* @ACTIVE_PROFILE_TYPE, align 4
  %9 = load i32, i32* @RESOURCE_LIMITS, align 4
  %10 = call i32 @be_cmd_get_profile_config(%struct.be_adapter* %7, %struct.be_resources* %3, i32* null, i32 %8, i32 %9, i32 0)
  %11 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %12 = call i64 @BE3_chip(%struct.be_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %3, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i8* @pci_sriov_get_totalvfs(%struct.TYPE_3__* %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @MAX_VFS, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @min(i32 %27, i32 %28)
  br label %31

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ null, %30 ]
  %33 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %3, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %31, %14, %1
  %35 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 2
  %37 = bitcast %struct.be_resources* %36 to i8*
  %38 = bitcast %struct.be_resources* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @pci_num_vf(%struct.TYPE_3__* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i8* @pci_sriov_get_totalvfs(%struct.TYPE_3__* %54)
  %56 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %45, %34
  %63 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %64 = call i64 @skyhawk_chip(%struct.be_adapter* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %68 = call i64 @be_max_vfs(%struct.be_adapter* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %75 = call i32 @be_calculate_pf_pool_rss_tables(%struct.be_adapter* %74)
  %76 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %81 = call i32 @be_max_pf_pool_rss_tables(%struct.be_adapter* %80)
  %82 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %73, %70, %66, %62
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @be_cmd_get_profile_config(%struct.be_adapter*, %struct.be_resources*, i32*, i32, i32, i32) #2

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #2

declare dso_local i8* @pci_sriov_get_totalvfs(%struct.TYPE_3__*) #2

declare dso_local i8* @min(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pci_num_vf(%struct.TYPE_3__*) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #2

declare dso_local i64 @be_max_vfs(%struct.be_adapter*) #2

declare dso_local i32 @be_calculate_pf_pool_rss_tables(%struct.be_adapter*) #2

declare dso_local i32 @be_max_pf_pool_rss_tables(%struct.be_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
