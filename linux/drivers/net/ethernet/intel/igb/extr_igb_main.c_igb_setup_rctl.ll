; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_setup_rctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_setup_rctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_4__*, i64, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_MAC = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_SECRC = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_256 = common dso_local global i32 0, align 4
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@E1000_QDE = common dso_local global i32 0, align 4
@ALL_QUEUES = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@E1000_RCTL_PMCF = common dso_local global i32 0, align 4
@E1000_RCTL_DPF = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_setup_rctl(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 2
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @E1000_RCTL, align 4
  %8 = call i32 @rd32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %10 = shl i32 3, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %15 = load i32, i32* @E1000_RCTL_LBM_MAC, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @E1000_RCTL_EN, align 4
  %21 = load i32, i32* @E1000_RCTL_BAM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %24, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @E1000_RCTL_SECRC, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @E1000_RCTL_SBP, align 4
  %38 = load i32, i32* @E1000_RCTL_SZ_256, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @E1000_RCTL_LPE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = call i32 @E1000_RXDCTL(i32 0)
  %47 = call i32 @wr32(i32 %46, i32 0)
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = load i32, i32* @E1000_QDE, align 4
  %54 = load i32, i32* @ALL_QUEUES, align 4
  %55 = call i32 @wr32(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %1
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NETIF_F_RXALL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %56
  %66 = load i32, i32* @E1000_RCTL_SBP, align 4
  %67 = load i32, i32* @E1000_RCTL_BAM, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @E1000_RCTL_PMCF, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @E1000_RCTL_DPF, align 4
  %74 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %65, %56
  %80 = load i32, i32* @E1000_RCTL, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @wr32(i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_RXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
