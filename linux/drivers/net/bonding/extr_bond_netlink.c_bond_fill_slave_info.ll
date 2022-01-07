; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_fill_slave_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_fill_slave_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.slave = type { i32, i32, i32, i32, i32 }
%struct.aggregator = type { i32 }
%struct.port = type { %struct.TYPE_3__, i32, %struct.aggregator* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.port }

@IFLA_BOND_SLAVE_STATE = common dso_local global i32 0, align 4
@IFLA_BOND_SLAVE_MII_STATUS = common dso_local global i32 0, align 4
@IFLA_BOND_SLAVE_LINK_FAILURE_COUNT = common dso_local global i32 0, align 4
@IFLA_BOND_SLAVE_PERM_HWADDR = common dso_local global i32 0, align 4
@IFLA_BOND_SLAVE_QUEUE_ID = common dso_local global i32 0, align 4
@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@IFLA_BOND_SLAVE_AD_AGGREGATOR_ID = common dso_local global i32 0, align 4
@IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE = common dso_local global i32 0, align 4
@IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)* @bond_fill_slave_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_fill_slave_info(%struct.sk_buff* %0, %struct.net_device* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.slave*, align 8
  %9 = alloca %struct.aggregator*, align 8
  %10 = alloca %struct.port*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.slave* @bond_slave_get_rtnl(%struct.net_device* %11)
  store %struct.slave* %12, %struct.slave** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* @IFLA_BOND_SLAVE_STATE, align 4
  %15 = load %struct.slave*, %struct.slave** %8, align 8
  %16 = call i32 @bond_slave_state(%struct.slave* %15)
  %17 = call i64 @nla_put_u8(%struct.sk_buff* %13, i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %108

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @IFLA_BOND_SLAVE_MII_STATUS, align 4
  %23 = load %struct.slave*, %struct.slave** %8, align 8
  %24 = getelementptr inbounds %struct.slave, %struct.slave* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nla_put_u8(%struct.sk_buff* %21, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %108

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @IFLA_BOND_SLAVE_LINK_FAILURE_COUNT, align 4
  %32 = load %struct.slave*, %struct.slave** %8, align 8
  %33 = getelementptr inbounds %struct.slave, %struct.slave* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %108

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* @IFLA_BOND_SLAVE_PERM_HWADDR, align 4
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.slave*, %struct.slave** %8, align 8
  %45 = getelementptr inbounds %struct.slave, %struct.slave* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put(%struct.sk_buff* %39, i32 %40, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %108

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @IFLA_BOND_SLAVE_QUEUE_ID, align 4
  %53 = load %struct.slave*, %struct.slave** %8, align 8
  %54 = getelementptr inbounds %struct.slave, %struct.slave* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put_u16(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %108

59:                                               ; preds = %50
  %60 = load %struct.slave*, %struct.slave** %8, align 8
  %61 = getelementptr inbounds %struct.slave, %struct.slave* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @BOND_MODE(i32 %62)
  %64 = load i64, i64* @BOND_MODE_8023AD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %59
  %67 = load %struct.slave*, %struct.slave** %8, align 8
  %68 = call %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.port* %69, %struct.port** %10, align 8
  %70 = load %struct.slave*, %struct.slave** %8, align 8
  %71 = call %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.port, %struct.port* %72, i32 0, i32 2
  %74 = load %struct.aggregator*, %struct.aggregator** %73, align 8
  store %struct.aggregator* %74, %struct.aggregator** %9, align 8
  %75 = load %struct.aggregator*, %struct.aggregator** %9, align 8
  %76 = icmp ne %struct.aggregator* %75, null
  br i1 %76, label %77, label %106

77:                                               ; preds = %66
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load i32, i32* @IFLA_BOND_SLAVE_AD_AGGREGATOR_ID, align 4
  %80 = load %struct.aggregator*, %struct.aggregator** %9, align 8
  %81 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @nla_put_u16(%struct.sk_buff* %78, i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %108

86:                                               ; preds = %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* @IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE, align 4
  %89 = load %struct.port*, %struct.port** %10, align 8
  %90 = getelementptr inbounds %struct.port, %struct.port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @nla_put_u8(%struct.sk_buff* %87, i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %108

95:                                               ; preds = %86
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i32, i32* @IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE, align 4
  %98 = load %struct.port*, %struct.port** %10, align 8
  %99 = getelementptr inbounds %struct.port, %struct.port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @nla_put_u16(%struct.sk_buff* %96, i32 %97, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %108

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %66
  br label %107

107:                                              ; preds = %106, %59
  store i32 0, i32* %4, align 4
  br label %111

108:                                              ; preds = %104, %94, %85, %58, %49, %37, %28, %19
  %109 = load i32, i32* @EMSGSIZE, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %108, %107
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.slave* @bond_slave_get_rtnl(%struct.net_device*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @bond_slave_state(%struct.slave*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @BOND_MODE(i32) #1

declare dso_local %struct.TYPE_4__* @SLAVE_AD_INFO(%struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
