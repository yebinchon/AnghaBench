; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i64, i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.vf_data_storage*, i32, %struct.TYPE_2__ }
%struct.vf_data_storage = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE_8021QAZ_APP_SEL_ETHERTYPE = common dso_local global i64 0, align 8
@ETH_P_FCOE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @ixgbe_dcbnl_ieee_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_ieee_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vf_data_storage*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %6, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %24 = call i32 @dcb_ieee_setapp(%struct.net_device* %22, %struct.dcb_app* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %21
  %30 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %31 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE_8021QAZ_APP_SEL_ETHERTYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %29
  %36 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %37 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %42 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %74, %40
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 2
  %55 = load %struct.vf_data_storage*, %struct.vf_data_storage** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %55, i64 %57
  store %struct.vf_data_storage* %58, %struct.vf_data_storage** %9, align 8
  %59 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %60 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %52
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %65 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %66 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %69 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %64, i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %46

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77, %35, %29
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %27, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dcb_ieee_setapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
