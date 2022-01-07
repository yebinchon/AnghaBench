; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_init_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_init_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_queue_sp_obj = type { i32 }
%struct.bnx2x_txq_setup_params = type { i32, i32, i32, i32, i32 }
%struct.client_init_tx_data = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@BNX2X_Q_FLG_TX_SEC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_DEF_VLAN = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TX_SWITCH = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ANTI_SPOOF = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_FORCE_DEFAULT_PRI = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_REFUSE_OUTBAND_VLAN = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TUN_INC_INNER_IP_ID = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_PCSUM_ON_PKT = common dso_local global i32 0, align 4
@CSUM_ON_PKT = common dso_local global i32 0, align 4
@CSUM_ON_BD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_queue_sp_obj*, %struct.bnx2x_txq_setup_params*, %struct.client_init_tx_data*, i64*)* @bnx2x_q_fill_init_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_q_fill_init_tx_data(%struct.bnx2x_queue_sp_obj* %0, %struct.bnx2x_txq_setup_params* %1, %struct.client_init_tx_data* %2, i64* %3) #0 {
  %5 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %6 = alloca %struct.bnx2x_txq_setup_params*, align 8
  %7 = alloca %struct.client_init_tx_data*, align 8
  %8 = alloca i64*, align 8
  store %struct.bnx2x_queue_sp_obj* %0, %struct.bnx2x_queue_sp_obj** %5, align 8
  store %struct.bnx2x_txq_setup_params* %1, %struct.bnx2x_txq_setup_params** %6, align 8
  store %struct.client_init_tx_data* %2, %struct.client_init_tx_data** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i32, i32* @BNX2X_Q_FLG_TX_SEC, align 4
  %10 = load i64*, i64** %8, align 8
  %11 = call i8* @test_bit(i32 %9, i64* %10)
  %12 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %13 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %12, i32 0, i32 13
  store i8* %11, i8** %13, align 8
  %14 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %19 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @BNX2X_Q_FLG_DEF_VLAN, align 4
  %21 = load i64*, i64** %8, align 8
  %22 = call i8* @test_bit(i32 %20, i64* %21)
  %23 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %24 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %23, i32 0, i32 11
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @BNX2X_Q_FLG_TX_SWITCH, align 4
  %26 = load i64*, i64** %8, align 8
  %27 = call i8* @test_bit(i32 %25, i64* %26)
  %28 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %29 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @BNX2X_Q_FLG_ANTI_SPOOF, align 4
  %31 = load i64*, i64** %8, align 8
  %32 = call i8* @test_bit(i32 %30, i64* %31)
  %33 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %34 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @BNX2X_Q_FLG_FORCE_DEFAULT_PRI, align 4
  %36 = load i64*, i64** %8, align 8
  %37 = call i8* @test_bit(i32 %35, i64* %36)
  %38 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %39 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @BNX2X_Q_FLG_REFUSE_OUTBAND_VLAN, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = call i8* @test_bit(i32 %40, i64* %41)
  %43 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %44 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @BNX2X_Q_FLG_TUN_INC_INNER_IP_ID, align 4
  %46 = load i64*, i64** %8, align 8
  %47 = call i8* @test_bit(i32 %45, i64* %46)
  %48 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %49 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @BNX2X_Q_FLG_PCSUM_ON_PKT, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = call i8* @test_bit(i32 %50, i64* %51)
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = load i32, i32* @CSUM_ON_PKT, align 4
  br label %58

56:                                               ; preds = %4
  %57 = load i32, i32* @CSUM_ON_BD, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %61 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %66 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %6, align 8
  %68 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %71 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %6, align 8
  %73 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %76 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %6, align 8
  %78 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @U64_LO(i32 %79)
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %83 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %6, align 8
  %86 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @U64_HI(i32 %87)
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %91 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load %struct.client_init_tx_data*, %struct.client_init_tx_data** %7, align 8
  %94 = getelementptr inbounds %struct.client_init_tx_data, %struct.client_init_tx_data* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  ret void
}

declare dso_local i8* @test_bit(i32, i64*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @U64_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
