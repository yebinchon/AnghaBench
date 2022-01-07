; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_kmrn_lock_loss_workaround_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_kmrn_lock_loss_workaround_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i32 }

@IGP3_KMRN_DIAG = common dso_local global i32 0, align 4
@IGP3_KMRN_DIAG_PCS_LOCK_LOSS = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_kmrn_lock_loss_workaround_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_kmrn_lock_loss_workaround_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %12, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %13 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %19, i32 1, i32 0, i32* %9)
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i64 0, i64* %2, align 8
  br label %72

24:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = load i32, i32* @IGP3_KMRN_DIAG, align 4
  %31 = call i64 @e1e_rphy(%struct.e1000_hw* %29, i32 %30, i32* %8)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %2, align 8
  br label %72

36:                                               ; preds = %28
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @IGP3_KMRN_DIAG, align 4
  %39 = call i64 @e1e_rphy(%struct.e1000_hw* %37, i32 %38, i32* %8)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %2, align 8
  br label %72

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @IGP3_KMRN_DIAG_PCS_LOCK_LOSS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i64 0, i64* %2, align 8
  br label %72

50:                                               ; preds = %44
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i32 @e1000_phy_hw_reset(%struct.e1000_hw* %51)
  %53 = call i32 @mdelay(i32 5)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32, i32* @PHY_CTRL, align 4
  %59 = call i32 @er32(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %61 = load i32, i32* @E1000_PHY_CTRL_NOND0A_GBE_DISABLE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @PHY_CTRL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ew32(i32 %65, i32 %66)
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = call i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %68)
  %70 = load i64, i64* @E1000_ERR_PHY, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %57, %49, %42, %34, %23, %17
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
