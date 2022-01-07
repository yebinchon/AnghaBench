; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_get_extd_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_get_extd_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.xgene_enet_pdata = type { i32*, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.xgene_enet_pdata*, i32*, i32*)* }

@XGENE_EXTD_STATS_LEN = common dso_local global i32 0, align 4
@gstrings_extd_stats = common dso_local global %struct.TYPE_4__* null, align 8
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@RALN_IDX = common dso_local global i64 0, align 8
@RFCS_IDX = common dso_local global i64 0, align 8
@RUND_IDX = common dso_local global i64 0, align 8
@RFLR_IDX = common dso_local global i64 0, align 8
@TFRG_IDX = common dso_local global i64 0, align 8
@TFCS_IDX = common dso_local global i64 0, align 8
@RX_OVERRUN_IDX = common dso_local global i64 0, align 8
@TX_UNDERRUN_IDX = common dso_local global i64 0, align 8
@FALSE_RFLR_IDX = common dso_local global i64 0, align 8
@FALSE_RJBR_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_get_extd_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_get_extd_stats(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @XGENE_EXTD_STATS_LEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gstrings_extd_stats, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @xgene_enet_rd_stat(%struct.xgene_enet_pdata* %13, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gstrings_extd_stats, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %12
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gstrings_extd_stats, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @GENMASK(i64 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %41 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %39
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %28, %12
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %8

52:                                               ; preds = %8
  %53 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %54 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %60 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RALN_IDX, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 0, i32* %63, align 4
  br label %104

64:                                               ; preds = %52
  %65 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %66 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @RALN_IDX, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %72 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @RFCS_IDX, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, %70
  store i32 %77, i32* %75, align 4
  %78 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %79 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @RUND_IDX, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %85 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @RFLR_IDX, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %83
  store i32 %90, i32* %88, align 4
  %91 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %92 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @TFRG_IDX, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %98 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @TFCS_IDX, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, %96
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %64, %58
  %105 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %106 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %105, i32 0, i32 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32 (%struct.xgene_enet_pdata*, i32*, i32*)*, i32 (%struct.xgene_enet_pdata*, i32*, i32*)** %108, align 8
  %110 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %111 = call i32 %109(%struct.xgene_enet_pdata* %110, i32* %3, i32* %4)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %114 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @RX_OVERRUN_IDX, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %112
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %122 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @TX_UNDERRUN_IDX, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %120
  store i32 %127, i32* %125, align 4
  %128 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %129 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %132 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @FALSE_RFLR_IDX, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %137 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %140 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @FALSE_RJBR_IDX, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %138, i32* %143, align 4
  ret void
}

declare dso_local i32 @xgene_enet_rd_stat(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
