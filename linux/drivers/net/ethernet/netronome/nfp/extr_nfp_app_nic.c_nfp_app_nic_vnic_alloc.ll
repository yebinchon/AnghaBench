; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app_nic.c_nfp_app_nic_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app_nic.c_nfp_app_nic_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_nic_vnic_alloc(%struct.nfp_app* %0, %struct.nfp_net* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %13 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @nfp_app_nic_vnic_init_phy_port(i32 %11, %struct.nfp_app* %12, %struct.nfp_net* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %28 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %35 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nfp_net_get_mac_addr(i32 %29, i32 %33, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %26, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @nfp_app_nic_vnic_init_phy_port(i32, %struct.nfp_app*, %struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_get_mac_addr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
