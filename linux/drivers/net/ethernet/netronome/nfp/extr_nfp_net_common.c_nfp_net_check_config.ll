; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_check_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i64 }
%struct.nfp_net_dp = type { i64, i64, i32 }
%struct.netlink_ext_ack = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"MTU too large w/ XDP enabled\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Insufficient number of TX rings w/ XDP enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.nfp_net_dp*, %struct.netlink_ext_ack*)* @nfp_net_check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_check_config(%struct.nfp_net* %0, %struct.nfp_net_dp* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %8 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %9 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %15 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %21 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %29 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %34 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %32, %19, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
