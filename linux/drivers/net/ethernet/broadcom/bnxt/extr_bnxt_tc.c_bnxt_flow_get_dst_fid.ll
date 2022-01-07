; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_flow_get_dst_fid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_flow_get_dst_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"dev(ifindex=%d) not on same switch\00", align 1
@BNXT_FID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.net_device*)* @bnxt_flow_get_dst_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_flow_get_dst_fid(%struct.bnxt* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnxt*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i32 @netdev_port_same_parent_id(i32 %9, %struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_info(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @BNXT_FID_INVALID, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i64 @bnxt_dev_is_vf_rep(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @bnxt_vf_rep_get_fid(%struct.net_device* %27)
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call %struct.bnxt* @netdev_priv(%struct.net_device* %30)
  store %struct.bnxt* %31, %struct.bnxt** %6, align 8
  %32 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %26, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @netdev_port_same_parent_id(i32, %struct.net_device*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i64 @bnxt_dev_is_vf_rep(%struct.net_device*) #1

declare dso_local i32 @bnxt_vf_rep_get_fid(%struct.net_device*) #1

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
