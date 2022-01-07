; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_sriov.c_nfp_app_set_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NFP_NET_VF_CFG_MB_CAP_LINK_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"link_state\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MB_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_SZ = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_CTRL_LINK_STATE = common dso_local global i32 0, align 4
@NFP_NET_VF_CFG_MB_UPD_LINK_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"link state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_set_vf_link_state(%struct.net_device* %0, i32 %1, i32 %2) #0 {
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
  %16 = load i32, i32* @NFP_NET_VF_CFG_MB_CAP_LINK_STATE, align 4
  %17 = call i32 @nfp_net_sriov_check(%struct.nfp_app* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %25 [
    i32 130, label %24
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %22, %22, %22
  br label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %24
  %29 = load i32, i32* @NFP_NET_VF_CFG_MB_SZ, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NFP_NET_VF_CFG_SZ, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %29, %32
  %34 = load i32, i32* @NFP_NET_VF_CFG_CTRL, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %37 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @readb(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @NFP_NET_VF_CFG_CTRL_LINK_STATE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @NFP_NET_VF_CFG_CTRL_LINK_STATE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @FIELD_PREP(i32 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %56 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @writeb(i32 %54, i64 %62)
  %64 = load %struct.nfp_app*, %struct.nfp_app** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NFP_NET_VF_CFG_MB_UPD_LINK_STATE, align 4
  %67 = call i32 @nfp_net_sriov_update(%struct.nfp_app* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %28, %25, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
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
