; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_send_all_channel_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_iwl_phy_db_send_all_channel_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32 }
%struct.iwl_phy_db_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Can't SEND phy_db section %d (%d), err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Sent PHY_DB HCMD, type = %d num = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_phy_db*, i32, i64)* @iwl_phy_db_send_all_channel_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_phy_db_send_all_channel_groups(%struct.iwl_phy_db* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_phy_db_entry*, align 8
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %59, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  %16 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.iwl_phy_db_entry* @iwl_phy_db_get_section(%struct.iwl_phy_db* %16, i32 %17, i64 %18)
  store %struct.iwl_phy_db_entry* %19, %struct.iwl_phy_db_entry** %10, align 8
  %20 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %21 = icmp ne %struct.iwl_phy_db_entry* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %63

25:                                               ; preds = %15
  %26 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %27 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %59

31:                                               ; preds = %25
  %32 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %35 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iwl_phy_db_entry*, %struct.iwl_phy_db_entry** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db* %32, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @IWL_ERR(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %63

52:                                               ; preds = %31
  %53 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %54 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @IWL_DEBUG_INFO(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %52, %30
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %11

62:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %43, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.iwl_phy_db_entry* @iwl_phy_db_get_section(%struct.iwl_phy_db*, i32, i64) #1

declare dso_local i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db*, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
