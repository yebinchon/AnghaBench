; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_unfill_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_unfill_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.tc_cls_u32_offload = type { i32 }
%struct.stmmac_tc_entry = type { i32, i32, %struct.stmmac_tc_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, %struct.tc_cls_u32_offload*)* @tc_unfill_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_unfill_entry(%struct.stmmac_priv* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.tc_cls_u32_offload*, align 8
  %5 = alloca %struct.stmmac_tc_entry*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %4, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %7 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %4, align 8
  %8 = call %struct.stmmac_tc_entry* @tc_find_entry(%struct.stmmac_priv* %6, %struct.tc_cls_u32_offload* %7, i32 0)
  store %struct.stmmac_tc_entry* %8, %struct.stmmac_tc_entry** %5, align 8
  %9 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %10 = icmp ne %struct.stmmac_tc_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %14 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %16 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %15, i32 0, i32 2
  %17 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %16, align 8
  %18 = icmp ne %struct.stmmac_tc_entry* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %21 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %20, i32 0, i32 2
  %22 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %21, align 8
  store %struct.stmmac_tc_entry* %22, %struct.stmmac_tc_entry** %5, align 8
  %23 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %24 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %5, align 8
  %26 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %11, %19, %12
  ret void
}

declare dso_local %struct.stmmac_tc_entry* @tc_find_entry(%struct.stmmac_priv*, %struct.tc_cls_u32_offload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
