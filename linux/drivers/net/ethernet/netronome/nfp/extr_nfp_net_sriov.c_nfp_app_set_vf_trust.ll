; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_trust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NFP_NET_VF_CFG_MB_CAP_TRUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"trust\00", align 1
@NFP_NET_VF_CFG_MB_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL_TRUST = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MB_UPD_TRUST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_set_vf_trust(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_app*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device* %12)
  store %struct.nfp_app* %13, %struct.nfp_app** %8, align 8
  %14 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NFP_NET_VF_CFG_MB_CAP_TRUST, align 4
  %17 = call i32 @nfp_net_sriov_check(%struct.nfp_app* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %3
  %23 = load i32, i32* @NFP_NET_VF_CFG_MB_SZ, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NFP_NET_VF_CFG_SZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* @NFP_NET_VF_CFG_CTRL, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %31 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @readb(i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @NFP_NET_VF_CFG_CTRL_TRUST, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @NFP_NET_VF_CFG_CTRL_TRUST, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %50 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @writeb(i32 %48, i64 %56)
  %58 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @NFP_NET_VF_CFG_MB_UPD_TRUST, align 4
  %61 = call i32 @nfp_net_sriov_update(%struct.nfp_app* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %22, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.nfp_app* @nfp_app_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_net_sriov_check(%struct.nfp_app*, i32, i32, i8*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @nfp_net_sriov_update(%struct.nfp_app*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
