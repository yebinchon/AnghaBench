; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.macvlan_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32, %struct.netlink_ext_ack*)* @macvlan_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.macvlan_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %18 = load %struct.net_device*, %struct.net_device** %11, align 8
  %19 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.macvlan_dev* %19, %struct.macvlan_dev** %16, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load %struct.macvlan_dev*, %struct.macvlan_dev** %16, align 8
  %23 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @macvlan_passthru(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %7
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @is_unicast_ether_addr(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %61

34:                                               ; preds = %27, %7
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @NLM_F_REPLACE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %61

42:                                               ; preds = %34
  %43 = load i8*, i8** %12, align 8
  %44 = call i64 @is_unicast_ether_addr(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @dev_uc_add_excl(%struct.net_device* %47, i8* %48)
  store i32 %49, i32* %17, align 4
  br label %59

50:                                               ; preds = %42
  %51 = load i8*, i8** %12, align 8
  %52 = call i64 @is_multicast_ether_addr(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @dev_mc_add_excl(%struct.net_device* %55, i8* %56)
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %39, %31
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @macvlan_passthru(i32) #1

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i32 @dev_uc_add_excl(%struct.net_device*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_mc_add_excl(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
