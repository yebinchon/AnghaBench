; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_ndo_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_ndo_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@I40E_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: vlans aren't supported yet for dev_uc|mc_add()\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"FDB only supports static addresses\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32, %struct.netlink_ext_ack*)* @i40e_ndo_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ndo_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.i40e_netdev_priv*, align 8
  %17 = alloca %struct.i40e_pf*, align 8
  %18 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %19 = load %struct.net_device*, %struct.net_device** %11, align 8
  %20 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.i40e_netdev_priv* %20, %struct.i40e_netdev_priv** %16, align 8
  %21 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %16, align 8
  %22 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %24, align 8
  store %struct.i40e_pf* %25, %struct.i40e_pf** %17, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I40E_FLAG_SRIOV_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %99

35:                                               ; preds = %7
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %11, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %99

45:                                               ; preds = %35
  %46 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %47 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %52 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NUD_PERMANENT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.net_device*, %struct.net_device** %11, align 8
  %59 = call i32 @netdev_info(%struct.net_device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %99

62:                                               ; preds = %50, %45
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @is_unicast_ether_addr(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = call i64 @is_link_local_ether_addr(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %62
  %71 = load %struct.net_device*, %struct.net_device** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @dev_uc_add_excl(%struct.net_device* %71, i8* %72)
  store i32 %73, i32* %18, align 4
  br label %86

74:                                               ; preds = %66
  %75 = load i8*, i8** %12, align 8
  %76 = call i64 @is_multicast_ether_addr(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.net_device*, %struct.net_device** %11, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @dev_mc_add_excl(%struct.net_device* %79, i8* %80)
  store i32 %81, i32* %18, align 4
  br label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* @EEXIST, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @NLM_F_EXCL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 0, i32* %18, align 4
  br label %97

97:                                               ; preds = %96, %91, %86
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %57, %38, %32
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i64 @is_link_local_ether_addr(i8*) #1

declare dso_local i32 @dev_uc_add_excl(%struct.net_device*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_mc_add_excl(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
