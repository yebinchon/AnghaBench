; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_rctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_rctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { %struct.TYPE_4__*, %struct.igc_hw }
%struct.TYPE_4__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IGC_RCTL = common dso_local global i32 0, align 4
@IGC_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@IGC_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@IGC_RCTL_LBM_MAC = common dso_local global i32 0, align 4
@IGC_RCTL_EN = common dso_local global i32 0, align 4
@IGC_RCTL_BAM = common dso_local global i32 0, align 4
@IGC_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@IGC_RCTL_SECRC = common dso_local global i32 0, align 4
@IGC_RCTL_SBP = common dso_local global i32 0, align 4
@IGC_RCTL_SZ_256 = common dso_local global i32 0, align 4
@IGC_RCTL_LPE = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@IGC_RCTL_PMCF = common dso_local global i32 0, align 4
@IGC_RCTL_DPF = common dso_local global i32 0, align 4
@IGC_RCTL_CFIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_setup_rctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_setup_rctl(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %5 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %5, i32 0, i32 1
  store %struct.igc_hw* %6, %struct.igc_hw** %3, align 8
  %7 = load i32, i32* @IGC_RCTL, align 4
  %8 = call i32 @rd32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @IGC_RCTL_MO_SHIFT, align 4
  %10 = shl i32 3, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @IGC_RCTL_LBM_TCVR, align 4
  %15 = load i32, i32* @IGC_RCTL_LBM_MAC, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @IGC_RCTL_EN, align 4
  %21 = load i32, i32* @IGC_RCTL_BAM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IGC_RCTL_RDMTS_HALF, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %26 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IGC_RCTL_MO_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %24, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @IGC_RCTL_SECRC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @IGC_RCTL_SBP, align 4
  %38 = load i32, i32* @IGC_RCTL_SZ_256, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @IGC_RCTL_LPE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = call i32 @IGC_RXDCTL(i32 0)
  %47 = call i32 @wr32(i32 %46, i32 0)
  %48 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NETIF_F_RXALL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %1
  %57 = load i32, i32* @IGC_RCTL_SBP, align 4
  %58 = load i32, i32* @IGC_RCTL_BAM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IGC_RCTL_PMCF, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @IGC_RCTL_DPF, align 4
  %65 = load i32, i32* @IGC_RCTL_CFIEN, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %56, %1
  %71 = load i32, i32* @IGC_RCTL, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @wr32(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @IGC_RXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
