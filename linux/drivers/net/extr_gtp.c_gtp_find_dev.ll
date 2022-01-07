; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_find_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtp_dev = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32* }

@GTPA_NET_NS_FD = common dso_local global i64 0, align 8
@GTPA_LINK = common dso_local global i64 0, align 8
@gtp_netdev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gtp_dev* (%struct.net*, %struct.nlattr**)* @gtp_find_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gtp_dev* @gtp_find_dev(%struct.net* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.gtp_dev*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.gtp_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.gtp_dev* null, %struct.gtp_dev** %6, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %10 = load i64, i64* @GTPA_NET_NS_FD, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i64, i64* @GTPA_NET_NS_FD, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = call i32 @nla_get_u32(%struct.nlattr* %18)
  %20 = call %struct.net* @get_net_ns_by_fd(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.net*, %struct.net** %4, align 8
  %23 = call %struct.net* @get_net(%struct.net* %22)
  store %struct.net* %23, %struct.net** %8, align 8
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = call i64 @IS_ERR(%struct.net* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store %struct.gtp_dev* null, %struct.gtp_dev** %3, align 8
  br label %51

29:                                               ; preds = %24
  %30 = load %struct.net*, %struct.net** %8, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %32 = load i64, i64* @GTPA_LINK, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  %36 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %30, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, @gtp_netdev_ops
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = call %struct.gtp_dev* @netdev_priv(%struct.net_device* %45)
  store %struct.gtp_dev* %46, %struct.gtp_dev** %6, align 8
  br label %47

47:                                               ; preds = %44, %39, %29
  %48 = load %struct.net*, %struct.net** %8, align 8
  %49 = call i32 @put_net(%struct.net* %48)
  %50 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  store %struct.gtp_dev* %50, %struct.gtp_dev** %3, align 8
  br label %51

51:                                               ; preds = %47, %28
  %52 = load %struct.gtp_dev*, %struct.gtp_dev** %3, align 8
  ret %struct.gtp_dev* %52
}

declare dso_local %struct.net* @get_net_ns_by_fd(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net* @get_net(%struct.net*) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local %struct.gtp_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
