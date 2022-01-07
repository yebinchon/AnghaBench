; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__*, i32, %struct.efx_ef10_nic_data* }
%struct.TYPE_2__ = type { i32, %struct.pci_dev*, i64 }
%struct.pci_dev = type { i32 }
%struct.efx_ef10_nic_data = type { i32, i32, i32, i32, i32, i64, i32, %struct.ef10_vf* }
%struct.ef10_vf = type { i32* }

@dev_attr_primary_flag = common dso_local global i32 0, align 4
@dev_attr_link_control_flag = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_ef10_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_remove(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 2
  %7 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  store %struct.efx_ef10_nic_data* %7, %struct.efx_ef10_nic_data** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = call i32 @efx_ef10_cleanup_vlans(%struct.efx_nic* %8)
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %11 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %10, i32 0, i32 6
  %12 = call i32 @mutex_destroy(i32* %11)
  %13 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %14 = call i32 @efx_ptp_remove(%struct.efx_nic* %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = call i32 @efx_mcdi_mon_remove(%struct.efx_nic* %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = call i32 @efx_ef10_rx_free_indir_table(%struct.efx_nic* %17)
  %19 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %20 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %25 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @iounmap(i64 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = call i32 @efx_ef10_free_vis(%struct.efx_nic* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %36 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = call i32 @efx_ef10_free_piobufs(%struct.efx_nic* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @device_remove_file(i32* %46, i32* @dev_attr_primary_flag)
  %48 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @device_remove_file(i32* %51, i32* @dev_attr_link_control_flag)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %54 = call i32 @efx_mcdi_detach(%struct.efx_nic* %53)
  %55 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %56 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memset(i32 %57, i32 0, i32 4)
  %59 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %60 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %59, i32 0, i32 2
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %63 = call i32 @efx_ef10_set_udp_tnl_ports(%struct.efx_nic* %62, i32 1)
  %64 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %65 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %68 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %67, i32 0, i32 2
  %69 = call i32 @mutex_destroy(i32* %68)
  %70 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %71 = call i32 @efx_mcdi_fini(%struct.efx_nic* %70)
  %72 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %73 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %74 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %73, i32 0, i32 1
  %75 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %72, i32* %74)
  %76 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %77 = call i32 @kfree(%struct.efx_ef10_nic_data* %76)
  ret void
}

declare dso_local i32 @efx_ef10_cleanup_vlans(%struct.efx_nic*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @efx_ptp_remove(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_mon_remove(%struct.efx_nic*) #1

declare dso_local i32 @efx_ef10_rx_free_indir_table(%struct.efx_nic*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @efx_ef10_free_vis(%struct.efx_nic*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @efx_ef10_free_piobufs(%struct.efx_nic*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @efx_mcdi_detach(%struct.efx_nic*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @efx_ef10_set_udp_tnl_ports(%struct.efx_nic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @efx_mcdi_fini(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @kfree(%struct.efx_ef10_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
