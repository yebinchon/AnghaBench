; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { i32, %struct.siena_vf*, i32, %struct.TYPE_2__* }
%struct.siena_vf = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_siena_sriov_fini(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.siena_vf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.siena_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 3
  %8 = load %struct.siena_nic_data*, %struct.siena_nic_data** %7, align 8
  store %struct.siena_nic_data* %8, %struct.siena_nic_data** %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %16 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = call i32 @efx_siena_sriov_usrev(%struct.efx_nic* %21, i32 0)
  %23 = call i32 (...) @rtnl_lock()
  %24 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %46, %14
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %35 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %34, i32 0, i32 1
  %36 = load %struct.siena_vf*, %struct.siena_vf** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %36, i64 %38
  store %struct.siena_vf* %39, %struct.siena_vf** %3, align 8
  %40 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %41 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %40, i32 0, i32 1
  %42 = call i32 @cancel_work_sync(i32* %41)
  %43 = load %struct.siena_vf*, %struct.siena_vf** %3, align 8
  %44 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %43, i32 0, i32 0
  %45 = call i32 @cancel_work_sync(i32* %44)
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %51 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %50, i32 0, i32 2
  %52 = call i32 @cancel_work_sync(i32* %51)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pci_disable_sriov(i32 %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %58 = call i32 @efx_siena_sriov_vfs_fini(%struct.efx_nic* %57)
  %59 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %60 = call i32 @efx_siena_sriov_free_local(%struct.efx_nic* %59)
  %61 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %62 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %61, i32 0, i32 1
  %63 = load %struct.siena_vf*, %struct.siena_vf** %62, align 8
  %64 = call i32 @kfree(%struct.siena_vf* %63)
  %65 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %66 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %67 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %66, i32 0, i32 0
  %68 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %65, i32* %67)
  %69 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %70 = call i32 @efx_siena_sriov_cmd(%struct.efx_nic* %69, i32 0, i32* null, i32* null)
  br label %71

71:                                               ; preds = %49, %13
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @efx_siena_sriov_usrev(%struct.efx_nic*, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @pci_disable_sriov(i32) #1

declare dso_local i32 @efx_siena_sriov_vfs_fini(%struct.efx_nic*) #1

declare dso_local i32 @efx_siena_sriov_free_local(%struct.efx_nic*) #1

declare dso_local i32 @kfree(%struct.siena_vf*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_siena_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
