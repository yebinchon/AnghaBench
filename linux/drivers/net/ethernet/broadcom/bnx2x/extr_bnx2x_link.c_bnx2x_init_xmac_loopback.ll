; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_init_xmac_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_init_xmac_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.TYPE_4__*, i64*, %struct.bnx2x* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.link_params*)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32, i32, i32, i64 }

@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@MAC_TYPE_XMAC = common dso_local global i32 0, align 4
@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*)* @bnx2x_init_xmac_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_xmac_loopback(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %6 = load %struct.link_params*, %struct.link_params** %3, align 8
  %7 = getelementptr inbounds %struct.link_params, %struct.link_params* %6, i32 0, i32 3
  %8 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  store %struct.bnx2x* %8, %struct.bnx2x** %5, align 8
  %9 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %10 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.link_params*, %struct.link_params** %3, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @SPEED_10000, align 8
  %19 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %20 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.link_params*, %struct.link_params** %3, align 8
  %23 = getelementptr inbounds %struct.link_params, %struct.link_params* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %28 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i32, i32* @DUPLEX_FULL, align 4
  %31 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %32 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @BNX2X_FLOW_CTRL_NONE, align 4
  %34 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %35 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @MAC_TYPE_XMAC, align 4
  %37 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %38 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %40 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %41 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.link_params*, %struct.link_params** %3, align 8
  %43 = load %struct.link_params*, %struct.link_params** %3, align 8
  %44 = getelementptr inbounds %struct.link_params, %struct.link_params* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %42, %struct.TYPE_4__* %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %49 = load %struct.link_params*, %struct.link_params** %3, align 8
  %50 = getelementptr inbounds %struct.link_params, %struct.link_params* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 0
  %53 = call i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x* %48, %struct.TYPE_4__* %52, i32 0)
  %54 = load %struct.link_params*, %struct.link_params** %3, align 8
  %55 = getelementptr inbounds %struct.link_params, %struct.link_params* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @INT_PHY, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %59, align 8
  %61 = load %struct.link_params*, %struct.link_params** %3, align 8
  %62 = getelementptr inbounds %struct.link_params, %struct.link_params* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i64, i64* @INT_PHY, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = load %struct.link_params*, %struct.link_params** %3, align 8
  %67 = call i32 %60(%struct.TYPE_4__* %65, %struct.link_params* %66)
  %68 = load %struct.link_params*, %struct.link_params** %3, align 8
  %69 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %70 = call i32 @bnx2x_xmac_enable(%struct.link_params* %68, %struct.link_vars* %69, i32 1)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %72 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %73 = load %struct.link_params*, %struct.link_params** %3, align 8
  %74 = getelementptr inbounds %struct.link_params, %struct.link_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %72, %77
  %79 = call i32 @REG_WR(%struct.bnx2x* %71, i64 %78, i32 0)
  ret void
}

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.TYPE_4__*) #1

declare dso_local i32 @bnx2x_warpcore_reset_lane(%struct.bnx2x*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bnx2x_xmac_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
