; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.gtp_dev = type { i32 }
%struct.gtp_net = type { i32 }

@IFLA_GTP_FD0 = common dso_local global i64 0, align 8
@IFLA_GTP_FD1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFLA_GTP_PDP_HASHSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to register new netdev %d\0A\00", align 1
@gtp_net_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"registered new GTP interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @gtp_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.gtp_dev*, align 8
  %13 = alloca %struct.gtp_net*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %17 = load i64, i64* @IFLA_GTP_FD0, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %23 = load i64, i64* @IFLA_GTP_FD1, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %88

30:                                               ; preds = %21, %5
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = call %struct.gtp_dev* @netdev_priv(%struct.net_device* %31)
  store %struct.gtp_dev* %32, %struct.gtp_dev** %12, align 8
  %33 = load %struct.gtp_dev*, %struct.gtp_dev** %12, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %35 = call i32 @gtp_encap_enable(%struct.gtp_dev* %33, %struct.nlattr** %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %88

40:                                               ; preds = %30
  %41 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %42 = load i64, i64* @IFLA_GTP_PDP_HASHSIZE, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 1024, i32* %14, align 4
  br label %53

47:                                               ; preds = %40
  %48 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %49 = load i64, i64* @IFLA_GTP_PDP_HASHSIZE, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_get_u32(%struct.nlattr* %51)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load %struct.gtp_dev*, %struct.gtp_dev** %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @gtp_hashtable_new(%struct.gtp_dev* %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %84

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = call i32 @register_netdevice(%struct.net_device* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %81

69:                                               ; preds = %60
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = call i32 @dev_net(%struct.net_device* %70)
  %72 = load i32, i32* @gtp_net_id, align 4
  %73 = call %struct.gtp_net* @net_generic(i32 %71, i32 %72)
  store %struct.gtp_net* %73, %struct.gtp_net** %13, align 8
  %74 = load %struct.gtp_dev*, %struct.gtp_dev** %12, align 8
  %75 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %74, i32 0, i32 0
  %76 = load %struct.gtp_net*, %struct.gtp_net** %13, align 8
  %77 = getelementptr inbounds %struct.gtp_net, %struct.gtp_net* %76, i32 0, i32 0
  %78 = call i32 @list_add_rcu(i32* %75, i32* %77)
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %88

81:                                               ; preds = %65
  %82 = load %struct.gtp_dev*, %struct.gtp_dev** %12, align 8
  %83 = call i32 @gtp_hashtable_free(%struct.gtp_dev* %82)
  br label %84

84:                                               ; preds = %81, %59
  %85 = load %struct.gtp_dev*, %struct.gtp_dev** %12, align 8
  %86 = call i32 @gtp_encap_disable(%struct.gtp_dev* %85)
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %69, %38, %27
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.gtp_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gtp_encap_enable(%struct.gtp_dev*, %struct.nlattr**) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @gtp_hashtable_new(%struct.gtp_dev*, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local %struct.gtp_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @gtp_hashtable_free(%struct.gtp_dev*) #1

declare dso_local i32 @gtp_encap_disable(%struct.gtp_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
