; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { i64, i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ALE_VLAN = common dso_local global i32 0, align 4
@HOST_PORT_NUM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@cpsw_set_slave_mac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @cpsw_ndo_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpsw_priv*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.cpsw_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.cpsw_priv* %13, %struct.cpsw_priv** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %7, align 8
  %16 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %17 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %16, i32 0, i32 2
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %17, align 8
  store %struct.cpsw_common* %18, %struct.cpsw_common** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @is_valid_ether_addr(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EADDRNOTAVAIL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %102

27:                                               ; preds = %2
  %28 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %29 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pm_runtime_get_sync(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %36 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pm_runtime_put_noidle(i32 %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %102

40:                                               ; preds = %27
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %42 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %48 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %51 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @ALE_VLAN, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %46, %40
  %58 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %59 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %62 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HOST_PORT_NUM, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @cpsw_ale_del_ucast(i32 %60, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %69 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %72 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HOST_PORT_NUM, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @cpsw_ale_add_ucast(i32 %70, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %79 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %82 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = call i32 @memcpy(i32 %80, i32 %83, i32 %84)
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %90 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @memcpy(i32 %88, i32 %91, i32 %92)
  %94 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %95 = load i32, i32* @cpsw_set_slave_mac, align 4
  %96 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %97 = call i32 @for_each_slave(%struct.cpsw_priv* %94, i32 %95, %struct.cpsw_priv* %96)
  %98 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %99 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pm_runtime_put(i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %57, %34, %24
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cpsw_ale_del_ucast(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_ucast(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @for_each_slave(%struct.cpsw_priv*, i32, %struct.cpsw_priv*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
