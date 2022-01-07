; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_hw_reset_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_hw_reset_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.link_params*)* }
%struct.link_params = type { i32, %struct.TYPE_3__*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@MAX_PHYS = common dso_local global i64 0, align 8
@phy_null = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_hw_reset_phy(%struct.link_params* %0) #0 {
  %2 = alloca %struct.link_params*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %2, align 8
  %5 = load %struct.link_params*, %struct.link_params** %2, align 8
  %6 = getelementptr inbounds %struct.link_params, %struct.link_params* %5, i32 0, i32 2
  %7 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  store %struct.bnx2x* %7, %struct.bnx2x** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %2, align 8
  %9 = call i32 @bnx2x_update_mng(%struct.link_params* %8, i32 0)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %12 = load %struct.link_params*, %struct.link_params** %2, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  %18 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %19 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %10, i64 %17, i32 %24)
  %26 = load i64, i64* @INT_PHY, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %62, %1
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @MAX_PHYS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load %struct.link_params*, %struct.link_params** %2, align 8
  %33 = getelementptr inbounds %struct.link_params, %struct.link_params* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_3__*, %struct.link_params*)*, i32 (%struct.TYPE_3__*, %struct.link_params*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_3__*, %struct.link_params*)* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load %struct.link_params*, %struct.link_params** %2, align 8
  %42 = getelementptr inbounds %struct.link_params, %struct.link_params* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_3__*, %struct.link_params*)*, i32 (%struct.TYPE_3__*, %struct.link_params*)** %46, align 8
  %48 = load %struct.link_params*, %struct.link_params** %2, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = load %struct.link_params*, %struct.link_params** %2, align 8
  %54 = call i32 %47(%struct.TYPE_3__* %52, %struct.link_params* %53)
  %55 = load %struct.link_params*, %struct.link_params** %2, align 8
  %56 = getelementptr inbounds %struct.link_params, %struct.link_params* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = bitcast %struct.TYPE_3__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 bitcast (%struct.TYPE_3__* @phy_null to i8*), i64 8, i1 false)
  br label %61

61:                                               ; preds = %40, %31
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %27

65:                                               ; preds = %27
  ret void
}

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
