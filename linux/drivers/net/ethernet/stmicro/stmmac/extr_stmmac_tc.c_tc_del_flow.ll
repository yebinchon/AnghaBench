; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_del_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_del_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.stmmac_flow_entry = type { i32, i32, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*)* @tc_del_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_del_flow(%struct.stmmac_priv* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.stmmac_flow_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %10 = call %struct.stmmac_flow_entry* @tc_find_flow(%struct.stmmac_priv* %8, %struct.flow_cls_offload* %9, i32 0)
  store %struct.stmmac_flow_entry* %10, %struct.stmmac_flow_entry** %6, align 8
  %11 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %12 = icmp ne %struct.stmmac_flow_entry* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %15 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %23 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %32 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @stmmac_config_l4_filter(%struct.stmmac_priv* %27, i32 %30, i32 %33, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %21
  %36 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %37 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %38 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %41 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @stmmac_config_l3_filter(%struct.stmmac_priv* %36, i32 %39, i32 %42, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %46 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %48 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %50 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.stmmac_flow_entry* @tc_find_flow(%struct.stmmac_priv*, %struct.flow_cls_offload*, i32) #1

declare dso_local i32 @stmmac_config_l4_filter(%struct.stmmac_priv*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stmmac_config_l3_filter(%struct.stmmac_priv*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
