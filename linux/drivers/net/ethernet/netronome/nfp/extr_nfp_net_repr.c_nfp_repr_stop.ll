; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_repr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nfp_repr_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_repr_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nfp_repr*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %6)
  store %struct.nfp_repr* %7, %struct.nfp_repr** %4, align 8
  %8 = load %struct.nfp_repr*, %struct.nfp_repr** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nfp_repr*, %struct.nfp_repr** %4, align 8
  %12 = call i32 @nfp_app_repr_stop(i32 %10, %struct.nfp_repr* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @nfp_port_configure(%struct.net_device* %18, i32 0)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_app_repr_stop(i32, %struct.nfp_repr*) #1

declare dso_local i32 @nfp_port_configure(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
