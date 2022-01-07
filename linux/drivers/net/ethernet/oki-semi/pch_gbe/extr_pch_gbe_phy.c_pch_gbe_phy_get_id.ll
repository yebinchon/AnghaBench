; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.pch_gbe_phy_info }
%struct.pch_gbe_phy_info = type { i32, i8* }
%struct.pch_gbe_adapter = type { i32 }

@PHY_ID1 = common dso_local global i32 0, align 4
@PHY_ID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"phy->id : 0x%08x  phy->revision : 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pch_gbe_phy_get_id(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  %9 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %10 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %9)
  store %struct.pch_gbe_adapter* %10, %struct.pch_gbe_adapter** %4, align 8
  %11 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %11, i32 0, i32 0
  store %struct.pch_gbe_phy_info* %12, %struct.pch_gbe_phy_info** %5, align 8
  %13 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %14 = load i32, i32* @PHY_ID1, align 4
  %15 = call i64 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %13, i32 %14, i32* %7)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %2, align 8
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %22 = load i32, i32* @PHY_ID2, align 4
  %23 = call i64 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %21, i32 %22, i32* %8)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %2, align 8
  br label %61

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %5, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %5, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 6
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 64512
  %41 = ashr i32 %40, 10
  %42 = or i32 %38, %41
  %43 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %5, align 8
  %44 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 15
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %5, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %5, align 8
  %55 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %5, align 8
  %58 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @netdev_dbg(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %59)
  store i64 0, i64* %2, align 8
  br label %61

61:                                               ; preds = %28, %26, %18
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i64 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
