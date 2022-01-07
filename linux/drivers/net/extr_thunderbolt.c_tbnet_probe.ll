; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_service = type { i32 }
%struct.tb_service_id = type { i32 }
%struct.tb_xdomain = type { i32 }
%struct.net_device = type { i32, i32, i32, i64, i32, i32*, i32 }
%struct.tbnet = type { %struct.TYPE_3__, i32, %struct.tb_xdomain*, %struct.net_device*, %struct.tb_service*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tbnet*, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@tbnet_login_work = common dso_local global i32 0, align 4
@tbnet_connected_work = common dso_local global i32 0, align 4
@tbnet_disconnect_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"thunderbolt%d\00", align 1
@tbnet_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_ALL_TSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@tbnet_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@TBNET_MAX_MTU = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@tbnet_svc_uuid = common dso_local global i32 0, align 4
@tbnet_handle_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_service*, %struct.tb_service_id*)* @tbnet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_probe(%struct.tb_service* %0, %struct.tb_service_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_service*, align 8
  %5 = alloca %struct.tb_service_id*, align 8
  %6 = alloca %struct.tb_xdomain*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tbnet*, align 8
  %9 = alloca i32, align 4
  store %struct.tb_service* %0, %struct.tb_service** %4, align 8
  store %struct.tb_service_id* %1, %struct.tb_service_id** %5, align 8
  %10 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %11 = call %struct.tb_xdomain* @tb_service_parent(%struct.tb_service* %10)
  store %struct.tb_xdomain* %11, %struct.tb_xdomain** %6, align 8
  %12 = call %struct.net_device* @alloc_etherdev(i32 80)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %21 = getelementptr inbounds %struct.tb_service, %struct.tb_service* %20, i32 0, i32 0
  %22 = call i32 @SET_NETDEV_DEV(%struct.net_device* %19, i32* %21)
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call %struct.tbnet* @netdev_priv(%struct.net_device* %23)
  store %struct.tbnet* %24, %struct.tbnet** %8, align 8
  %25 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %26 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %25, i32 0, i32 10
  %27 = load i32, i32* @tbnet_login_work, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  %29 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %30 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %29, i32 0, i32 9
  %31 = load i32, i32* @tbnet_connected_work, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %34 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %33, i32 0, i32 8
  %35 = load i32, i32* @tbnet_disconnect_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %38 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %37, i32 0, i32 7
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %41 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %40, i32 0, i32 6
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %44 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %43, i32 0, i32 5
  %45 = call i32 @atomic_set(i32* %44, i32 0)
  %46 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %47 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %48 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %47, i32 0, i32 4
  store %struct.tb_service* %46, %struct.tb_service** %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %51 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %50, i32 0, i32 3
  store %struct.net_device* %49, %struct.net_device** %51, align 8
  %52 = load %struct.tb_xdomain*, %struct.tb_xdomain** %6, align 8
  %53 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %54 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %53, i32 0, i32 2
  store %struct.tb_xdomain* %52, %struct.tb_xdomain** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = call i32 @tbnet_generate_mac(%struct.net_device* %55)
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strcpy(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 5
  store i32* @tbnet_netdev_ops, i32** %62, align 8
  %63 = load i32, i32* @NETIF_F_SG, align 4
  %64 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NETIF_F_GRO, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add i64 %84, 4
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.net_device*, %struct.net_device** %7, align 8
  %88 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %89 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %88, i32 0, i32 1
  %90 = load i32, i32* @tbnet_poll, align 4
  %91 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %92 = call i32 @netif_napi_add(%struct.net_device* %87, i32* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @ETH_MIN_MTU, align 4
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load i64, i64* @TBNET_MAX_MTU, align 8
  %97 = load i64, i64* @ETH_HLEN, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %102 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32* @tbnet_svc_uuid, i32** %103, align 8
  %104 = load i32, i32* @tbnet_handle_packet, align 4
  %105 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %106 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %109 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %110 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store %struct.tbnet* %108, %struct.tbnet** %111, align 8
  %112 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %113 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %112, i32 0, i32 0
  %114 = call i32 @tb_register_protocol_handler(%struct.TYPE_3__* %113)
  %115 = load %struct.tb_service*, %struct.tb_service** %4, align 8
  %116 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %117 = call i32 @tb_service_set_drvdata(%struct.tb_service* %115, %struct.tbnet* %116)
  %118 = load %struct.net_device*, %struct.net_device** %7, align 8
  %119 = call i32 @register_netdev(%struct.net_device* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %18
  %123 = load %struct.tbnet*, %struct.tbnet** %8, align 8
  %124 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %123, i32 0, i32 0
  %125 = call i32 @tb_unregister_protocol_handler(%struct.TYPE_3__* %124)
  %126 = load %struct.net_device*, %struct.net_device** %7, align 8
  %127 = call i32 @free_netdev(%struct.net_device* %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %130

129:                                              ; preds = %18
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %122, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.tb_xdomain* @tb_service_parent(%struct.tb_service*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.tbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tbnet_generate_mac(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @tb_register_protocol_handler(%struct.TYPE_3__*) #1

declare dso_local i32 @tb_service_set_drvdata(%struct.tb_service*, %struct.tbnet*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @tb_unregister_protocol_handler(%struct.TYPE_3__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
