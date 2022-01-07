; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_halt_bt_gpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_halt_bt_gpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32, i32 }

@MCI_GPM_COEX_AGENT = common dso_local global i32 0, align 4
@MCI_GPM_COEX_HALT_BT_GPM = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_GPM_HALT = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_HALT_STATE = common dso_local global i32 0, align 4
@MCI_GPM_COEX_BT_GPM_UNHALT = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32)* @ar9003_mci_send_coex_halt_bt_gpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_hw_mci*, align 8
  %8 = alloca [4 x i32], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath9k_hw_mci* %11, %struct.ath9k_hw_mci** %7, align 8
  %12 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %14 = load i32, i32* @MCI_GPM_COEX_AGENT, align 4
  %15 = load i32, i32* @MCI_GPM_COEX_HALT_BT_GPM, align 4
  %16 = call i32 @MCI_GPM_SET_TYPE_OPCODE(i32* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %21 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %7, align 8
  %25 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @MCI_GPM_COEX_BT_GPM_HALT, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* @MCI_GPM_COEX_B_HALT_STATE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @MCI_GPM_COEX_BT_GPM_UNHALT, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %34 = load i32, i32* @MCI_GPM_COEX_B_HALT_STATE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %19
  %38 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %39 = load i32, i32* @MCI_GPM, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %38, i32 %39, i32 0, i32* %40, i32 16, i32 %41, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MCI_GPM_SET_TYPE_OPCODE(i32*, i32, i32) #2

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
