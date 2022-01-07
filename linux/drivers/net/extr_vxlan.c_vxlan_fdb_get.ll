; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_fdb = type { i32 }

@NDA_VNI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Fdb entry not found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_get(%struct.sk_buff* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5, i32 %6, %struct.netlink_ext_ack* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.netlink_ext_ack*, align 8
  %17 = alloca %struct.vxlan_dev*, align 8
  %18 = alloca %struct.vxlan_fdb*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.netlink_ext_ack* %7, %struct.netlink_ext_ack** %16, align 8
  %21 = load %struct.net_device*, %struct.net_device** %11, align 8
  %22 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %21)
  store %struct.vxlan_dev* %22, %struct.vxlan_dev** %17, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %24 = load i64, i64* @NDA_VNI, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %8
  %29 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %30 = load i64, i64* @NDA_VNI, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_u32(%struct.nlattr* %32)
  %34 = call i32 @cpu_to_be32(i32 %33)
  store i32 %34, i32* %19, align 4
  br label %40

35:                                               ; preds = %8
  %36 = load %struct.vxlan_dev*, %struct.vxlan_dev** %17, align 8
  %37 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.vxlan_dev*, %struct.vxlan_dev** %17, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %19, align 4
  %45 = call %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev* %42, i8* %43, i32 %44)
  store %struct.vxlan_fdb* %45, %struct.vxlan_fdb** %18, align 8
  %46 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %47 = icmp ne %struct.vxlan_fdb* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %16, align 8
  %50 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %20, align 4
  br label %63

53:                                               ; preds = %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load %struct.vxlan_dev*, %struct.vxlan_dev** %17, align 8
  %56 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @RTM_NEWNEIGH, align 4
  %60 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %18, align 8
  %61 = call i32 @first_remote_rcu(%struct.vxlan_fdb* %60)
  %62 = call i32 @vxlan_fdb_info(%struct.sk_buff* %54, %struct.vxlan_dev* %55, %struct.vxlan_fdb* %56, i32 %57, i32 %58, i32 %59, i32 0, i32 %61)
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %53, %48
  %64 = call i32 (...) @rcu_read_unlock()
  %65 = load i32, i32* %20, align 4
  ret i32 %65
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev*, i8*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @vxlan_fdb_info(%struct.sk_buff*, %struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @first_remote_rcu(%struct.vxlan_fdb*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
