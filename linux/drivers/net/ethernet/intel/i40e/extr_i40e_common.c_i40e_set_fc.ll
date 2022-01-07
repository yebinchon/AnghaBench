; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_set_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_set_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_get_phy_abilities_resp = type { i32 }

@I40E_SET_FC_AQ_FAIL_GET = common dso_local global i32 0, align 4
@I40E_SET_FC_AQ_FAIL_SET = common dso_local global i32 0, align 4
@I40E_SET_FC_AQ_FAIL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_set_fc(%struct.i40e_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_aq_get_phy_abilities_resp, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %12 = call i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %11, i32 0, i32 0, %struct.i40e_aq_get_phy_abilities_resp* %8, i32* null)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @I40E_SET_FC_AQ_FAIL_GET, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @i40e_set_fc_status(%struct.i40e_hw* %22, %struct.i40e_aq_get_phy_abilities_resp* %8, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @I40E_SET_FC_AQ_FAIL_SET, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = call i32 @i40e_update_link_info(%struct.i40e_hw* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 @msleep(i32 1000)
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %40 = call i32 @i40e_update_link_info(%struct.i40e_hw* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @I40E_SET_FC_AQ_FAIL_UPDATE, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @i40e_aq_get_phy_capabilities(%struct.i40e_hw*, i32, i32, %struct.i40e_aq_get_phy_abilities_resp*, i32*) #1

declare dso_local i32 @i40e_set_fc_status(%struct.i40e_hw*, %struct.i40e_aq_get_phy_abilities_resp*, i32) #1

declare dso_local i32 @i40e_update_link_info(%struct.i40e_hw*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
