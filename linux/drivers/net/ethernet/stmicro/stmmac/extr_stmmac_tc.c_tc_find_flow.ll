; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_find_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_find_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_flow_entry = type { i64, i32 }
%struct.stmmac_priv = type { i32, %struct.stmmac_flow_entry* }
%struct.flow_cls_offload = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stmmac_flow_entry* (%struct.stmmac_priv*, %struct.flow_cls_offload*, i32)* @tc_find_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stmmac_flow_entry* @tc_find_flow(%struct.stmmac_priv* %0, %struct.flow_cls_offload* %1, i32 %2) #0 {
  %4 = alloca %struct.stmmac_flow_entry*, align 8
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stmmac_flow_entry*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %19, i64 %21
  store %struct.stmmac_flow_entry* %22, %struct.stmmac_flow_entry** %9, align 8
  %23 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %9, align 8
  %24 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %27 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %9, align 8
  store %struct.stmmac_flow_entry* %31, %struct.stmmac_flow_entry** %4, align 8
  br label %47

32:                                               ; preds = %16
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %9, align 8
  %37 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %9, align 8
  store %struct.stmmac_flow_entry* %41, %struct.stmmac_flow_entry** %4, align 8
  br label %47

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %10

46:                                               ; preds = %10
  store %struct.stmmac_flow_entry* null, %struct.stmmac_flow_entry** %4, align 8
  br label %47

47:                                               ; preds = %46, %40, %30
  %48 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %4, align 8
  ret %struct.stmmac_flow_entry* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
