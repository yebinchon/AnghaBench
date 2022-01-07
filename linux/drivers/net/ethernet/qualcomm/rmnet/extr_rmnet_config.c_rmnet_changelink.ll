; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rmnet_priv = type { i64 }
%struct.rmnet_endpoint = type { i64, i32 }
%struct.rmnet_port = type { i32, i32* }
%struct.ifla_rmnet_flags = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i64 0, align 8
@IFLA_RMNET_MUX_ID = common dso_local global i64 0, align 8
@IFLA_RMNET_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @rmnet_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmnet_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.rmnet_priv*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.rmnet_endpoint*, align 8
  %13 = alloca %struct.rmnet_port*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ifla_rmnet_flags*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.rmnet_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.rmnet_priv* %17, %struct.rmnet_priv** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %105

23:                                               ; preds = %4
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @dev_net(%struct.net_device* %24)
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = load i64, i64* @IFLA_LINK, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_get_u32(%struct.nlattr* %29)
  %31 = call %struct.net_device* @__dev_get_by_index(i32 %25, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %11, align 8
  %32 = load %struct.net_device*, %struct.net_device** %11, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.net_device*, %struct.net_device** %11, align 8
  %36 = call i32 @rmnet_is_real_dev_registered(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %23
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %105

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %11, align 8
  %43 = call %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device* %42)
  store %struct.rmnet_port* %43, %struct.rmnet_port** %13, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %45 = load i64, i64* @IFLA_RMNET_MUX_ID, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %41
  %50 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %51 = load i64, i64* @IFLA_RMNET_MUX_ID, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i64 @nla_get_u16(%struct.nlattr* %53)
  store i64 %54, i64* %14, align 8
  %55 = load %struct.rmnet_port*, %struct.rmnet_port** %13, align 8
  %56 = load %struct.rmnet_priv*, %struct.rmnet_priv** %10, align 8
  %57 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port* %55, i64 %58)
  store %struct.rmnet_endpoint* %59, %struct.rmnet_endpoint** %12, align 8
  %60 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %12, align 8
  %61 = icmp ne %struct.rmnet_endpoint* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %105

65:                                               ; preds = %49
  %66 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %12, align 8
  %67 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %66, i32 0, i32 1
  %68 = call i32 @hlist_del_init_rcu(i32* %67)
  %69 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %12, align 8
  %70 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %69, i32 0, i32 1
  %71 = load %struct.rmnet_port*, %struct.rmnet_port** %13, align 8
  %72 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = call i32 @hlist_add_head_rcu(i32* %70, i32* %75)
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %12, align 8
  %79 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load %struct.rmnet_priv*, %struct.rmnet_priv** %10, align 8
  %82 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %65, %41
  %84 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %85 = load i64, i64* @IFLA_RMNET_FLAGS, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %91 = load i64, i64* @IFLA_RMNET_FLAGS, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call %struct.ifla_rmnet_flags* @nla_data(%struct.nlattr* %93)
  store %struct.ifla_rmnet_flags* %94, %struct.ifla_rmnet_flags** %15, align 8
  %95 = load %struct.ifla_rmnet_flags*, %struct.ifla_rmnet_flags** %15, align 8
  %96 = getelementptr inbounds %struct.ifla_rmnet_flags, %struct.ifla_rmnet_flags* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ifla_rmnet_flags*, %struct.ifla_rmnet_flags** %15, align 8
  %99 = getelementptr inbounds %struct.ifla_rmnet_flags, %struct.ifla_rmnet_flags* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %97, %100
  %102 = load %struct.rmnet_port*, %struct.rmnet_port** %13, align 8
  %103 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %89, %83
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %62, %38, %20
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.rmnet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @rmnet_is_real_dev_registered(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device*) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local %struct.rmnet_endpoint* @rmnet_get_endpoint(%struct.rmnet_port*, i64) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local %struct.ifla_rmnet_flags* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
