; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_diag_free_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_diag_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }

@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_INTERRUPT_TEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_diag_free_res(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %5, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 4
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QLCNIC_INTERRUPT_TEST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %37, i64 %39
  store %struct.qlcnic_host_sds_ring* %40, %struct.qlcnic_host_sds_ring** %6, align 8
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %42 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %43 = call i32 @qlcnic_disable_sds_intr(%struct.qlcnic_adapter* %41, %struct.qlcnic_host_sds_ring* %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %26

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %50 = call i32 @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter* %49)
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %52 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %51)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %64 = call i64 @qlcnic_attach(%struct.qlcnic_adapter* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %76

67:                                               ; preds = %48
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i64 @netif_running(%struct.net_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = call i32 @__qlcnic_up(%struct.qlcnic_adapter* %72, %struct.net_device* %73)
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %66
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i32 @netif_device_attach(%struct.net_device* %77)
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_disable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_up(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
