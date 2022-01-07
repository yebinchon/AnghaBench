; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_extd_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_ethtool.c_xgene_extd_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XGENE_EXTD_STATS_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgene_extd_stats_init(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %4 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %5 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @XGENE_EXTD_STATS_LEN, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @devm_kmalloc_array(i32* %7, i32 %8, i32 4, i32 %9)
  %11 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %22 = call i32 @xgene_get_extd_stats(%struct.xgene_enet_pdata* %21)
  %23 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %24 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @XGENE_EXTD_STATS_LEN, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32 %25, i32 0, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @devm_kmalloc_array(i32*, i32, i32, i32) #1

declare dso_local i32 @xgene_get_extd_stats(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
