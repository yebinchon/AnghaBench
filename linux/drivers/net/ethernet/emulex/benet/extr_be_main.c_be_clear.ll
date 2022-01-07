; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.be_resources = type { i32 }

@be_wq = common dso_local global i32 0, align 4
@BE_FLAGS_SETUP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_clear(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.be_resources, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = bitcast %struct.be_resources* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %10 = call i32 @be_cancel_worker(%struct.be_adapter* %9)
  %11 = load i32, i32* @be_wq, align 4
  %12 = call i32 @flush_workqueue(i32 %11)
  %13 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %14 = call i64 @sriov_enabled(%struct.be_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = call i32 @be_vf_clear(%struct.be_adapter* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %21 = call i64 @skyhawk_chip(%struct.be_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %25 = call i64 @be_physfn(%struct.be_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = call i32 @pci_vfs_assigned(%struct.pci_dev* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %33)
  %35 = call i32 @be_calculate_vf_res(%struct.be_adapter* %32, i32 %34, %struct.be_resources* %4)
  %36 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %37 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %40)
  %42 = call i32 @be_cmd_set_sriov_config(%struct.be_adapter* %36, i32 %39, i32 %41, %struct.be_resources* %4)
  br label %43

43:                                               ; preds = %31, %27, %23, %19
  %44 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %45 = call i32 @be_disable_vxlan_offloads(%struct.be_adapter* %44)
  %46 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %47 = call i32 @be_if_destroy(%struct.be_adapter* %46)
  %48 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %49 = call i32 @be_clear_queues(%struct.be_adapter* %48)
  %50 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %51 = call i32 @be_msix_disable(%struct.be_adapter* %50)
  %52 = load i32, i32* @BE_FLAGS_SETUP_DONE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @be_cancel_worker(%struct.be_adapter*) #2

declare dso_local i32 @flush_workqueue(i32) #2

declare dso_local i64 @sriov_enabled(%struct.be_adapter*) #2

declare dso_local i32 @be_vf_clear(%struct.be_adapter*) #2

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #2

declare dso_local i64 @be_physfn(%struct.be_adapter*) #2

declare dso_local i32 @pci_vfs_assigned(%struct.pci_dev*) #2

declare dso_local i32 @be_calculate_vf_res(%struct.be_adapter*, i32, %struct.be_resources*) #2

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #2

declare dso_local i32 @be_cmd_set_sriov_config(%struct.be_adapter*, i32, i32, %struct.be_resources*) #2

declare dso_local i32 @be_disable_vxlan_offloads(%struct.be_adapter*) #2

declare dso_local i32 @be_if_destroy(%struct.be_adapter*) #2

declare dso_local i32 @be_clear_queues(%struct.be_adapter*) #2

declare dso_local i32 @be_msix_disable(%struct.be_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
