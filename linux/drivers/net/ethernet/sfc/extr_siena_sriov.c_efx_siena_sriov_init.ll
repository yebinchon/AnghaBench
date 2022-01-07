; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i64, i32, i32, i32, i32, %struct.siena_nic_data*, %struct.net_device* }
%struct.siena_nic_data = type { %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.vfdi_status* }
%struct.vfdi_status = type { i32, i32, i64, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }

@EFX_MAX_CHANNELS = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@EFX_VI_SCALE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vf_max_tx_channels = common dso_local global i32 0, align 4
@efx_siena_sriov_peer_work = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"enabled SR-IOV for %d VFs, %d VI per VF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_siena_sriov_init(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.siena_nic_data*, align 8
  %6 = alloca %struct.vfdi_status*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 7
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 6
  %13 = load %struct.siena_nic_data*, %struct.siena_nic_data** %12, align 8
  store %struct.siena_nic_data* %13, %struct.siena_nic_data** %5, align 8
  %14 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @EFX_VI_BASE, align 4
  %17 = icmp sge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load i32, i32* @EFX_VI_BASE, align 4
  %21 = load i32, i32* @EFX_VI_SCALE_MAX, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %20, %23
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %174

31:                                               ; preds = %1
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = call i32 @efx_siena_sriov_cmd(%struct.efx_nic* %32, i32 1, i32* null, i32* null)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %172

37:                                               ; preds = %31
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %40 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %38, %struct.TYPE_5__* %40, i32 40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %169

46:                                               ; preds = %37
  %47 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %48 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.vfdi_status*, %struct.vfdi_status** %49, align 8
  store %struct.vfdi_status* %50, %struct.vfdi_status** %6, align 8
  %51 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %52 = call i32 @memset(%struct.vfdi_status* %51, i32 0, i32 40)
  %53 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %54 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %56 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %55, i32 0, i32 1
  store i32 40, i32* %56, align 4
  %57 = load i32, i32* @vf_max_tx_channels, align 4
  %58 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %59 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %64 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %66 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %69 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %71 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 1, %72
  %74 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %75 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %77 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %80 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %82 = call i32 @efx_siena_sriov_vf_alloc(%struct.efx_nic* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %46
  br label %164

86:                                               ; preds = %46
  %87 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %88 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %87, i32 0, i32 5
  %89 = call i32 @mutex_init(i32* %88)
  %90 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %91 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %90, i32 0, i32 2
  %92 = load i32, i32* @efx_siena_sriov_peer_work, align 4
  %93 = call i32 @INIT_WORK(i32* %91, i32 %92)
  %94 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %95 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %94, i32 0, i32 4
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %98 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %97, i32 0, i32 3
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %101 = call i32 @efx_siena_sriov_vfs_init(%struct.efx_nic* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %154

105:                                              ; preds = %86
  %106 = call i32 (...) @rtnl_lock()
  %107 = load %struct.vfdi_status*, %struct.vfdi_status** %6, align 8
  %108 = getelementptr inbounds %struct.vfdi_status, %struct.vfdi_status* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ether_addr_copy(i32 %112, i32 %115)
  %117 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %118 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %121 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = call i32 (...) @rtnl_unlock()
  %123 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %124 = call i32 @efx_siena_sriov_usrev(%struct.efx_nic* %123, i32 1)
  %125 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %126 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @pci_enable_sriov(i32 %127, i64 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %105
  br label %145

135:                                              ; preds = %105
  %136 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %137 = load i32, i32* @probe, align 4
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %140 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %143 = call i32 @efx_vf_size(%struct.efx_nic* %142)
  %144 = call i32 @netif_info(%struct.efx_nic* %136, i32 %137, %struct.net_device* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %141, i32 %143)
  store i32 0, i32* %2, align 4
  br label %174

145:                                              ; preds = %134
  %146 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %147 = call i32 @efx_siena_sriov_usrev(%struct.efx_nic* %146, i32 0)
  %148 = call i32 (...) @rtnl_lock()
  %149 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %150 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = call i32 (...) @rtnl_unlock()
  %152 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %153 = call i32 @efx_siena_sriov_vfs_fini(%struct.efx_nic* %152)
  br label %154

154:                                              ; preds = %145, %104
  %155 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %156 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %155, i32 0, i32 2
  %157 = call i32 @cancel_work_sync(i32* %156)
  %158 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %159 = call i32 @efx_siena_sriov_free_local(%struct.efx_nic* %158)
  %160 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %161 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @kfree(i32 %162)
  br label %164

164:                                              ; preds = %154, %85
  %165 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %166 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %167 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %166, i32 0, i32 0
  %168 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %165, %struct.TYPE_5__* %167)
  br label %169

169:                                              ; preds = %164, %45
  %170 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %171 = call i32 @efx_siena_sriov_cmd(%struct.efx_nic* %170, i32 0, i32* null, i32* null)
  br label %172

172:                                              ; preds = %169, %36
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %135, %30
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @efx_siena_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memset(%struct.vfdi_status*, i32, i32) #1

declare dso_local i32 @efx_siena_sriov_vf_alloc(%struct.efx_nic*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @efx_siena_sriov_vfs_init(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @efx_siena_sriov_usrev(%struct.efx_nic*, i32) #1

declare dso_local i32 @pci_enable_sriov(i32, i64) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, %struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

declare dso_local i32 @efx_siena_sriov_vfs_fini(%struct.efx_nic*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @efx_siena_sriov_free_local(%struct.efx_nic*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
