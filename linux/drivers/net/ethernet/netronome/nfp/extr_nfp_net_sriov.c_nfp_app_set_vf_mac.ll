; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@NFP_NET_VF_CFG_MB_CAP_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid Ethernet address %pM for VF id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MB_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MAC_LO = common dso_local global i64 0, align 8
@NFP_NET_VF_CFG_MB_UPD_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"MAC %pM set on VF %d, reload the VF driver to make this change effective.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfp_app*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device* %11)
  store %struct.nfp_app* %12, %struct.nfp_app** %8, align 8
  %13 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFP_NET_VF_CFG_MB_CAP_MAC, align 4
  %16 = call i32 @nfp_net_sriov_check(%struct.nfp_app* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @is_multicast_ether_addr(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nfp_warn(i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %84

36:                                               ; preds = %21
  %37 = load i32, i32* @NFP_NET_VF_CFG_MB_SZ, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @NFP_NET_VF_CFG_SZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @get_unaligned_be32(i32* %42)
  %44 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %45 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel(i32 %43, i64 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = call i32 @get_unaligned_be16(i32* %54)
  %56 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %57 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* @NFP_NET_VF_CFG_MAC_LO, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i32 %55, i64 %65)
  %67 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @NFP_NET_VF_CFG_MB_UPD_MAC, align 4
  %70 = call i32 @nfp_net_sriov_update(%struct.nfp_app* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %36
  %74 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %75 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @nfp_info(i32 %78, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %36
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %25, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_net_sriov_check(%struct.nfp_app*, i32, i32, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @nfp_warn(i32, i8*, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @nfp_net_sriov_update(%struct.nfp_app*, i32, i32, i8*) #1

declare dso_local i32 @nfp_info(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
