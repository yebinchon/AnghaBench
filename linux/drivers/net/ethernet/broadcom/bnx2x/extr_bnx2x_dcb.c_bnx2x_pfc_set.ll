; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_pfc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_pfc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2x_nig_brb_pfc_port_params = type { i32, i32*, i32, i32, i64, i32 }

@MAX_PFC_PRIORITIES = common dso_local global i32 0, align 4
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_pfc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pfc_set(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_nig_brb_pfc_port_params, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = bitcast %struct.bnx2x_nig_brb_pfc_port_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  store i32 0, i32* %5, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = call i32 @DCBX_PFC_PRI_PAUSE_MASK(%struct.bnx2x* %33)
  %35 = and i32 %32, %34
  %36 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %3, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MAX_PFC_PRIORITIES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = call i32 @DCBX_PFC_PRI_PAUSE_MASK(%struct.bnx2x* %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %45

67:                                               ; preds = %45
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %3, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %71 = call i32 @DCBX_PFC_PRI_PAUSE_MASK(%struct.bnx2x* %70)
  %72 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %3, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %3, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %75 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %74)
  %76 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %77 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 1
  %84 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %85 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %84, i32 0, i32 0
  %86 = call i32 @bnx2x_update_pfc(%struct.TYPE_8__* %83, i32* %85, %struct.bnx2x_nig_brb_pfc_port_params* %3)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %88 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %87)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DCBX_PFC_PRI_PAUSE_MASK(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_update_pfc(%struct.TYPE_8__*, i32*, %struct.bnx2x_nig_brb_pfc_port_params*) #2

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
