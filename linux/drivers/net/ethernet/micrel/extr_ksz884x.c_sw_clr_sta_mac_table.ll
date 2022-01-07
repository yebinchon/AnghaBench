; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_clr_sta_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_clr_sta_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ksz_mac_table* }
%struct.ksz_mac_table = type { i32, i32, i32, i32, i32 }

@STATIC_MAC_TABLE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_clr_sta_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_clr_sta_mac_table(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca %struct.ksz_mac_table*, align 8
  %4 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @STATIC_MAC_TABLE_ENTRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %14, i64 %16
  store %struct.ksz_mac_table* %17, %struct.ksz_mac_table** %3, align 8
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %21 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %24 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %27 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %30 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %33 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sw_w_sta_mac_table(%struct.ksz_hw* %18, i32 %19, i32 %22, i32 %25, i32 %28, i32 0, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %9
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i32 @sw_w_sta_mac_table(%struct.ksz_hw*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
