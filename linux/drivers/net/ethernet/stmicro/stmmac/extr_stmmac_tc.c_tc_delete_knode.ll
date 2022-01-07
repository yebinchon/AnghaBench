; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_delete_knode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_delete_knode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tc_cls_u32_offload = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.tc_cls_u32_offload*)* @tc_delete_knode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_delete_knode(%struct.stmmac_priv* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %8 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %9 = call i32 @tc_unfill_entry(%struct.stmmac_priv* %7, %struct.tc_cls_u32_offload* %8)
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @stmmac_rxp_config(%struct.stmmac_priv* %10, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @tc_unfill_entry(%struct.stmmac_priv*, %struct.tc_cls_u32_offload*) #1

declare dso_local i32 @stmmac_rxp_config(%struct.stmmac_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
