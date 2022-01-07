; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_get_drop_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_get_drop_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32 }

@XGENE_ENET1 = common dso_local global i64 0, align 8
@XG_MCX_ICM_ECM_DROP_COUNT_REG0_ADDR = common dso_local global i64 0, align 8
@ICM_ECM_DROP_COUNT_REG0_ADDR = common dso_local global i64 0, align 8
@OFFSET_4 = common dso_local global i32 0, align 4
@XG_MCX_ECM_CONFIG0_REG_0_ADDR = common dso_local global i64 0, align 8
@ECM_CONFIG0_REG_0_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i64*, i64*)* @xgene_sgmac_get_drop_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_sgmac_get_drop_cnt(%struct.xgene_enet_pdata* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %10 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XGENE_ENET1, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @XG_MCX_ICM_ECM_DROP_COUNT_REG0_ADDR, align 8
  br label %25

16:                                               ; preds = %3
  %17 = load i64, i64* @ICM_ECM_DROP_COUNT_REG0_ADDR, align 8
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @OFFSET_4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %17, %23
  br label %25

25:                                               ; preds = %16, %14
  %26 = phi i64 [ %15, %14 ], [ %24, %16 ]
  store i64 %26, i64* %7, align 8
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %27, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @ICM_DROP_COUNT(i64 %30)
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @ECM_DROP_COUNT(i64 %33)
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  %36 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XGENE_ENET1, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i64, i64* @XG_MCX_ECM_CONFIG0_REG_0_ADDR, align 8
  br label %52

43:                                               ; preds = %25
  %44 = load i64, i64* @ECM_CONFIG0_REG_0_ADDR, align 8
  %45 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %46 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OFFSET_4, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %44, %50
  br label %52

52:                                               ; preds = %43, %41
  %53 = phi i64 [ %42, %41 ], [ %51, %43 ]
  store i64 %53, i64* %7, align 8
  %54 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %54, i64 %55)
  ret void
}

declare dso_local i64 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata*, i64) #1

declare dso_local i64 @ICM_DROP_COUNT(i64) #1

declare dso_local i64 @ECM_DROP_COUNT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
