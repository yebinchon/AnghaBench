; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_hwtstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_hwtstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp1_ptp_hwtstamp_set(%struct.mlxsw_sp_port* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  %10 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %11 = call i32 @mlxsw_sp_ptp_get_message_types(%struct.hwtstamp_config* %10, i8** %7, i8** %8, i32* %6)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @mlxsw_sp1_ptp_mtpppc_update(%struct.mlxsw_sp_port* %17, i8* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %16
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %30 = bitcast %struct.hwtstamp_config* %28 to i8*
  %31 = bitcast %struct.hwtstamp_config* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %41 = call i32 @mlxsw_sp1_ptp_port_shaper_check(%struct.mlxsw_sp_port* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %49 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %44, %23, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mlxsw_sp_ptp_get_message_types(%struct.hwtstamp_config*, i8**, i8**, i32*) #1

declare dso_local i32 @mlxsw_sp1_ptp_mtpppc_update(%struct.mlxsw_sp_port*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_sp1_ptp_port_shaper_check(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
