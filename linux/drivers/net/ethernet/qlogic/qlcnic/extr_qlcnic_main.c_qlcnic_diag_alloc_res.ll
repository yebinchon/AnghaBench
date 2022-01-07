; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_diag_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_diag_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.qlcnic_host_rds_ring = type { i32 }

@QLCNIC_SINGLE_RING = common dso_local global i32 0, align 4
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_diag_alloc_res(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_device_detach(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i64 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %19, %struct.net_device* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %24 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %23)
  %25 = load i32, i32* @QLCNIC_SINGLE_RING, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %38 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @netif_device_attach(%struct.net_device* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %130

45:                                               ; preds = %22
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %47 = call i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %52 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @netif_device_attach(%struct.net_device* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %68, i64 %70
  store %struct.qlcnic_host_rds_ring* %71, %struct.qlcnic_host_rds_ring** %8, align 8
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %73 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter* %72, %struct.qlcnic_host_rds_ring* %73, i32 %74)
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %99, i64 %101
  store %struct.qlcnic_host_sds_ring* %102, %struct.qlcnic_host_sds_ring** %7, align 8
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %104 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %105 = call i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter* %103, %struct.qlcnic_host_sds_ring* %104)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %88

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %79
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %124 = call i32 @qlcnic_linkevent_request(%struct.qlcnic_adapter* %123, i32 1)
  br label %125

125:                                              ; preds = %118, %110
  %126 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 2
  %129 = call i32 @set_bit(i32 %126, i32* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %50, %41
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32) #1

declare dso_local i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @qlcnic_linkevent_request(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
