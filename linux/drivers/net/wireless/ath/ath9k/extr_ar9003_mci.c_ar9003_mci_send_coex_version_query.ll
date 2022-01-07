; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_version_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_send_coex_version_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i64 }

@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@MCI_GPM_COEX_AGENT = common dso_local global i32 0, align 4
@MCI_GPM_COEX_VERSION_QUERY = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_mci_send_coex_version_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_send_coex_version_query(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca [4 x i32], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ath9k_hw_mci* %9, %struct.ath9k_hw_mci** %5, align 8
  %10 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %12 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MCI_BT_SLEEP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %32

22:                                               ; preds = %15
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = load i32, i32* @MCI_GPM_COEX_AGENT, align 4
  %25 = load i32, i32* @MCI_GPM_COEX_VERSION_QUERY, align 4
  %26 = call i32 @MCI_GPM_SET_TYPE_OPCODE(i32* %23, i32 %24, i32 %25)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @MCI_GPM, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %27, i32 %28, i32 0, i32* %29, i32 16, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %22, %21
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
