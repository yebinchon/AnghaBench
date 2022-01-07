; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_config_knode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_config_knode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tc_cls_u32_offload = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.tc_cls_u32_offload*)* @tc_config_knode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_config_knode(%struct.stmmac_priv* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %8 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %9 = call i32 @tc_fill_entry(%struct.stmmac_priv* %7, %struct.tc_cls_u32_offload* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @stmmac_rxp_config(%struct.stmmac_priv* %15, i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %32

31:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %37

32:                                               ; preds = %30
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %34 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %35 = call i32 @tc_unfill_entry(%struct.stmmac_priv* %33, %struct.tc_cls_u32_offload* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %31, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @tc_fill_entry(%struct.stmmac_priv*, %struct.tc_cls_u32_offload*) #1

declare dso_local i32 @stmmac_rxp_config(%struct.stmmac_priv*, i32, i32, i32) #1

declare dso_local i32 @tc_unfill_entry(%struct.stmmac_priv*, %struct.tc_cls_u32_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
