; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_set_rx_mcast_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_set_rx_mcast_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_3__*, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@bnad_bcast_addr = common dso_local global i32* null, align 8
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNAD_CF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*)* @bnad_set_rx_mcast_fltr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_set_rx_mcast_fltr(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %7 = load %struct.bnad*, %struct.bnad** %2, align 8
  %8 = getelementptr inbounds %struct.bnad, %struct.bnad* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netdev_mc_count(%struct.net_device* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_ALLMULTI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i64 @netdev_mc_empty(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %81

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.bnad*, %struct.bnad** %2, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 2
  %28 = call %struct.TYPE_4__* @bna_attr(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %68

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i32* @kcalloc(i32 %35, i32 %36, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %68

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32*, i32** @bnad_bcast_addr, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @ether_addr_copy(i32* %44, i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @bnad_netdev_mc_list_get(%struct.net_device* %48, i32* %49)
  %51 = load %struct.bnad*, %struct.bnad** %2, align 8
  %52 = getelementptr inbounds %struct.bnad, %struct.bnad* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @bna_rx_mcast_listset(i32 %56, i32 %58, i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @kfree(i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %42
  br label %68

67:                                               ; preds = %42
  br label %81

68:                                               ; preds = %66, %41, %32, %18
  %69 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %70 = load %struct.bnad*, %struct.bnad** %2, align 8
  %71 = getelementptr inbounds %struct.bnad, %struct.bnad* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.bnad*, %struct.bnad** %2, align 8
  %75 = getelementptr inbounds %struct.bnad, %struct.bnad* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bna_rx_mcast_delall(i32 %79)
  br label %81

81:                                               ; preds = %68, %67, %23
  ret void
}

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i64 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @bna_attr(i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @bnad_netdev_mc_list_get(%struct.net_device*, i32*) #1

declare dso_local i32 @bna_rx_mcast_listset(i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bna_rx_mcast_delall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
