; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32, i64 }

@CXGB4VF_FW_OK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cxgb4vf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4vf_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.port_info* @netdev_priv(%struct.net_device* %7)
  store %struct.port_info* %8, %struct.port_info** %5, align 8
  %9 = load %struct.port_info*, %struct.port_info** %5, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 2
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %6, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CXGB4VF_FW_OK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = call i32 @adapter_up(%struct.adapter* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load %struct.port_info*, %struct.port_info** %5, align 8
  %36 = call i32 @t4vf_update_port_info(%struct.port_info* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @link_start(%struct.net_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %60

47:                                               ; preds = %41
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = call i32 @t4vf_get_vf_vlan_acl(%struct.adapter* %48)
  %50 = load %struct.port_info*, %struct.port_info** %5, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netif_tx_start_all_queues(%struct.net_device* %52)
  %54 = load %struct.port_info*, %struct.port_info** %5, align 8
  %55 = getelementptr inbounds %struct.port_info, %struct.port_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.adapter*, %struct.adapter** %6, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 1
  %59 = call i32 @set_bit(i32 %56, i64* %58)
  store i32 0, i32* %2, align 4
  br label %70

60:                                               ; preds = %46
  %61 = load %struct.adapter*, %struct.adapter** %6, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.adapter*, %struct.adapter** %6, align 8
  %67 = call i32 @adapter_down(%struct.adapter* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %47, %39, %31, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @adapter_up(%struct.adapter*) #1

declare dso_local i32 @t4vf_update_port_info(%struct.port_info*) #1

declare dso_local i32 @link_start(%struct.net_device*) #1

declare dso_local i32 @t4vf_get_vf_vlan_acl(%struct.adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @adapter_down(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
