; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ltq_etop_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"etop: invalid MAC, using random\0A\00", align 1
@NET_ADDR_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ltq_etop_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ltq_etop_priv*, align 8
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ltq_etop_priv* %9, %struct.ltq_etop_priv** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 10, %10
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @ltq_etop_hw_init(%struct.net_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @ltq_etop_change_mtu(%struct.net_device* %20, i32 1500)
  %22 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(%struct.sockaddr* %5, i32* %25, i32 4)
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_valid_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @eth_random_addr(i32 %34)
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %19
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @ltq_etop_set_mac_address(%struct.net_device* %37, %struct.sockaddr* %5)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %58

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @NET_ADDR_RANDOM, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @ltq_etop_set_multicast_list(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @ltq_etop_mdio_init(%struct.net_device* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %58

57:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %67

58:                                               ; preds = %56, %41
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @unregister_netdev(%struct.net_device* %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @free_netdev(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %58, %18
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @ltq_etop_hw_exit(%struct.net_device* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ltq_etop_hw_init(%struct.net_device*) #1

declare dso_local i32 @ltq_etop_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @ltq_etop_set_mac_address(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i32 @ltq_etop_set_multicast_list(%struct.net_device*) #1

declare dso_local i32 @ltq_etop_mdio_init(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @ltq_etop_hw_exit(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
