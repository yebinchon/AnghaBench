; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32, i32, %struct.iwl_phy_db*, %struct.iwl_phy_db* }

@IWL_PHY_DB_CFG = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_NCH = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_CHG_PAPD = common dso_local global i32 0, align 4
@IWL_PHY_DB_CALIB_CHG_TXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_phy_db_free(%struct.iwl_phy_db* %0) #0 {
  %2 = alloca %struct.iwl_phy_db*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %2, align 8
  %4 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %5 = icmp ne %struct.iwl_phy_db* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %54

7:                                                ; preds = %1
  %8 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %9 = load i32, i32* @IWL_PHY_DB_CFG, align 4
  %10 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %8, i32 %9, i32 0)
  %11 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %12 = load i32, i32* @IWL_PHY_DB_CALIB_NCH, align 4
  %13 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %11, i32 %12, i32 0)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %7
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %22 = load i32, i32* @IWL_PHY_DB_CALIB_CHG_PAPD, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %29, i32 0, i32 3
  %31 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %30, align 8
  %32 = call i32 @kfree(%struct.iwl_phy_db* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %44, %28
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %41 = load i32, i32* @IWL_PHY_DB_CALIB_CHG_TXP, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @iwl_phy_db_free_section(%struct.iwl_phy_db* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %48, i32 0, i32 2
  %50 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %49, align 8
  %51 = call i32 @kfree(%struct.iwl_phy_db* %50)
  %52 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %2, align 8
  %53 = call i32 @kfree(%struct.iwl_phy_db* %52)
  br label %54

54:                                               ; preds = %47, %6
  ret void
}

declare dso_local i32 @iwl_phy_db_free_section(%struct.iwl_phy_db*, i32, i32) #1

declare dso_local i32 @kfree(%struct.iwl_phy_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
