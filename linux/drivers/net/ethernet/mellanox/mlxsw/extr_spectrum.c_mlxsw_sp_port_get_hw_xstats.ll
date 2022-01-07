; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_hw_xstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_hw_xstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_port_xstats = type { i32*, i32*, i32*, i32*, i32*, i32 }

@MLXSW_REG_PPCNT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_EXT_CNT = common dso_local global i32 0, align 4
@TC_MAX_QUEUE = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_TC_CONG_TC = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_TC_CNT = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_PRIO_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.mlxsw_sp_port_xstats*)* @mlxsw_sp_port_get_hw_xstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_port_get_hw_xstats(%struct.net_device* %0, %struct.mlxsw_sp_port_xstats* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlxsw_sp_port_xstats*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.mlxsw_sp_port_xstats* %1, %struct.mlxsw_sp_port_xstats** %4, align 8
  %9 = load i32, i32* @MLXSW_REG_PPCNT_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load i32, i32* @MLXSW_REG_PPCNT_EXT_CNT, align 4
  %15 = call i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device* %13, i32 %14, i32 0, i8* %12)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 @mlxsw_reg_ppcnt_ecn_marked_get(i8* %12)
  %20 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %65, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @TC_MAX_QUEUE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* @MLXSW_REG_PPCNT_TC_CONG_TC, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device* %28, i32 %29, i32 %30, i8* %12)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = call i32 @mlxsw_reg_ppcnt_wred_discard_get(i8* %12)
  %36 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %4, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32, i32* @MLXSW_REG_PPCNT_TC_CNT, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device* %43, i32 %44, i32 %45, i8* %12)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %65

50:                                               ; preds = %42
  %51 = call i32 @mlxsw_reg_ppcnt_tc_transmit_queue_get(i8* %12)
  %52 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %4, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = call i32 @mlxsw_reg_ppcnt_tc_no_buffer_discard_uc_get(i8* %12)
  %59 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %4, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %50, %49
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %23

68:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %96, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load i32, i32* @MLXSW_REG_PPCNT_PRIO_CNT, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device* %74, i32 %75, i32 %76, i8* %12)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %96

81:                                               ; preds = %73
  %82 = call i32 @mlxsw_reg_ppcnt_tx_frames_get(i8* %12)
  %83 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %4, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = call i32 @mlxsw_reg_ppcnt_tx_octets_get(i8* %12)
  %90 = load %struct.mlxsw_sp_port_xstats*, %struct.mlxsw_sp_port_xstats** %4, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp_port_xstats, %struct.mlxsw_sp_port_xstats* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %81, %80
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %69

99:                                               ; preds = %69
  %100 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device*, i32, i32, i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_ecn_marked_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_wred_discard_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_tc_transmit_queue_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_tc_no_buffer_discard_uc_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_tx_frames_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_tx_octets_get(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
