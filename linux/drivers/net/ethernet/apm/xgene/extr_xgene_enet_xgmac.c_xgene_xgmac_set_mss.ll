; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_xgmac_set_mss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_xgmac_set_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }

@XG_TSIF_MSS_REG0_ADDR = common dso_local global i64 0, align 8
@TSO_MSS1 = common dso_local global i32 0, align 4
@TSO_MSS1_POS = common dso_local global i32 0, align 4
@TSO_MSS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i32, i32)* @xgene_xgmac_set_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_xgmac_set_mss(%struct.xgene_enet_pdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 2
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %14 = load i64, i64* @XG_TSIF_MSS_REG0_ADDR, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %13, i64 %17, i32* %8)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @TSO_MSS1, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @TSO_MSS1_POS, align 4
  %26 = ashr i32 %24, %25
  %27 = call i32 @SET_VAL(i32 %23, i32 %26)
  %28 = load i32, i32* @TSO_MSS0, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SET_VAL(i32 %28, i32 %29)
  %31 = or i32 %27, %30
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %3
  %33 = load i32, i32* @TSO_MSS1, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SET_VAL(i32 %33, i32 %34)
  %36 = load i32, i32* @TSO_MSS0, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SET_VAL(i32 %36, i32 %37)
  %39 = or i32 %35, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %22
  %41 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %42 = load i64, i64* @XG_TSIF_MSS_REG0_ADDR, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %41, i64 %45, i32 %46)
  ret void
}

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i64, i32*) #1

declare dso_local i32 @SET_VAL(i32, i32) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
