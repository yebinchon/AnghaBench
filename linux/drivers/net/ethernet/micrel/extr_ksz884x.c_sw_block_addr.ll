; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_block_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_block_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ksz_mac_table* }
%struct.ksz_mac_table = type { i32, i32, i64, i32, i32, i32 }

@BROADCAST_ENTRY = common dso_local global i32 0, align 4
@IPV6_ADDR_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_block_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_block_addr(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca %struct.ksz_mac_table*, align 8
  %4 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %5 = load i32, i32* @BROADCAST_ENTRY, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @IPV6_ADDR_ENTRY, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %15, i64 %17
  store %struct.ksz_mac_table* %18, %struct.ksz_mac_table** %3, align 8
  %19 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %20 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %24 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %27 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %30 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %33 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %36 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ksz_mac_table*, %struct.ksz_mac_table** %3, align 8
  %39 = getelementptr inbounds %struct.ksz_mac_table, %struct.ksz_mac_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sw_w_sta_mac_table(%struct.ksz_hw* %21, i32 %22, i32 %25, i32 %28, i32 %31, i64 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %10
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @sw_w_sta_mac_table(%struct.ksz_hw*, i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
