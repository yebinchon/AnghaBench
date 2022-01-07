; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32)* @qlcnic_fdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_fdb_del(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndmsg*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qlcnic_adapter*, align 8
  %13 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %9, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %12, align 8
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.ndmsg*, %struct.ndmsg** %7, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @ndo_dflt_fdb_del(%struct.ndmsg* %23, %struct.nlattr** %24, %struct.net_device* %25, i8* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %70

29:                                               ; preds = %5
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %38 = call i64 @qlcnic_sriov_check(%struct.qlcnic_adapter* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %36, %29
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @is_unicast_ether_addr(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @dev_uc_del(%struct.net_device* %45, i8* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @qlcnic_nic_del_mac(%struct.qlcnic_adapter* %51, i8* %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %67

55:                                               ; preds = %40
  %56 = load i8*, i8** %10, align 8
  %57 = call i64 @is_multicast_ether_addr(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @dev_mc_del(%struct.net_device* %60, i8* %61)
  store i32 %62, i32* %13, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %22
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ndo_dflt_fdb_del(%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32) #1

declare dso_local i64 @qlcnic_sriov_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i8*) #1

declare dso_local i32 @qlcnic_nic_del_mac(%struct.qlcnic_adapter*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
