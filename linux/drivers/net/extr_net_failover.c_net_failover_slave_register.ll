; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_slave_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_slave_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net_failover_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"unable to change mtu of %s to %u register failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Opening slave %s failed err:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to add vlan ids to device %s err:%d\0A\00", align 1
@NETDEV_JOIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failover %s slave:%s registered\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @net_failover_slave_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_slave_register(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_failover_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_set_mtu(%struct.net_device* %15, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netdev_err(%struct.net_device* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  br label %167

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @dev_hold(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i64 @netif_running(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @dev_open(%struct.net_device* %38, i32* null)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %161

54:                                               ; preds = %42, %37
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 @netif_addr_lock_bh(%struct.net_device* %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @dev_uc_sync_multiple(%struct.net_device* %58, %struct.net_device* %59)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @dev_mc_sync_multiple(%struct.net_device* %61, %struct.net_device* %62)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netif_addr_unlock_bh(%struct.net_device* %64)
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = call i32 @vlan_vids_add_by_dev(%struct.net_device* %66, %struct.net_device* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %55
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @netdev_err(%struct.net_device* %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %152

78:                                               ; preds = %55
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %79)
  store %struct.net_failover_info* %80, %struct.net_failover_info** %8, align 8
  %81 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %82 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.net_device* @rtnl_dereference(i32 %83)
  store %struct.net_device* %84, %struct.net_device** %6, align 8
  %85 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %86 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.net_device* @rtnl_dereference(i32 %87)
  store %struct.net_device* %88, %struct.net_device** %7, align 8
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %78
  %102 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %103 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i32 @rcu_assign_pointer(i32 %104, %struct.net_device* %105)
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %107, %struct.net_device** %6, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %110 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %109, i32 0, i32 2
  %111 = call i32 @dev_get_stats(%struct.net_device* %108, i32* %110)
  br label %133

112:                                              ; preds = %78
  %113 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %114 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i32 @rcu_assign_pointer(i32 %115, %struct.net_device* %116)
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %118, %struct.net_device** %7, align 8
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %121 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %120, i32 0, i32 0
  %122 = call i32 @dev_get_stats(%struct.net_device* %119, i32* %121)
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %112, %101
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = load %struct.net_device*, %struct.net_device** %7, align 8
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = call i32 @net_failover_lower_state_changed(%struct.net_device* %134, %struct.net_device* %135, %struct.net_device* %136)
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = call i32 @net_failover_compute_features(%struct.net_device* %138)
  %140 = load i32, i32* @NETDEV_JOIN, align 4
  %141 = load %struct.net_device*, %struct.net_device** %4, align 8
  %142 = call i32 @call_netdevice_notifiers(i32 %140, %struct.net_device* %141)
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @netdev_info(%struct.net_device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %147, i32 %150)
  store i32 0, i32* %3, align 4
  br label %169

152:                                              ; preds = %71
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = call i32 @dev_uc_unsync(%struct.net_device* %153, %struct.net_device* %154)
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = load %struct.net_device*, %struct.net_device** %5, align 8
  %158 = call i32 @dev_mc_unsync(%struct.net_device* %156, %struct.net_device* %157)
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = call i32 @dev_close(%struct.net_device* %159)
  br label %161

161:                                              ; preds = %152, %47
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @dev_put(%struct.net_device* %162)
  %164 = load %struct.net_device*, %struct.net_device** %4, align 8
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @dev_set_mtu(%struct.net_device* %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %22
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %133
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @dev_uc_sync_multiple(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_sync_multiple(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @vlan_vids_add_by_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_device*) #1

declare dso_local i32 @dev_get_stats(%struct.net_device*, i32*) #1

declare dso_local i32 @net_failover_lower_state_changed(%struct.net_device*, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @net_failover_compute_features(%struct.net_device*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_uc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
