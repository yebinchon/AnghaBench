; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_del_fd_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_del_fd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64* }
%struct.ethtool_rx_flow_spec = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCLGE_FD_STAGE_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Delete fail, rule %d is inexistent\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* @hclge_del_fd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_del_fd_entry(%struct.hnae3_handle* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %9 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %11 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %10)
  store %struct.hclge_vport* %11, %struct.hclge_vport** %6, align 8
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 0
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  store %struct.hclge_dev* %14, %struct.hclge_dev** %7, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %16 = call i32 @hnae3_dev_fd_supported(%struct.hclge_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %24, %struct.ethtool_rx_flow_spec** %8, align 8
  %25 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %26 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @HCLGE_FD_STAGE_1, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %27, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %81

39:                                               ; preds = %21
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %41 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %42 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @hclge_fd_rule_exist(%struct.hclge_dev* %40, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %39
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %52 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %81

57:                                               ; preds = %39
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %59 = load i64, i64* @HCLGE_FD_STAGE_1, align 8
  %60 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %61 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @hclge_fd_tcam_config(%struct.hclge_dev* %58, i64 %59, i32 1, i64 %62, i32* null, i32 0)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %81

68:                                               ; preds = %57
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 0
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %73 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %74 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @hclge_fd_update_rule_list(%struct.hclge_dev* %72, i32* null, i64 %75, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %78 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %68, %66, %46, %36, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hnae3_dev_fd_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_fd_rule_exist(%struct.hclge_dev*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @hclge_fd_tcam_config(%struct.hclge_dev*, i64, i32, i64, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hclge_fd_update_rule_list(%struct.hclge_dev*, i32*, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
