; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_flower_xmit_pre_tun_del_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_flower_xmit_pre_tun_del_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.nfp_fl_payload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfp_tun_pre_tun_rule = type { i32, i32, i32 }

@NFP_TUN_PRE_TUN_RULE_DEL = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_PRE_TUN_RULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_xmit_pre_tun_del_flow(%struct.nfp_app* %0, %struct.nfp_fl_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.nfp_tun_pre_tun_rule, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %5, align 8
  %10 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %10, i32 0, i32 0
  %12 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %11, align 8
  store %struct.nfp_flower_priv* %12, %struct.nfp_flower_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = call i32 @memset(%struct.nfp_tun_pre_tun_rule* %7, i32 0, i32 12)
  %14 = load i32, i32* @NFP_TUN_PRE_TUN_RULE_DEL, align 4
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nfp_tun_pre_tun_rule, %struct.nfp_tun_pre_tun_rule* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %31 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_PRE_TUN_RULE, align 4
  %32 = bitcast %struct.nfp_tun_pre_tun_rule* %7 to i8*
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app* %30, i32 %31, i32 12, i8* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %41 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.nfp_tun_pre_tun_rule*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
