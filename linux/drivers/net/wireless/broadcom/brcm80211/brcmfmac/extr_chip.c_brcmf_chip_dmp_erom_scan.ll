; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_dmp_erom_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_dmp_erom_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32)* }
%struct.brcmf_core = type { i64 }

@SI_ENUM_BASE = common dso_local global i32 0, align 4
@eromptr = common dso_local global i32 0, align 4
@DMP_DESC_EOT = common dso_local global i64 0, align 8
@DMP_DESC_VALID = common dso_local global i64 0, align 8
@DMP_DESC_EMPTY = common dso_local global i64 0, align 8
@DMP_DESC_COMPONENT = common dso_local global i64 0, align 8
@DMP_COMP_PARTNUM = common dso_local global i64 0, align 8
@DMP_COMP_PARTNUM_S = common dso_local global i64 0, align 8
@DMP_DESC_TYPE_MSK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@DMP_COMP_NUM_MPORT = common dso_local global i64 0, align 8
@DMP_COMP_NUM_MPORT_S = common dso_local global i64 0, align 8
@DMP_COMP_NUM_SPORT = common dso_local global i64 0, align 8
@DMP_COMP_NUM_SPORT_S = common dso_local global i64 0, align 8
@DMP_COMP_NUM_MWRAP = common dso_local global i64 0, align 8
@DMP_COMP_NUM_MWRAP_S = common dso_local global i64 0, align 8
@DMP_COMP_NUM_SWRAP = common dso_local global i64 0, align 8
@DMP_COMP_NUM_SWRAP_S = common dso_local global i64 0, align 8
@DMP_COMP_REVISION = common dso_local global i64 0, align 8
@DMP_COMP_REVISION_S = common dso_local global i64 0, align 8
@BCMA_CORE_PMU = common dso_local global i64 0, align 8
@BCMA_CORE_GCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_chip_priv*)* @brcmf_chip_dmp_erom_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_dmp_erom_scan(%struct.brcmf_chip_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_chip_priv*, align 8
  %4 = alloca %struct.brcmf_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.brcmf_chip_priv* %0, %struct.brcmf_chip_priv** %3, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (i32, i32)*, i64 (i32, i32)** %20, align 8
  %22 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SI_ENUM_BASE, align 4
  %26 = load i32, i32* @eromptr, align 4
  %27 = call i32 @CORE_CC_REG(i32 %25, i32 %26)
  %28 = call i64 %21(i32 %24, i32 %27)
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %127, %114, %108, %50, %45, %40, %1
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @DMP_DESC_EOT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %131

33:                                               ; preds = %29
  %34 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %35 = call i64 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %34, i64* %5, i64* %6)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @DMP_DESC_VALID, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %29

41:                                               ; preds = %33
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @DMP_DESC_EMPTY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %29

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @DMP_DESC_COMPONENT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %29

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @DMP_COMP_PARTNUM, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* @DMP_COMP_PARTNUM_S, align 8
  %56 = ashr i64 %54, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %58 = call i64 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv* %57, i64* %5, i64* %6)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @DMP_DESC_TYPE_MSK, align 8
  %61 = and i64 %59, %60
  %62 = load i64, i64* @DMP_DESC_COMPONENT, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %132

70:                                               ; preds = %51
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @DMP_COMP_NUM_MPORT, align 8
  %73 = and i64 %71, %72
  %74 = load i64, i64* @DMP_COMP_NUM_MPORT_S, align 8
  %75 = ashr i64 %73, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @DMP_COMP_NUM_SPORT, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* @DMP_COMP_NUM_SPORT_S, align 8
  %80 = ashr i64 %78, %79
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @DMP_COMP_NUM_MWRAP, align 8
  %83 = and i64 %81, %82
  %84 = load i64, i64* @DMP_COMP_NUM_MWRAP_S, align 8
  %85 = ashr i64 %83, %84
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @DMP_COMP_NUM_SWRAP, align 8
  %88 = and i64 %86, %87
  %89 = load i64, i64* @DMP_COMP_NUM_SWRAP_S, align 8
  %90 = ashr i64 %88, %89
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @DMP_COMP_REVISION, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* @DMP_COMP_REVISION_S, align 8
  %95 = ashr i64 %93, %94
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %96, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %70
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @BCMA_CORE_PMU, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @BCMA_CORE_GCI, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %29

109:                                              ; preds = %104, %100, %70
  %110 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %111 = call i32 @brcmf_chip_dmp_get_regaddr(%struct.brcmf_chip_priv* %110, i64* %5, i64* %14, i64* %15)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %29

115:                                              ; preds = %109
  %116 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call %struct.brcmf_core* @brcmf_chip_add_core(%struct.brcmf_chip_priv* %116, i64 %117, i64 %118, i64 %119)
  store %struct.brcmf_core* %120, %struct.brcmf_core** %4, align 8
  %121 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %122 = call i64 @IS_ERR(%struct.brcmf_core* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %126 = call i32 @PTR_ERR(%struct.brcmf_core* %125)
  store i32 %126, i32* %2, align 4
  br label %132

127:                                              ; preds = %115
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %130 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %29

131:                                              ; preds = %29
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %124, %67
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @CORE_CC_REG(i32, i32) #1

declare dso_local i64 @brcmf_chip_dmp_get_desc(%struct.brcmf_chip_priv*, i64*, i64*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @brcmf_chip_dmp_get_regaddr(%struct.brcmf_chip_priv*, i64*, i64*, i64*) #1

declare dso_local %struct.brcmf_core* @brcmf_chip_add_core(%struct.brcmf_chip_priv*, i64, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_core*) #1

declare dso_local i32 @PTR_ERR(%struct.brcmf_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
