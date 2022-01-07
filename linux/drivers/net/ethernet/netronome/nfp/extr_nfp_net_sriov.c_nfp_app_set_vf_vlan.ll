; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@NFP_NET_VF_CFG_MB_CAP_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid vlan id or qos for VF id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_VLAN_VID = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_VLAN_QOS = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MB_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_VLAN = common dso_local global i64 0, align 8
@NFP_NET_VF_CFG_MB_UPD_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfp_app*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device* %16)
  store %struct.nfp_app* %17, %struct.nfp_app** %12, align 8
  %18 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @NFP_NET_VF_CFG_MB_CAP_VLAN, align 4
  %21 = call i32 @nfp_net_sriov_check(%struct.nfp_app* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %6, align 4
  br label %79

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* @ETH_P_8021Q, align 4
  %29 = call i64 @htons(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %79

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 4095
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 7
  br i1 %39, label %40, label %50

40:                                               ; preds = %37, %34
  %41 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %42 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @nfp_warn(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %79

50:                                               ; preds = %37
  %51 = load i32, i32* @NFP_NET_VF_CFG_VLAN_VID, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @FIELD_PREP(i32 %51, i32 %52)
  %54 = load i32, i32* @NFP_NET_VF_CFG_VLAN_QOS, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @FIELD_PREP(i32 %54, i32 %55)
  %57 = or i32 %53, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @NFP_NET_VF_CFG_MB_SZ, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @NFP_NET_VF_CFG_SZ, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %65 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i64, i64* @NFP_NET_VF_CFG_VLAN, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writew(i32 %63, i64 %73)
  %75 = load %struct.nfp_app*, %struct.nfp_app** %12, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @NFP_NET_VF_CFG_MB_UPD_VLAN, align 4
  %78 = call i32 @nfp_net_sriov_update(%struct.nfp_app* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %50, %40, %31, %24
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_net_sriov_check(%struct.nfp_app*, i32, i32, i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @nfp_warn(i32, i8*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @nfp_net_sriov_update(%struct.nfp_app*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
