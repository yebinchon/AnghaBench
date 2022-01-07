; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_get_port_id_from_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_get_port_id_from_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_get_port_id_from_netdev(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @nfp_repr_get_port_id(%struct.net_device* %11)
  store i32 %12, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app* %14, %struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @nfp_flower_get_internal_port_id(%struct.nfp_app* %19, %struct.net_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nfp_flower_internal_port_get_port_id(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %25, %24, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @nfp_repr_get_port_id(%struct.net_device*) #1

declare dso_local i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @nfp_flower_get_internal_port_id(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @nfp_flower_internal_port_get_port_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
