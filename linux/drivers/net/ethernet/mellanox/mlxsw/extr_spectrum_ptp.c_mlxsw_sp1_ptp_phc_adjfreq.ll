; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_phc_adjfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_phc_adjfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_clock = type { %struct.mlxsw_core* }
%struct.mlxsw_core = type { i32 }

@MLXSW_REG_MTUTC_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MTUTC_OPERATION_ADJUST_FREQ = common dso_local global i32 0, align 4
@mtutc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_ptp_clock*, i32)* @mlxsw_sp1_ptp_phc_adjfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_ptp_phc_adjfreq(%struct.mlxsw_sp_ptp_clock* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_ptp_clock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.mlxsw_sp_ptp_clock* %0, %struct.mlxsw_sp_ptp_clock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_core*, %struct.mlxsw_core** %9, align 8
  store %struct.mlxsw_core* %10, %struct.mlxsw_core** %5, align 8
  %11 = load i32, i32* @MLXSW_REG_MTUTC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MLXSW_REG_MTUTC_OPERATION_ADJUST_FREQ, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @mlxsw_reg_mtutc_pack(i8* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %19 = load i32, i32* @mtutc, align 4
  %20 = call i32 @MLXSW_REG(i32 %19)
  %21 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %18, i32 %20, i8* %14)
  %22 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %22)
  ret i32 %21
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mtutc_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(%struct.mlxsw_core*, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
