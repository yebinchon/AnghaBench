; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_stats_rlim_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_qos_conf.c_nfp_flower_stats_rlim_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_police_cfg_head = type { i32 }
%struct.sk_buff = type { i32 }

@NFP_FLOWER_CMSG_TYPE_QOS_STATS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_priv*, i32)* @nfp_flower_stats_rlim_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_stats_rlim_request(%struct.nfp_flower_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_flower_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_police_cfg_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_flower_priv* %0, %struct.nfp_flower_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_QOS_STATS, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_2__* %9, i32 4, i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.nfp_police_cfg_head* @nfp_flower_cmsg_get_data(%struct.sk_buff* %17)
  store %struct.nfp_police_cfg_head* %18, %struct.nfp_police_cfg_head** %5, align 8
  %19 = load %struct.nfp_police_cfg_head*, %struct.nfp_police_cfg_head** %5, align 8
  %20 = call i32 @memset(%struct.nfp_police_cfg_head* %19, i32 0, i32 4)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @cpu_to_be32(i32 %21)
  %23 = load %struct.nfp_police_cfg_head*, %struct.nfp_police_cfg_head** %5, align 8
  %24 = getelementptr inbounds %struct.nfp_police_cfg_head, %struct.nfp_police_cfg_head* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @nfp_ctrl_tx(i32 %29, %struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local %struct.nfp_police_cfg_head* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.nfp_police_cfg_head*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
