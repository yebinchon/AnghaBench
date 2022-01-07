; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_setup_rctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_setup_rctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i64, i32 }
%struct.e1000_hw = type { i32, i32 }

@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_NO = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_4096 = common dso_local global i32 0, align 4
@E1000_RCTL_BSEX = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_2048 = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_8192 = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_16384 = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@E1000_RCTL_PMCF = common dso_local global i32 0, align 4
@E1000_RCTL_VFE = common dso_local global i32 0, align 4
@E1000_RCTL_DPF = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_setup_rctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_setup_rctl(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 2
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @RCTL, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %10 = shl i32 3, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @E1000_RCTL_BAM, align 4
  %15 = load i32, i32* @E1000_RCTL_LBM_NO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @E1000_RCTL_SBP, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %1
  %36 = load i32, i32* @E1000_RCTL_SBP, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ETH_DATA_LEN, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @E1000_RCTL_LPE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @E1000_RCTL_LPE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* @E1000_RCTL_SZ_4096, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %69 [
    i32 130, label %68
    i32 129, label %77
    i32 128, label %81
    i32 131, label %85
  ]

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %57, %68
  %70 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %89

77:                                               ; preds = %57
  %78 = load i32, i32* @E1000_RCTL_SZ_4096, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %89

81:                                               ; preds = %57
  %82 = load i32, i32* @E1000_RCTL_SZ_8192, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %57
  %86 = load i32, i32* @E1000_RCTL_SZ_16384, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %81, %77, %69
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NETIF_F_RXALL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load i32, i32* @E1000_RCTL_SBP, align 4
  %100 = load i32, i32* @E1000_RCTL_BAM, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @E1000_RCTL_PMCF, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @E1000_RCTL_VFE, align 4
  %107 = load i32, i32* @E1000_RCTL_DPF, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %98, %89
  %115 = load i32, i32* @RCTL, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @ew32(i32 %115, i32 %116)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
