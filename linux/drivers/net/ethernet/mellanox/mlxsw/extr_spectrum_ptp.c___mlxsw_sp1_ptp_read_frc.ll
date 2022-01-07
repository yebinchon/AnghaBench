; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c___mlxsw_sp1_ptp_read_frc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c___mlxsw_sp1_ptp_read_frc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_clock = type { %struct.mlxsw_core* }
%struct.mlxsw_core = type { i32 }
%struct.ptp_system_timestamp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_ptp_clock*, %struct.ptp_system_timestamp*)* @__mlxsw_sp1_ptp_read_frc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp1_ptp_read_frc(%struct.mlxsw_sp_ptp_clock* %0, %struct.ptp_system_timestamp* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_ptp_clock*, align 8
  %4 = alloca %struct.ptp_system_timestamp*, align 8
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_sp_ptp_clock* %0, %struct.mlxsw_sp_ptp_clock** %3, align 8
  store %struct.ptp_system_timestamp* %1, %struct.ptp_system_timestamp** %4, align 8
  %9 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  store %struct.mlxsw_core* %11, %struct.mlxsw_core** %5, align 8
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %13 = call i64 @mlxsw_core_read_frc_h(%struct.mlxsw_core* %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %15 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %14)
  %16 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %17 = call i64 @mlxsw_core_read_frc_l(%struct.mlxsw_core* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %19 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %18)
  %20 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %21 = call i64 @mlxsw_core_read_frc_h(%struct.mlxsw_core* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %27 = call i32 @ptp_read_system_prets(%struct.ptp_system_timestamp* %26)
  %28 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %29 = call i64 @mlxsw_core_read_frc_l(%struct.mlxsw_core* %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.ptp_system_timestamp*, %struct.ptp_system_timestamp** %4, align 8
  %31 = call i32 @ptp_read_system_postts(%struct.ptp_system_timestamp* %30)
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 32
  %38 = or i32 %34, %37
  ret i32 %38
}

declare dso_local i64 @mlxsw_core_read_frc_h(%struct.mlxsw_core*) #1

declare dso_local i32 @ptp_read_system_prets(%struct.ptp_system_timestamp*) #1

declare dso_local i64 @mlxsw_core_read_frc_l(%struct.mlxsw_core*) #1

declare dso_local i32 @ptp_read_system_postts(%struct.ptp_system_timestamp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
