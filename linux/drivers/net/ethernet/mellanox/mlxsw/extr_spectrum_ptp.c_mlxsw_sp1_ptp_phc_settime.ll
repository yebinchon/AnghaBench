; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_phc_settime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_phc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ptp_clock = type { i32, i32, %struct.mlxsw_core* }
%struct.mlxsw_core = type { i32 }

@MLXSW_REG_MTUTC_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MTPPS_LEN = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@mtpps = common dso_local global i32 0, align 4
@MLXSW_REG_MTUTC_OPERATION_SET_TIME_AT_NEXT_SEC = common dso_local global i32 0, align 4
@mtutc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_ptp_clock*, i32)* @mlxsw_sp1_ptp_phc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_ptp_phc_settime(%struct.mlxsw_sp_ptp_clock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_ptp_clock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp_ptp_clock* %0, %struct.mlxsw_sp_ptp_clock** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %15, i32 0, i32 2
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %16, align 8
  store %struct.mlxsw_core* %17, %struct.mlxsw_core** %6, align 8
  %18 = load i32, i32* @MLXSW_REG_MTUTC_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MLXSW_REG_MTPPS_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NSEC_PER_SEC, align 4
  %27 = call i32 @div_u64(i32 %25, i32 %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NSEC_PER_SEC, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %4, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %35, i32 0, i32 1
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @mlxsw_sp1_ptp_ns2cycles(i32* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mlxsw_sp_ptp_clock*, %struct.mlxsw_sp_ptp_clock** %4, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_ptp_clock, %struct.mlxsw_sp_ptp_clock* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlxsw_reg_mtpps_vpin_pack(i8* %24, i32 %42)
  %44 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %45 = load i32, i32* @mtpps, align 4
  %46 = call i32 @MLXSW_REG(i32 %45)
  %47 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %44, i32 %46, i8* %24)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %60

52:                                               ; preds = %2
  %53 = load i32, i32* @MLXSW_REG_MTUTC_OPERATION_SET_TIME_AT_NEXT_SEC, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mlxsw_reg_mtutc_pack(i8* %21, i32 %53, i32 0, i32 %54)
  %56 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %57 = load i32, i32* @mtutc, align 4
  %58 = call i32 @MLXSW_REG(i32 %57)
  %59 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %56, i32 %58, i8* %21)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %52, %50
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @div_u64(i32, i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @mlxsw_sp1_ptp_ns2cycles(i32*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @mlxsw_reg_mtpps_vpin_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(%struct.mlxsw_core*, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_mtutc_pack(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
