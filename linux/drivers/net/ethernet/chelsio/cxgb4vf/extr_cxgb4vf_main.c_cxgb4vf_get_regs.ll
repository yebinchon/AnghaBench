; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@T4VF_REGMAP_SIZE = common dso_local global i32 0, align 4
@T4VF_SGE_BASE_ADDR = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_SGE_FIRST = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_SGE_LAST = common dso_local global i64 0, align 8
@T4VF_MPS_BASE_ADDR = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_MPS_FIRST = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_MPS_LAST = common dso_local global i64 0, align 8
@T4VF_PL_BASE_ADDR = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_PL_FIRST = common dso_local global i64 0, align 8
@PL_VF_WHOAMI_A = common dso_local global i64 0, align 8
@PL_VF_REVISION_A = common dso_local global i64 0, align 8
@T4VF_CIM_BASE_ADDR = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_CIM_FIRST = common dso_local global i64 0, align 8
@T4VF_MOD_MAP_CIM_LAST = common dso_local global i64 0, align 8
@T4VF_MBDATA_BASE_ADDR = common dso_local global i64 0, align 8
@T4VF_MBDATA_FIRST = common dso_local global i64 0, align 8
@T4VF_MBDATA_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @cxgb4vf_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4vf_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.adapter* @netdev2adap(%struct.net_device* %8)
  store %struct.adapter* %9, %struct.adapter** %7, align 8
  %10 = load %struct.adapter*, %struct.adapter** %7, align 8
  %11 = call i32 @mk_adap_vers(%struct.adapter* %10)
  %12 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @T4VF_REGMAP_SIZE, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @T4VF_SGE_BASE_ADDR, align 8
  %20 = load i64, i64* @T4VF_MOD_MAP_SGE_FIRST, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* @T4VF_SGE_BASE_ADDR, align 8
  %23 = load i64, i64* @T4VF_MOD_MAP_SGE_LAST, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @reg_block_dump(%struct.adapter* %17, i8* %18, i64 %21, i64 %24)
  %26 = load %struct.adapter*, %struct.adapter** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* @T4VF_MPS_BASE_ADDR, align 8
  %29 = load i64, i64* @T4VF_MOD_MAP_MPS_FIRST, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @T4VF_MPS_BASE_ADDR, align 8
  %32 = load i64, i64* @T4VF_MOD_MAP_MPS_LAST, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @reg_block_dump(%struct.adapter* %26, i8* %27, i64 %30, i64 %33)
  %35 = load %struct.adapter*, %struct.adapter** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* @T4VF_PL_BASE_ADDR, align 8
  %38 = load i64, i64* @T4VF_MOD_MAP_PL_FIRST, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @T4VF_PL_BASE_ADDR, align 8
  %41 = load %struct.adapter*, %struct.adapter** %7, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_t4(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i64, i64* @PL_VF_WHOAMI_A, align 8
  br label %51

49:                                               ; preds = %3
  %50 = load i64, i64* @PL_VF_REVISION_A, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = add nsw i64 %40, %52
  %54 = call i32 @reg_block_dump(%struct.adapter* %35, i8* %36, i64 %39, i64 %53)
  %55 = load %struct.adapter*, %struct.adapter** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* @T4VF_CIM_BASE_ADDR, align 8
  %58 = load i64, i64* @T4VF_MOD_MAP_CIM_FIRST, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @T4VF_CIM_BASE_ADDR, align 8
  %61 = load i64, i64* @T4VF_MOD_MAP_CIM_LAST, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @reg_block_dump(%struct.adapter* %55, i8* %56, i64 %59, i64 %62)
  %64 = load %struct.adapter*, %struct.adapter** %7, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* @T4VF_MBDATA_BASE_ADDR, align 8
  %67 = load i64, i64* @T4VF_MBDATA_FIRST, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @T4VF_MBDATA_BASE_ADDR, align 8
  %70 = load i64, i64* @T4VF_MBDATA_LAST, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @reg_block_dump(%struct.adapter* %64, i8* %65, i64 %68, i64 %71)
  ret void
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @mk_adap_vers(%struct.adapter*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @reg_block_dump(%struct.adapter*, i8*, i64, i64) #1

declare dso_local i64 @is_t4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
