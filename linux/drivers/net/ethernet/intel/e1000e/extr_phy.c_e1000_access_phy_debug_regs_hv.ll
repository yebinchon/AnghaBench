; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_access_phy_debug_regs_hv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_access_phy_debug_regs_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@e1000_phy_82578 = common dso_local global i64 0, align 8
@I82578_ADDR_REG = common dso_local global i64 0, align 8
@I82577_ADDR_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Could not write the Address Offset port register\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not access the Data port register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i32*, i32)* @e1000_access_phy_debug_regs_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_phy_82578, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @I82578_ADDR_REG, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @I82577_ADDR_REG, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %12, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 2, i32* %29, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 63
  %35 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %30, i64 %31, i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = call i32 @e_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %62

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %45, i64 %46, i32* %47)
  store i64 %48, i64* %10, align 8
  br label %55

49:                                               ; preds = %41
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %50, i64 %51, i32 %53)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %38
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
