; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_r_vlan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_r_vlan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@TABLE_VLAN = common dso_local global i32 0, align 4
@VLAN_TABLE_VALID = common dso_local global i32 0, align 4
@VLAN_TABLE_VID = common dso_local global i32 0, align 4
@VLAN_TABLE_FID = common dso_local global i32 0, align 4
@VLAN_TABLE_FID_SHIFT = common dso_local global i32 0, align 4
@VLAN_TABLE_MEMBERSHIP = common dso_local global i32 0, align 4
@VLAN_TABLE_MEMBERSHIP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*, i64, i64*, i64*, i64*)* @sw_r_vlan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sw_r_vlan_table(%struct.ksz_hw* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksz_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %14 = load i32, i32* @TABLE_VLAN, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @sw_r_table(%struct.ksz_hw* %13, i32 %14, i64 %15, i32* %12)
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @VLAN_TABLE_VALID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @VLAN_TABLE_VID, align 4
  %24 = and i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @VLAN_TABLE_FID, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @VLAN_TABLE_FID_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %10, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @VLAN_TABLE_MEMBERSHIP, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @VLAN_TABLE_MEMBERSHIP_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %11, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %6, align 4
  br label %42

41:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @sw_r_table(%struct.ksz_hw*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
