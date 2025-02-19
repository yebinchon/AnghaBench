; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_internal_port_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_internal_port_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }

@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i64)* @nfp_flower_internal_port_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_internal_port_event_handler(%struct.nfp_app* %0, %struct.net_device* %1, i64 %2) #0 {
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app* %11, %struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @nfp_flower_free_internal_port_id(%struct.nfp_app* %16, %struct.net_device* %17)
  br label %19

19:                                               ; preds = %15, %10, %3
  %20 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %20
}

declare dso_local i64 @nfp_flower_internal_port_can_offload(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local i32 @nfp_flower_free_internal_port_id(%struct.nfp_app*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
