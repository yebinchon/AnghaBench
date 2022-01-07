; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_channel_id_to_txp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_channel_id_to_txp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_phy_db_chg_txp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_phy_db*, i32)* @channel_id_to_txp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_id_to_txp(%struct.iwl_phy_db* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_phy_db*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_phy_db_chg_txp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ch_id_to_ch_index(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 255, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.iwl_phy_db_chg_txp*
  store %struct.iwl_phy_db_chg_txp* %31, %struct.iwl_phy_db_chg_txp** %6, align 8
  %32 = load %struct.iwl_phy_db_chg_txp*, %struct.iwl_phy_db_chg_txp** %6, align 8
  %33 = icmp ne %struct.iwl_phy_db_chg_txp* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 255, i32* %3, align 4
  br label %49

35:                                               ; preds = %21
  %36 = load %struct.iwl_phy_db_chg_txp*, %struct.iwl_phy_db_chg_txp** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_phy_db_chg_txp, %struct.iwl_phy_db_chg_txp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %15
  store i32 255, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %34, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ch_id_to_ch_index(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
