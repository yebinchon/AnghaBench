; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64, i64, i64 }
%struct.enic = type { %struct.vnic_enet_config }
%struct.vnic_enet_config = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"modifying mini ring params is not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"modifying jumbo ring params is not supported\00", align 1
@ENIC_MAX_RQ_DESCS = common dso_local global i32 0, align 4
@ENIC_MIN_RQ_DESCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"rx pending (%u) not in range [%u,%u]\00", align 1
@ENIC_MAX_WQ_DESCS = common dso_local global i32 0, align 4
@ENIC_MIN_WQ_DESCS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"tx pending (%u) not in range [%u,%u]\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to alloc vNIC resources, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @enic_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.enic*, align 8
  %7 = alloca %struct.vnic_enet_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.enic* @netdev_priv(%struct.net_device* %12)
  store %struct.enic* %13, %struct.enic** %6, align 8
  %14 = load %struct.enic*, %struct.enic** %6, align 8
  %15 = getelementptr inbounds %struct.enic, %struct.enic* %14, i32 0, i32 0
  store %struct.vnic_enet_config* %15, %struct.vnic_enet_config** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22, %2
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %148

32:                                               ; preds = %22
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %148

47:                                               ; preds = %37
  %48 = load %struct.vnic_enet_config*, %struct.vnic_enet_config** %7, align 8
  %49 = getelementptr inbounds %struct.vnic_enet_config, %struct.vnic_enet_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.vnic_enet_config*, %struct.vnic_enet_config** %7, align 8
  %52 = getelementptr inbounds %struct.vnic_enet_config, %struct.vnic_enet_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ENIC_MAX_RQ_DESCS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %47
  %60 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ENIC_MIN_RQ_DESCS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59, %47
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ENIC_MIN_RQ_DESCS, align 4
  %71 = load i32, i32* @ENIC_MAX_RQ_DESCS, align 4
  %72 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %148

75:                                               ; preds = %59
  %76 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ENIC_MAX_WQ_DESCS, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ENIC_MIN_WQ_DESCS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81, %75
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ENIC_MIN_WQ_DESCS, align 4
  %93 = load i32, i32* @ENIC_MAX_WQ_DESCS, align 4
  %94 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %148

97:                                               ; preds = %81
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i32 @dev_close(%struct.net_device* %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, -32
  %108 = load %struct.vnic_enet_config*, %struct.vnic_enet_config** %7, align 8
  %109 = getelementptr inbounds %struct.vnic_enet_config, %struct.vnic_enet_config* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, -32
  %114 = load %struct.vnic_enet_config*, %struct.vnic_enet_config** %7, align 8
  %115 = getelementptr inbounds %struct.vnic_enet_config, %struct.vnic_enet_config* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.enic*, %struct.enic** %6, align 8
  %117 = call i32 @enic_free_vnic_resources(%struct.enic* %116)
  %118 = load %struct.enic*, %struct.enic** %6, align 8
  %119 = call i32 @enic_alloc_vnic_resources(%struct.enic* %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %103
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = call i32 @netdev_err(%struct.net_device* %123, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %125 = load %struct.enic*, %struct.enic** %6, align 8
  %126 = call i32 @enic_free_vnic_resources(%struct.enic* %125)
  br label %140

127:                                              ; preds = %103
  %128 = load %struct.enic*, %struct.enic** %6, align 8
  %129 = call i32 @enic_init_vnic_resources(%struct.enic* %128)
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.net_device*, %struct.net_device** %4, align 8
  %134 = call i32 @dev_open(%struct.net_device* %133, i32* null)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %140

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %127
  store i32 0, i32* %3, align 4
  br label %148

140:                                              ; preds = %137, %122
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.vnic_enet_config*, %struct.vnic_enet_config** %7, align 8
  %143 = getelementptr inbounds %struct.vnic_enet_config, %struct.vnic_enet_config* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.vnic_enet_config*, %struct.vnic_enet_config** %7, align 8
  %146 = getelementptr inbounds %struct.vnic_enet_config, %struct.vnic_enet_config* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %140, %139, %87, %65, %42, %27
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @enic_free_vnic_resources(%struct.enic*) #1

declare dso_local i32 @enic_alloc_vnic_resources(%struct.enic*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @enic_init_vnic_resources(%struct.enic*) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
