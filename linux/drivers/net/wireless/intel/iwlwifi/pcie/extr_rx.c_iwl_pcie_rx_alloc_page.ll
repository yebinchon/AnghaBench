; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64 }

@__GFP_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"alloc_pages failed, order: %d\0A\00", align 1
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to alloc_pages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.iwl_trans*, i32)* @iwl_pcie_rx_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @iwl_pcie_rx_alloc_page(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans_pcie*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %6, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @__GFP_COMP, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.page* @alloc_pages(i32 %21, i64 %24)
  store %struct.page* %25, %struct.page** %7, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %20
  %29 = call i64 (...) @net_ratelimit()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @__GFP_NOWARN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = call i64 (...) @net_ratelimit()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %47 = call i32 @IWL_CRIT(%struct.iwl_trans* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42, %37
  store %struct.page* null, %struct.page** %3, align 8
  br label %51

49:                                               ; preds = %20
  %50 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %50, %struct.page** %3, align 8
  br label %51

51:                                               ; preds = %49, %48
  %52 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %52
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local %struct.page* @alloc_pages(i32, i64) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i64) #1

declare dso_local i32 @IWL_CRIT(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
