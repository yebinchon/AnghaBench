; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_get_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@MLXSW_REG_PPCNT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_IEEE_8023_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.rtnl_link_stats64*)* @mlxsw_sp_port_get_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_get_hw_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load i32, i32* @MLXSW_REG_PPCNT_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load i32, i32* @MLXSW_REG_PPCNT_IEEE_8023_CNT, align 4
  %14 = call i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device* %12, i32 %13, i32 0, i8* %11)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %60

18:                                               ; preds = %2
  %19 = call i32 @mlxsw_reg_ppcnt_a_frames_transmitted_ok_get(i8* %11)
  %20 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %21 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = call i32 @mlxsw_reg_ppcnt_a_frames_received_ok_get(i8* %11)
  %23 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %24 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = call i32 @mlxsw_reg_ppcnt_a_octets_transmitted_ok_get(i8* %11)
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = call i32 @mlxsw_reg_ppcnt_a_octets_received_ok_get(i8* %11)
  %29 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %30 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = call i32 @mlxsw_reg_ppcnt_a_multicast_frames_received_ok_get(i8* %11)
  %32 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = call i64 @mlxsw_reg_ppcnt_a_frame_check_sequence_errors_get(i8* %11)
  %35 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %36 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = call i64 @mlxsw_reg_ppcnt_a_alignment_errors_get(i8* %11)
  %38 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %39 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = call i64 @mlxsw_reg_ppcnt_a_in_range_length_errors_get(i8* %11)
  %41 = call i64 @mlxsw_reg_ppcnt_a_out_of_range_length_field_get(i8* %11)
  %42 = add nsw i64 %40, %41
  %43 = call i64 @mlxsw_reg_ppcnt_a_frame_too_long_errors_get(i8* %11)
  %44 = add nsw i64 %42, %43
  %45 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %46 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %48 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %55 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %18, %17
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device*, i32, i32, i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_a_frames_transmitted_ok_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_a_frames_received_ok_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_a_octets_transmitted_ok_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_a_octets_received_ok_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_a_multicast_frames_received_ok_get(i8*) #2

declare dso_local i64 @mlxsw_reg_ppcnt_a_frame_check_sequence_errors_get(i8*) #2

declare dso_local i64 @mlxsw_reg_ppcnt_a_alignment_errors_get(i8*) #2

declare dso_local i64 @mlxsw_reg_ppcnt_a_in_range_length_errors_get(i8*) #2

declare dso_local i64 @mlxsw_reg_ppcnt_a_out_of_range_length_field_get(i8*) #2

declare dso_local i64 @mlxsw_reg_ppcnt_a_frame_too_long_errors_get(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
