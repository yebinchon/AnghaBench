; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_dp_swap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_dp_swap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.nfp_net_dp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.nfp_net_dp*)* @nfp_net_dp_swap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_dp_swap_enable(%struct.nfp_net* %0, %struct.nfp_net_dp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_net_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %5, align 8
  %8 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %9 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %10 = call i32 @nfp_net_dp_swap(%struct.nfp_net* %8, %struct.nfp_net_dp* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %18, i32 0, i32 1
  %20 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nfp_net_vector_assign_rings(%struct.TYPE_4__* %19, i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %33 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %37 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netif_set_real_num_rx_queues(%struct.TYPE_5__* %35, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %31
  %46 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %53 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %45
  %58 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %59 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %63 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_5__* %61, i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %45
  %73 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %74 = call i32 @nfp_net_set_config_and_enable(%struct.nfp_net* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %69, %43
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @nfp_net_dp_swap(%struct.nfp_net*, %struct.nfp_net_dp*) #1

declare dso_local i32 @nfp_net_vector_assign_rings(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @nfp_net_set_config_and_enable(%struct.nfp_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
