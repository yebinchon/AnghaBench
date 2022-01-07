; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_vxlan_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_vxlan_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NFP_NET_CFG_CTRL_VXLAN = common dso_local global i32 0, align 4
@NFP_NET_N_VXLAN_PORTS = common dso_local global i32 0, align 4
@NFP_NET_CFG_VXLAN_PORT = common dso_local global i64 0, align 8
@NFP_NET_CFG_UPDATE_VXLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, i32, i32)* @nfp_net_set_vxlan_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_set_vxlan_port(%struct.nfp_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %8, i32* %14, align 4
  %15 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NFP_NET_CFG_CTRL_VXLAN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %65

23:                                               ; preds = %3
  %24 = load i32, i32* @NFP_NET_N_VXLAN_PORTS, align 4
  %25 = and i32 %24, 1
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %58, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NFP_NET_N_VXLAN_PORTS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %33 = load i64, i64* @NFP_NET_CFG_VXLAN_PORT, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %33, %36
  %38 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %39 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be16_to_cpu(i32 %45)
  %47 = shl i32 %46, 16
  %48 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %49 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be16_to_cpu(i32 %54)
  %56 = or i32 %47, %55
  %57 = call i32 @nn_writel(%struct.nfp_net* %32, i64 %37, i32 %56)
  br label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %7, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %63 = load i32, i32* @NFP_NET_CFG_UPDATE_VXLAN, align 4
  %64 = call i32 @nfp_net_reconfig_post(%struct.nfp_net* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %22
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i64, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @nfp_net_reconfig_post(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
