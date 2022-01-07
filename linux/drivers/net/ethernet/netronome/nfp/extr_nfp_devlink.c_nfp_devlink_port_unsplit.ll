; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_port_unsplit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_port_unsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_pf = type { i32 }
%struct.nfp_eth_table_port = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)* @nfp_devlink_port_unsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_port_unsplit(%struct.devlink* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.nfp_pf*, align 8
  %8 = alloca %struct.nfp_eth_table_port, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %11 = load %struct.devlink*, %struct.devlink** %4, align 8
  %12 = call %struct.nfp_pf* @devlink_priv(%struct.devlink* %11)
  store %struct.nfp_pf* %12, %struct.nfp_pf** %7, align 8
  %13 = load %struct.nfp_pf*, %struct.nfp_pf** %7, align 8
  %14 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.nfp_pf*, %struct.nfp_pf** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @nfp_devlink_fill_eth_port_from_id(%struct.nfp_pf* %17, i32 %18, %struct.nfp_eth_table_port* %8)
  store i32 %19, i32* %10, align 4
  %20 = call i32 (...) @rtnl_unlock()
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %44

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %8, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %44

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 10, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.nfp_pf*, %struct.nfp_pf** %7, align 8
  %40 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @nfp_devlink_set_lanes(%struct.nfp_pf* %39, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %38, %28, %23
  %45 = load %struct.nfp_pf*, %struct.nfp_pf** %7, align 8
  %46 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local %struct.nfp_pf* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nfp_devlink_fill_eth_port_from_id(%struct.nfp_pf*, i32, %struct.nfp_eth_table_port*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nfp_devlink_set_lanes(%struct.nfp_pf*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
