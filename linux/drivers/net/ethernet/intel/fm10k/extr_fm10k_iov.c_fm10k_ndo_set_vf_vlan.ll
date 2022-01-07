; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_ndo_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_ndo_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { %struct.fm10k_hw, %struct.fm10k_iov_data* }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, i32, i32, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_iov_data = type { i32, %struct.fm10k_vf_info* }
%struct.fm10k_vf_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@FM10K_VLAN_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_ndo_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fm10k_intfc*, align 8
  %13 = alloca %struct.fm10k_iov_data*, align 8
  %14 = alloca %struct.fm10k_hw*, align 8
  %15 = alloca %struct.fm10k_vf_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %16)
  store %struct.fm10k_intfc* %17, %struct.fm10k_intfc** %12, align 8
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %12, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 1
  %20 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %19, align 8
  store %struct.fm10k_iov_data* %20, %struct.fm10k_iov_data** %13, align 8
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %12, align 8
  %22 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %21, i32 0, i32 0
  store %struct.fm10k_hw* %22, %struct.fm10k_hw** %14, align 8
  %23 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %13, align 8
  %24 = icmp ne %struct.fm10k_iov_data* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %13, align 8
  %28 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %85

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @VLAN_VID_MASK, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %85

45:                                               ; preds = %37
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* @ETH_P_8021Q, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EPROTONOSUPPORT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %85

53:                                               ; preds = %45
  %54 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %13, align 8
  %55 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %54, i32 0, i32 1
  %56 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %56, i64 %58
  store %struct.fm10k_vf_info* %59, %struct.fm10k_vf_info** %15, align 8
  %60 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %15, align 8
  %61 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %85

66:                                               ; preds = %53
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %15, align 8
  %69 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.fm10k_hw*, %struct.fm10k_hw** %14, align 8
  %71 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.fm10k_hw.0*, i32, i32, i32)*, i32 (%struct.fm10k_hw.0*, i32, i32, i32)** %73, align 8
  %75 = load %struct.fm10k_hw*, %struct.fm10k_hw** %14, align 8
  %76 = bitcast %struct.fm10k_hw* %75 to %struct.fm10k_hw.0*
  %77 = load i32, i32* @FM10K_VLAN_ALL, align 4
  %78 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %15, align 8
  %79 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %74(%struct.fm10k_hw.0* %76, i32 %77, i32 %80, i32 0)
  %82 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %12, align 8
  %83 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %15, align 8
  %84 = call i32 @fm10k_reset_vf_info(%struct.fm10k_intfc* %82, %struct.fm10k_vf_info* %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %66, %65, %50, %42, %31
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @fm10k_reset_vf_info(%struct.fm10k_intfc*, %struct.fm10k_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
