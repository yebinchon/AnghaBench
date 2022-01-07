; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_set_rss_sband.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_set_rss_sband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_cle = type { i32 }

@CLE_PKTRAM_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@XGENE_CLE_IPV4 = common dso_local global i32 0, align 4
@XGENE_CLE_TCP = common dso_local global i32 0, align 4
@XGENE_CLE_UDP = common dso_local global i32 0, align 4
@PKT_RAM = common dso_local global i32 0, align 4
@CLE_CMD_WR = common dso_local global i32 0, align 4
@XGENE_CLE_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_cle*)* @xgene_cle_set_rss_sband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_cle_set_rss_sband(%struct.xgene_enet_cle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_cle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xgene_enet_cle* %0, %struct.xgene_enet_cle** %3, align 8
  %11 = load i32, i32* @CLE_PKTRAM_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @ETH_HLEN, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 5, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 5
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @XGENE_CLE_IPV4, align 4
  %21 = load i32, i32* @XGENE_CLE_TCP, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @xgene_cle_sband_to_hw(i32 0, i32 %20, i32 %21, i32 %22, i32* %7)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 5
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @XGENE_CLE_IPV4, align 4
  %30 = load i32, i32* @XGENE_CLE_UDP, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @xgene_cle_sband_to_hw(i32 1, i32 %29, i32 %30, i32 %31, i32* %7)
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PKT_RAM, align 4
  %40 = load i32, i32* @CLE_CMD_WR, align 4
  %41 = call i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle* %37, i32* %6, i32 1, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  br label %77

46:                                               ; preds = %1
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 5
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @XGENE_CLE_IPV4, align 4
  %52 = load i32, i32* @XGENE_CLE_OTHER, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @xgene_cle_sband_to_hw(i32 0, i32 %51, i32 %52, i32 %53, i32* %7)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 5
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @XGENE_CLE_IPV4, align 4
  %59 = load i32, i32* @XGENE_CLE_OTHER, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @xgene_cle_sband_to_hw(i32 0, i32 %58, i32 %59, i32 %60, i32* %7)
  %62 = load i32, i32* %7, align 4
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.xgene_enet_cle*, %struct.xgene_enet_cle** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* @PKT_RAM, align 4
  %70 = load i32, i32* @CLE_CMD_WR, align 4
  %71 = call i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle* %66, i32* %6, i32 1, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %46
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %74, %44
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @xgene_cle_sband_to_hw(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xgene_cle_dram_wr(%struct.xgene_enet_cle*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
