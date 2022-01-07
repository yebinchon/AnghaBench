; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_flower_xmit_pre_tun_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_flower_xmit_pre_tun_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i64 }
%struct.nfp_fl_payload = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfp_tun_offloaded_mac = type { i32 }
%struct.nfp_tun_pre_tun_rule = type { i32, i32, i32 }

@NFP_TUN_PRE_TUN_RULE_LIMIT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_PRE_TUN_RULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_xmit_pre_tun_flow(%struct.nfp_app* %0, %struct.nfp_fl_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.nfp_tun_offloaded_mac*, align 8
  %8 = alloca %struct.nfp_tun_pre_tun_rule, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %5, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %12, align 8
  store %struct.nfp_flower_priv* %13, %struct.nfp_flower_priv** %6, align 8
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFP_TUN_PRE_TUN_RULE_LIMIT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %2
  %23 = call i32 @memset(%struct.nfp_tun_pre_tun_rule* %8, i32 0, i32 12)
  %24 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %9, align 8
  %28 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %29 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %34 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %8, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.nfp_tun_offloaded_mac* @nfp_tunnel_lookup_offloaded_macs(%struct.nfp_app* %38, i32 %41)
  store %struct.nfp_tun_offloaded_mac* %42, %struct.nfp_tun_offloaded_mac** %7, align 8
  %43 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %7, align 8
  %44 = icmp ne %struct.nfp_tun_offloaded_mac* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %22
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %22
  %49 = load %struct.nfp_tun_offloaded_mac*, %struct.nfp_tun_offloaded_mac** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_tun_offloaded_mac, %struct.nfp_tun_offloaded_mac* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cpu_to_be16(i32 %51)
  %53 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %57 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %62 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %65 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_PRE_TUN_RULE, align 4
  %66 = bitcast %struct.nfp_tun_pre_tun_rule* %8 to i8*
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app* %64, i32 %65, i32 12, i8* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %48
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %78

73:                                               ; preds = %48
  %74 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %75 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %71, %45, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @memset(%struct.nfp_tun_pre_tun_rule*, i32, i32) #1

declare dso_local %struct.nfp_tun_offloaded_mac* @nfp_tunnel_lookup_offloaded_macs(%struct.nfp_app*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
