; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macvlan_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32)* @macvlan_fdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_fdb_del(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndmsg*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.macvlan_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %9, align 8
  %15 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %14)
  store %struct.macvlan_dev* %15, %struct.macvlan_dev** %12, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %19 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @macvlan_passthru(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %5
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @is_unicast_ether_addr(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %49

30:                                               ; preds = %23, %5
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @is_unicast_ether_addr(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @dev_uc_del(%struct.net_device* %35, i8* %36)
  store i32 %37, i32* %13, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @is_multicast_ether_addr(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @dev_mc_del(%struct.net_device* %43, i8* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %27
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @macvlan_passthru(i32) #1

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
