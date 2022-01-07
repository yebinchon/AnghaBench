; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @i40e_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xdp(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_vsi*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.i40e_netdev_priv* %9, %struct.i40e_netdev_priv** %6, align 8
  %10 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %11 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %10, i32 0, i32 0
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  store %struct.i40e_vsi* %12, %struct.i40e_vsi** %7, align 8
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I40E_VSI_MAIN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %23 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %60 [
    i32 129, label %25
    i32 130, label %31
    i32 128, label %49
  ]

25:                                               ; preds = %21
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %27 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %28 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i40e_xdp_setup(%struct.i40e_vsi* %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %21
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32 [ %43, %36 ], [ 0, %44 ]
  %47 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %48 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %63

49:                                               ; preds = %21
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %7, align 8
  %51 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %52 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %56 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @i40e_xsk_umem_setup(%struct.i40e_vsi* %50, i32 %54, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %21
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %49, %45, %25, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_xdp_setup(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_xsk_umem_setup(%struct.i40e_vsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
