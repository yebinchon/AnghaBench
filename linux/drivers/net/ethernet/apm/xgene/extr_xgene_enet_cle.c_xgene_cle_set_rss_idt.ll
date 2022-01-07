; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_set_rss_idt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_cle.c_xgene_cle_set_rss_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@XGENE_CLE_IDT_ENTRIES = common dso_local global i32 0, align 4
@RSS_IDT = common dso_local global i32 0, align 4
@CLE_CMD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_cle_set_rss_idt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_cle_set_rss_idt(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %81, %1
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @XGENE_CLE_IDT_ENTRIES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %24 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @xgene_enet_get_fpsel(i32 %33)
  store i64 %34, i64* %4, align 8
  %35 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i64 @xgene_enet_dst_ring_num(%struct.TYPE_6__* %40)
  store i64 %41, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %42 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %16
  %52 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %53 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %54, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @xgene_enet_get_fpsel(i32 %62)
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %51, %16
  store i64 0, i64* %7, align 8
  %65 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @xgene_cle_idt_to_hw(%struct.xgene_enet_pdata* %65, i64 %66, i64 %67, i64 %68, i64* %7)
  %70 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %71 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %70, i32 0, i32 1
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @RSS_IDT, align 4
  %74 = load i32, i32* @CLE_CMD_WR, align 4
  %75 = call i32 @xgene_cle_dram_wr(i32* %71, i64* %7, i32 1, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %2, align 4
  br label %93

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %12

84:                                               ; preds = %12
  %85 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %86 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %85, i32 0, i32 1
  %87 = call i32 @xgene_cle_set_rss_skeys(i32* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %90, %78
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @xgene_enet_get_fpsel(i32) #1

declare dso_local i64 @xgene_enet_dst_ring_num(%struct.TYPE_6__*) #1

declare dso_local i32 @xgene_cle_idt_to_hw(%struct.xgene_enet_pdata*, i64, i64, i64, i64*) #1

declare dso_local i32 @xgene_cle_dram_wr(i32*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @xgene_cle_set_rss_skeys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
