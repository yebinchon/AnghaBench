; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Spoof check change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_sriov*, align 8
  %10 = alloca %struct.qlcnic_vf_info*, align 8
  %11 = alloca %struct.qlcnic_vport*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %8, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %17, align 8
  store %struct.qlcnic_sriov* %18, %struct.qlcnic_sriov** %9, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %20 = call i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %28 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %25
  %35 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %9, align 8
  %36 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %35, i32 0, i32 1
  %37 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %37, i64 %39
  store %struct.qlcnic_vf_info* %40, %struct.qlcnic_vf_info** %10, align 8
  %41 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %42 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %41, i32 0, i32 1
  %43 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %42, align 8
  store %struct.qlcnic_vport* %43, %struct.qlcnic_vport** %11, align 8
  %44 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %45 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %46 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %34
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %34
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %11, align 8
  %58 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %49, %31, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
