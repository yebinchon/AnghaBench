; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Jumbo frames not supported on XDP\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* @netsec_xdp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_xdp_setup(%struct.netsec_priv* %0, %struct.bpf_prog* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netsec_priv*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %5, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %11 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %14 = icmp ne %struct.bpf_prog* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1500
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %22 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %15, %3
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call i32 @netsec_netdev_stop(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %34 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %33, i32 0, i32 0
  %35 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %36 = call %struct.bpf_prog* @xchg(i32* %34, %struct.bpf_prog* %35)
  store %struct.bpf_prog* %36, %struct.bpf_prog** %9, align 8
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %38 = icmp ne %struct.bpf_prog* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %41 = call i32 @bpf_prog_put(%struct.bpf_prog* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = call i64 @netif_running(%struct.net_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = call i32 @netsec_netdev_open(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %42
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netsec_netdev_stop(%struct.net_device*) #1

declare dso_local %struct.bpf_prog* @xchg(i32*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @netsec_netdev_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
