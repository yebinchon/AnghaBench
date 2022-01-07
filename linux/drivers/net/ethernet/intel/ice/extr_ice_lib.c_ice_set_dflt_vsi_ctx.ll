; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_set_dflt_vsi_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_set_dflt_vsi_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i32, i32 }

@ICE_AQ_VSI_SW_FLAG_SRC_PRUNE = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SW_FLAG_LAN_ENA = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_MODE_ALL = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_MODE_M = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_MODE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi_ctx*)* @ice_set_dflt_vsi_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_set_dflt_vsi_ctx(%struct.ice_vsi_ctx* %0) #0 {
  %2 = alloca %struct.ice_vsi_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.ice_vsi_ctx* %0, %struct.ice_vsi_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %4, i32 0, i32 1
  %6 = call i32 @memset(%struct.TYPE_2__* %5, i32 0, i32 40)
  %7 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_SRC_PRUNE, align 4
  %10 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_LAN_ENA, align 4
  %14 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_ALL, align 4
  %18 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_M, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_S, align 4
  %21 = ashr i32 %19, %20
  %22 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 0, i32 0)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 1, i32 1)
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 2, i32 2)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 3, i32 3)
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 4, i32 4)
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 5, i32 5)
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 6, i32 6)
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = call i32 @ICE_UP_TABLE_TRANSLATE(i32 7, i32 7)
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @ICE_UP_TABLE_TRANSLATE(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
