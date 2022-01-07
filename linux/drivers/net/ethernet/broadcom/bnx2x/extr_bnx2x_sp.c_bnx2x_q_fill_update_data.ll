; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_update_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_update_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_sp_obj = type { i32, i32 }
%struct.bnx2x_queue_update_params = type { i32, i32, i32, i32 }
%struct.client_update_ramrod_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@BNX2X_Q_UPDATE_IN_VLAN_REM = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_IN_VLAN_REM_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_OUT_VLAN_REM = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_OUT_VLAN_REM_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ANTI_SPOOF = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ANTI_SPOOF_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ACTIVATE = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_ACTIVATE_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_DEF_VLAN_EN = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_DEF_VLAN_EN_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_SILENT_VLAN_REM_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_SILENT_VLAN_REM = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_TX_SWITCHING = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_TX_SWITCHING_CHNG = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_PTP_PKTS = common dso_local global i32 0, align 4
@BNX2X_Q_UPDATE_PTP_PKTS_CHNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_update_params*, %struct.client_update_ramrod_data*)* @bnx2x_q_fill_update_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_q_fill_update_data(%struct.bnx2x* %0, %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_queue_update_params* %2, %struct.client_update_ramrod_data* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %7 = alloca %struct.bnx2x_queue_update_params*, align 8
  %8 = alloca %struct.client_update_ramrod_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_queue_sp_obj** %6, align 8
  store %struct.bnx2x_queue_update_params* %2, %struct.bnx2x_queue_update_params** %7, align 8
  store %struct.client_update_ramrod_data* %3, %struct.client_update_ramrod_data** %8, align 8
  %9 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %13 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 4
  %14 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %18 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %17, i32 0, i32 19
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %24 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %23, i32 0, i32 18
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @BNX2X_Q_UPDATE_IN_VLAN_REM, align 4
  %26 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %27 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %26, i32 0, i32 0
  %28 = call i8* @test_bit(i32 %25, i32* %27)
  %29 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %30 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %29, i32 0, i32 17
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @BNX2X_Q_UPDATE_IN_VLAN_REM_CHNG, align 4
  %32 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %33 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %32, i32 0, i32 0
  %34 = call i8* @test_bit(i32 %31, i32* %33)
  %35 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %36 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %35, i32 0, i32 16
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @BNX2X_Q_UPDATE_OUT_VLAN_REM, align 4
  %38 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %39 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %38, i32 0, i32 0
  %40 = call i8* @test_bit(i32 %37, i32* %39)
  %41 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %42 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @BNX2X_Q_UPDATE_OUT_VLAN_REM_CHNG, align 4
  %44 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %45 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %44, i32 0, i32 0
  %46 = call i8* @test_bit(i32 %43, i32* %45)
  %47 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %48 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %47, i32 0, i32 14
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @BNX2X_Q_UPDATE_ANTI_SPOOF, align 4
  %50 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %51 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %50, i32 0, i32 0
  %52 = call i8* @test_bit(i32 %49, i32* %51)
  %53 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %54 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %53, i32 0, i32 13
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @BNX2X_Q_UPDATE_ANTI_SPOOF_CHNG, align 4
  %56 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %57 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %56, i32 0, i32 0
  %58 = call i8* @test_bit(i32 %55, i32* %57)
  %59 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %60 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %59, i32 0, i32 12
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE, align 4
  %62 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %63 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %62, i32 0, i32 0
  %64 = call i8* @test_bit(i32 %61, i32* %63)
  %65 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %66 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @BNX2X_Q_UPDATE_ACTIVATE_CHNG, align 4
  %68 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %69 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %68, i32 0, i32 0
  %70 = call i8* @test_bit(i32 %67, i32* %69)
  %71 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %72 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %71, i32 0, i32 10
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @BNX2X_Q_UPDATE_DEF_VLAN_EN, align 4
  %74 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %75 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %74, i32 0, i32 0
  %76 = call i8* @test_bit(i32 %73, i32* %75)
  %77 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %78 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @BNX2X_Q_UPDATE_DEF_VLAN_EN_CHNG, align 4
  %80 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %81 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %80, i32 0, i32 0
  %82 = call i8* @test_bit(i32 %79, i32* %81)
  %83 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %84 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @BNX2X_Q_UPDATE_SILENT_VLAN_REM_CHNG, align 4
  %86 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %87 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %86, i32 0, i32 0
  %88 = call i8* @test_bit(i32 %85, i32* %87)
  %89 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %90 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @BNX2X_Q_UPDATE_SILENT_VLAN_REM, align 4
  %92 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %93 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %92, i32 0, i32 0
  %94 = call i8* @test_bit(i32 %91, i32* %93)
  %95 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %96 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %98 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %102 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %104 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %108 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @BNX2X_Q_UPDATE_TX_SWITCHING, align 4
  %110 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %111 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %110, i32 0, i32 0
  %112 = call i8* @test_bit(i32 %109, i32* %111)
  %113 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %114 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @BNX2X_Q_UPDATE_TX_SWITCHING_CHNG, align 4
  %116 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %117 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %116, i32 0, i32 0
  %118 = call i8* @test_bit(i32 %115, i32* %117)
  %119 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %120 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* @BNX2X_Q_UPDATE_PTP_PKTS, align 4
  %122 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %123 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %122, i32 0, i32 0
  %124 = call i8* @test_bit(i32 %121, i32* %123)
  %125 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %126 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* @BNX2X_Q_UPDATE_PTP_PKTS_CHNG, align 4
  %128 = load %struct.bnx2x_queue_update_params*, %struct.bnx2x_queue_update_params** %7, align 8
  %129 = getelementptr inbounds %struct.bnx2x_queue_update_params, %struct.bnx2x_queue_update_params* %128, i32 0, i32 0
  %130 = call i8* @test_bit(i32 %127, i32* %129)
  %131 = load %struct.client_update_ramrod_data*, %struct.client_update_ramrod_data** %8, align 8
  %132 = getelementptr inbounds %struct.client_update_ramrod_data, %struct.client_update_ramrod_data* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
