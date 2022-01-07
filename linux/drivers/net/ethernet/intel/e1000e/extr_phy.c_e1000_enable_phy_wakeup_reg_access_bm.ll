; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_enable_phy_wakeup_reg_access_bm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_enable_phy_wakeup_reg_access_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BM_PORT_CTRL_PAGE = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not set Port Control page\0A\00", align 1
@BM_WUC_ENABLE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not read PHY register %d.%d\0A\00", align 1
@BM_WUC_ENABLE_BIT = common dso_local global i32 0, align 4
@BM_WUC_ME_WU_BIT = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not write PHY register %d.%d\0A\00", align 1
@BM_WUC_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %13 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %11, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %22, i32 %23, i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %30 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %31 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %3, align 8
  br label %62

33:                                               ; preds = %21
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @BM_WUC_ENABLE_BIT, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @BM_WUC_ME_WU_BIT, align 4
  %40 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %45, i32 %46, i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %33
  %52 = load i32, i32* @BM_PORT_CTRL_PAGE, align 4
  %53 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %54 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %62

56:                                               ; preds = %33
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @BM_WUC_PAGE, align 4
  %59 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %57, i32 %60)
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %56, %51, %28, %18
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
