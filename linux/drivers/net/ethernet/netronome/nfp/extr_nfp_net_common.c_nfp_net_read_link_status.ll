; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_read_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_read_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NFP_NET_CFG_STS = common dso_local global i32 0, align 4
@NFP_NET_CFG_STS_LINK = common dso_local global i32 0, align 4
@NFP_PORT_CHANGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NIC Link is Up\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_read_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_read_link_status(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %6 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %7 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %11 = load i32, i32* @NFP_NET_CFG_STS, align 4
  %12 = call i32 @nn_readl(%struct.nfp_net* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NFP_NET_CFG_STS_LINK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %69

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %29 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32, i32* @NFP_PORT_CHANGED, align 4
  %36 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %37 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %35, i32* %39)
  br label %41

41:                                               ; preds = %34, %26
  %42 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %43 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %48 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_carrier_on(i32 %50)
  %52 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %53 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_info(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %68

57:                                               ; preds = %41
  %58 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %59 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netif_carrier_off(i32 %61)
  %63 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %64 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netdev_info(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %57, %46
  br label %69

69:                                               ; preds = %68, %25
  %70 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %71 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %70, i32 0, i32 1
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nn_readl(%struct.nfp_net*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
