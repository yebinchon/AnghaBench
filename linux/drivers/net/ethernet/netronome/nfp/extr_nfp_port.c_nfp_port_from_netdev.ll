; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_from_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_from_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_net = type { %struct.nfp_port* }
%struct.nfp_repr = type { %struct.nfp_port* }

@.str = private unnamed_addr constant [34 x i8] c"Unknown netdev type for nfp_port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.nfp_port*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_repr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i64 @nfp_netdev_is_nfp_net(%struct.net_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i8* @netdev_priv(%struct.net_device* %10)
  %12 = bitcast i8* %11 to %struct.nfp_net*
  store %struct.nfp_net* %12, %struct.nfp_net** %4, align 8
  %13 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %13, i32 0, i32 0
  %15 = load %struct.nfp_port*, %struct.nfp_port** %14, align 8
  store %struct.nfp_port* %15, %struct.nfp_port** %2, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i8* @netdev_priv(%struct.net_device* %21)
  %23 = bitcast i8* %22 to %struct.nfp_repr*
  store %struct.nfp_repr* %23, %struct.nfp_repr** %5, align 8
  %24 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %24, i32 0, i32 0
  %26 = load %struct.nfp_port*, %struct.nfp_port** %25, align 8
  store %struct.nfp_port* %26, %struct.nfp_port** %2, align 8
  br label %29

27:                                               ; preds = %16
  %28 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.nfp_port* null, %struct.nfp_port** %2, align 8
  br label %29

29:                                               ; preds = %27, %20, %9
  %30 = load %struct.nfp_port*, %struct.nfp_port** %2, align 8
  ret %struct.nfp_port* %30
}

declare dso_local i64 @nfp_netdev_is_nfp_net(%struct.net_device*) #1

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
