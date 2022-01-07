; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i8*, i8*, i8*, i8*, i8*, i32* }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NFP_NET_VF_CFG_MB_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MAC_LO = common dso_local global i64 0, align 8
@NFP_NET_VF_CFG_CTRL = common dso_local global i64 0, align 8
@NFP_NET_VF_CFG_VLAN = common dso_local global i64 0, align 8
@NFP_NET_VF_CFG_VLAN_VID = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_VLAN_QOS = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL_SPOOF = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL_TRUST = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL_LINK_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.nfp_app*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device* %15)
  store %struct.nfp_app* %16, %struct.nfp_app** %8, align 8
  %17 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @nfp_net_sriov_check(%struct.nfp_app* %17, i32 %18, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %4, align 4
  br label %114

24:                                               ; preds = %3
  %25 = load i32, i32* @NFP_NET_VF_CFG_MB_SZ, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NFP_NET_VF_CFG_SZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %31 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i64, i64* @NFP_NET_VF_CFG_MAC_LO, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readw(i64 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %51 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i64, i64* @NFP_NET_VF_CFG_CTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readb(i64 %59)
  store i32 %60, i32* %13, align 4
  %61 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %62 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i64, i64* @NFP_NET_VF_CFG_VLAN, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readw(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %73 = call i32 @memset(%struct.ifla_vf_info* %72, i32 0, i32 56)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %76 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %79 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i32 @put_unaligned_be32(i32 %77, i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %85 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = call i32 @put_unaligned_be16(i32 %83, i32* %87)
  %89 = load i32, i32* @NFP_NET_VF_CFG_VLAN_VID, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i8* @FIELD_GET(i32 %89, i32 %90)
  %92 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %93 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @NFP_NET_VF_CFG_VLAN_QOS, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i8* @FIELD_GET(i32 %94, i32 %95)
  %97 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %98 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @NFP_NET_VF_CFG_CTRL_SPOOF, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i8* @FIELD_GET(i32 %99, i32 %100)
  %102 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %103 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @NFP_NET_VF_CFG_CTRL_TRUST, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i8* @FIELD_GET(i32 %104, i32 %105)
  %107 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %108 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @NFP_NET_VF_CFG_CTRL_LINK_STATE, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i8* @FIELD_GET(i32 %109, i32 %110)
  %112 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %113 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %24, %22
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_net_sriov_check(%struct.nfp_app*, i32, i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @memset(%struct.ifla_vf_info*, i32, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
