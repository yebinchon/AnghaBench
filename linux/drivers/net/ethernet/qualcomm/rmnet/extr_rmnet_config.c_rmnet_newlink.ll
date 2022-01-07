; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rmnet_endpoint = type { i32 }
%struct.rmnet_port = type { i32, i32, i32* }
%struct.ifla_rmnet_flags = type { i32, i32 }

@RMNET_FLAGS_INGRESS_DEAGGREGATION = common dso_local global i32 0, align 4
@RMNET_EPMODE_VND = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IFLA_RMNET_MUX_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFLA_RMNET_FLAGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"data format [0x%08X]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @rmnet_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmnet_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rmnet_endpoint*, align 8
  %16 = alloca %struct.rmnet_port*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.ifla_rmnet_flags*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %20 = load i32, i32* @RMNET_FLAGS_INGRESS_DEAGGREGATION, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @RMNET_EPMODE_VND, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.net*, %struct.net** %7, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %24 = load i64, i64* @IFLA_LINK, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_get_u32(%struct.nlattr* %26)
  %28 = call %struct.net_device* @__dev_get_by_index(%struct.net* %22, i32 %27)
  store %struct.net_device* %28, %struct.net_device** %13, align 8
  %29 = load %struct.net_device*, %struct.net_device** %13, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %5
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %122

37:                                               ; preds = %31
  %38 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %39 = load i64, i64* @IFLA_RMNET_MUX_ID, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %122

46:                                               ; preds = %37
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.rmnet_endpoint* @kzalloc(i32 4, i32 %47)
  store %struct.rmnet_endpoint* %48, %struct.rmnet_endpoint** %15, align 8
  %49 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %15, align 8
  %50 = icmp ne %struct.rmnet_endpoint* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %122

54:                                               ; preds = %46
  %55 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %56 = load i64, i64* @IFLA_RMNET_MUX_ID, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i64 @nla_get_u16(%struct.nlattr* %58)
  store i64 %59, i64* %18, align 8
  %60 = load %struct.net_device*, %struct.net_device** %13, align 8
  %61 = call i32 @rmnet_register_real_device(%struct.net_device* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %118

65:                                               ; preds = %54
  %66 = load %struct.net_device*, %struct.net_device** %13, align 8
  %67 = call %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device* %66)
  store %struct.rmnet_port* %67, %struct.rmnet_port** %16, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = load %struct.rmnet_port*, %struct.rmnet_port** %16, align 8
  %71 = load %struct.net_device*, %struct.net_device** %13, align 8
  %72 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %15, align 8
  %73 = call i32 @rmnet_vnd_newlink(i64 %68, %struct.net_device* %69, %struct.rmnet_port* %70, %struct.net_device* %71, %struct.rmnet_endpoint* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %114

77:                                               ; preds = %65
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.rmnet_port*, %struct.rmnet_port** %16, align 8
  %80 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %15, align 8
  %82 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %81, i32 0, i32 0
  %83 = load %struct.rmnet_port*, %struct.rmnet_port** %16, align 8
  %84 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = call i32 @hlist_add_head_rcu(i32* %82, i32* %87)
  %89 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %90 = load i64, i64* @IFLA_RMNET_FLAGS, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %89, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %77
  %95 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %96 = load i64, i64* @IFLA_RMNET_FLAGS, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call %struct.ifla_rmnet_flags* @nla_data(%struct.nlattr* %98)
  store %struct.ifla_rmnet_flags* %99, %struct.ifla_rmnet_flags** %19, align 8
  %100 = load %struct.ifla_rmnet_flags*, %struct.ifla_rmnet_flags** %19, align 8
  %101 = getelementptr inbounds %struct.ifla_rmnet_flags, %struct.ifla_rmnet_flags* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ifla_rmnet_flags*, %struct.ifla_rmnet_flags** %19, align 8
  %104 = getelementptr inbounds %struct.ifla_rmnet_flags, %struct.ifla_rmnet_flags* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %94, %77
  %108 = load %struct.net_device*, %struct.net_device** %8, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @netdev_dbg(%struct.net_device* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.rmnet_port*, %struct.rmnet_port** %16, align 8
  %113 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %6, align 4
  br label %122

114:                                              ; preds = %76
  %115 = load %struct.net_device*, %struct.net_device** %13, align 8
  %116 = load %struct.rmnet_port*, %struct.rmnet_port** %16, align 8
  %117 = call i32 @rmnet_unregister_real_device(%struct.net_device* %115, %struct.rmnet_port* %116)
  br label %118

118:                                              ; preds = %114, %64
  %119 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %15, align 8
  %120 = call i32 @kfree(%struct.rmnet_endpoint* %119)
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %118, %107, %51, %43, %34
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.rmnet_endpoint* @kzalloc(i32, i32) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @rmnet_register_real_device(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device*) #1

declare dso_local i32 @rmnet_vnd_newlink(i64, %struct.net_device*, %struct.rmnet_port*, %struct.net_device*, %struct.rmnet_endpoint*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local %struct.ifla_rmnet_flags* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @rmnet_unregister_real_device(%struct.net_device*, %struct.rmnet_port*) #1

declare dso_local i32 @kfree(%struct.rmnet_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
