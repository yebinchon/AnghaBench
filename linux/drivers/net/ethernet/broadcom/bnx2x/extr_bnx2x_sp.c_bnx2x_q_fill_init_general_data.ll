; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_init_general_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_init_general_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_sp_obj = type { i32, i32 }
%struct.bnx2x_general_setup_params = type { i32, i32, i32, i32, i32 }
%struct.client_init_general_data = type { i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32 }

@BNX2X_Q_FLG_STATS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ZERO_STATS = common dso_local global i32 0, align 4
@DISABLE_STATISTIC_COUNTER_ID_VALUE = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_FCOE = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ACTIVE = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_NW = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"flags: active %d, cos %d, stats en %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_general_setup_params*, %struct.client_init_general_data*, i64*)* @bnx2x_q_fill_init_general_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_q_fill_init_general_data(%struct.bnx2x* %0, %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_general_setup_params* %2, %struct.client_init_general_data* %3, i64* %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %8 = alloca %struct.bnx2x_general_setup_params*, align 8
  %9 = alloca %struct.client_init_general_data*, align 8
  %10 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_queue_sp_obj** %7, align 8
  store %struct.bnx2x_general_setup_params* %2, %struct.bnx2x_general_setup_params** %8, align 8
  store %struct.client_init_general_data* %3, %struct.client_init_general_data** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %7, align 8
  %12 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %15 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @BNX2X_Q_FLG_STATS, align 4
  %17 = load i64*, i64** %10, align 8
  %18 = call i8* @test_bit(i32 %16, i64* %17)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %8, align 8
  %22 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %25 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %27 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @BNX2X_Q_FLG_ZERO_STATS, align 4
  %29 = load i64*, i64** %10, align 8
  %30 = call i8* @test_bit(i32 %28, i64* %29)
  %31 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %32 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  br label %37

33:                                               ; preds = %5
  %34 = load i32, i32* @DISABLE_STATISTIC_COUNTER_ID_VALUE, align 4
  %35 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %36 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %20
  %38 = load i32, i32* @BNX2X_Q_FLG_FCOE, align 4
  %39 = load i64*, i64** %10, align 8
  %40 = call i8* @test_bit(i32 %38, i64* %39)
  %41 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %42 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @BNX2X_Q_FLG_ACTIVE, align 4
  %44 = load i64*, i64** %10, align 8
  %45 = call i8* @test_bit(i32 %43, i64* %44)
  %46 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %47 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %8, align 8
  %49 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %52 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %8, align 8
  %54 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %58 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %7, align 8
  %60 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %63 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %8, align 8
  %65 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %68 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @BNX2X_Q_FLG_FCOE, align 4
  %70 = load i64*, i64** %10, align 8
  %71 = call i8* @test_bit(i32 %69, i64* %70)
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %37
  %74 = load i32, i32* @LLFC_TRAFFIC_TYPE_FCOE, align 4
  br label %77

75:                                               ; preds = %37
  %76 = load i32, i32* @LLFC_TRAFFIC_TYPE_NW, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %80 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.bnx2x_general_setup_params*, %struct.bnx2x_general_setup_params** %8, align 8
  %82 = getelementptr inbounds %struct.bnx2x_general_setup_params, %struct.bnx2x_general_setup_params* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %85 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @BNX2X_MSG_SP, align 4
  %87 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %88 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %91 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.client_init_general_data*, %struct.client_init_general_data** %9, align 8
  %94 = getelementptr inbounds %struct.client_init_general_data, %struct.client_init_general_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DP(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %92, i32 %95)
  ret void
}

declare dso_local i8* @test_bit(i32, i64*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DP(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
