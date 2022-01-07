; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_port_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { %struct.net_device* }
%struct.net_device = type { i8*, i32 }
%struct.team_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Device %s does not act as a port of this team\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Port device %s removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.net_device*)* @team_port_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_port_del(%struct.team* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.team*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.team_port*, align 8
  %8 = alloca i8*, align 8
  store %struct.team* %0, %struct.team** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.team*, %struct.team** %4, align 8
  %10 = getelementptr inbounds %struct.team, %struct.team* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.team_port* @team_port_get_rtnl(%struct.net_device* %15)
  store %struct.team_port* %16, %struct.team_port** %7, align 8
  %17 = load %struct.team_port*, %struct.team_port** %7, align 8
  %18 = icmp ne %struct.team_port* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.team*, %struct.team** %4, align 8
  %21 = load %struct.team_port*, %struct.team_port** %7, align 8
  %22 = call i32 @team_port_find(%struct.team* %20, %struct.team_port* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %19
  %31 = load %struct.team*, %struct.team** %4, align 8
  %32 = load %struct.team_port*, %struct.team_port** %7, align 8
  %33 = call i32 @team_port_disable(%struct.team* %31, %struct.team_port* %32)
  %34 = load %struct.team_port*, %struct.team_port** %7, align 8
  %35 = getelementptr inbounds %struct.team_port, %struct.team_port* %34, i32 0, i32 1
  %36 = call i32 @list_del_rcu(i32* %35)
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @dev_set_promiscuity(%struct.net_device* %44, i32 -1)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFF_ALLMULTI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call i32 @dev_set_allmulti(%struct.net_device* %54, i32 -1)
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.team*, %struct.team** %4, align 8
  %58 = load %struct.team_port*, %struct.team_port** %7, align 8
  %59 = call i32 @team_upper_dev_unlink(%struct.team* %57, %struct.team_port* %58)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %60)
  %62 = load %struct.team_port*, %struct.team_port** %7, align 8
  %63 = call i32 @team_port_disable_netpoll(%struct.team_port* %62)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @vlan_vids_del_by_dev(%struct.net_device* %64, %struct.net_device* %65)
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i32 @dev_uc_unsync(%struct.net_device* %67, %struct.net_device* %68)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @dev_mc_unsync(%struct.net_device* %70, %struct.net_device* %71)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = call i32 @dev_close(%struct.net_device* %73)
  %75 = load %struct.team*, %struct.team** %4, align 8
  %76 = load %struct.team_port*, %struct.team_port** %7, align 8
  %77 = call i32 @team_port_leave(%struct.team* %75, %struct.team_port* %76)
  %78 = load %struct.team*, %struct.team** %4, align 8
  %79 = load %struct.team_port*, %struct.team_port** %7, align 8
  %80 = call i32 @__team_option_inst_mark_removed_port(%struct.team* %78, %struct.team_port* %79)
  %81 = load %struct.team*, %struct.team** %4, align 8
  %82 = call i32 @__team_options_change_check(%struct.team* %81)
  %83 = load %struct.team*, %struct.team** %4, align 8
  %84 = load %struct.team_port*, %struct.team_port** %7, align 8
  %85 = call i32 @__team_option_inst_del_port(%struct.team* %83, %struct.team_port* %84)
  %86 = load %struct.team_port*, %struct.team_port** %7, align 8
  %87 = call i32 @__team_port_change_port_removed(%struct.team_port* %86)
  %88 = load %struct.team_port*, %struct.team_port** %7, align 8
  %89 = call i32 @team_port_set_orig_dev_addr(%struct.team_port* %88)
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load %struct.team_port*, %struct.team_port** %7, align 8
  %92 = getelementptr inbounds %struct.team_port, %struct.team_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_set_mtu(%struct.net_device* %90, i32 %94)
  %96 = load %struct.team_port*, %struct.team_port** %7, align 8
  %97 = load i32, i32* @rcu, align 4
  %98 = call i32 @kfree_rcu(%struct.team_port* %96, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @netdev_info(%struct.net_device* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  %102 = load %struct.team*, %struct.team** %4, align 8
  %103 = call i32 @__team_compute_features(%struct.team* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %56, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.team_port* @team_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @team_port_find(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @team_port_disable(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @team_upper_dev_unlink(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @team_port_disable_netpoll(%struct.team_port*) #1

declare dso_local i32 @vlan_vids_del_by_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_uc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @team_port_leave(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @__team_option_inst_mark_removed_port(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @__team_options_change_check(%struct.team*) #1

declare dso_local i32 @__team_option_inst_del_port(%struct.team*, %struct.team_port*) #1

declare dso_local i32 @__team_port_change_port_removed(%struct.team_port*) #1

declare dso_local i32 @team_port_set_orig_dev_addr(%struct.team_port*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.team_port*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @__team_compute_features(%struct.team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
