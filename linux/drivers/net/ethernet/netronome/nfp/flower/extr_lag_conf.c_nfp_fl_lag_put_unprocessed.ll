; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_fl_lag_put_unprocessed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_fl_lag_put_unprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_lag = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_lag_config = type { i32 }

@NFP_FL_LAG_GROUP_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFP_FL_LAG_RETRANS_LIMIT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_lag*, %struct.sk_buff*)* @nfp_fl_lag_put_unprocessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_lag_put_unprocessed(%struct.nfp_fl_lag* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_fl_lag*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nfp_flower_cmsg_lag_config*, align 8
  store %struct.nfp_fl_lag* %0, %struct.nfp_fl_lag** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = call %struct.nfp_flower_cmsg_lag_config* @nfp_flower_cmsg_get_data(%struct.sk_buff* %7)
  store %struct.nfp_flower_cmsg_lag_config* %8, %struct.nfp_flower_cmsg_lag_config** %6, align 8
  %9 = load %struct.nfp_flower_cmsg_lag_config*, %struct.nfp_flower_cmsg_lag_config** %6, align 8
  %10 = getelementptr inbounds %struct.nfp_flower_cmsg_lag_config, %struct.nfp_flower_cmsg_lag_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @be32_to_cpu(i32 %11)
  %13 = load i64, i64* @NFP_FL_LAG_GROUP_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.nfp_fl_lag*, %struct.nfp_fl_lag** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_fl_lag, %struct.nfp_fl_lag* %19, i32 0, i32 0
  %21 = call i64 @skb_queue_len(i32* %20)
  %22 = load i64, i64* @NFP_FL_LAG_RETRANS_LIMIT, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.nfp_fl_lag*, %struct.nfp_fl_lag** %4, align 8
  %29 = getelementptr inbounds %struct.nfp_fl_lag, %struct.nfp_fl_lag* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @__skb_queue_tail(i32* %29, %struct.sk_buff* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %24, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.nfp_flower_cmsg_lag_config* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
