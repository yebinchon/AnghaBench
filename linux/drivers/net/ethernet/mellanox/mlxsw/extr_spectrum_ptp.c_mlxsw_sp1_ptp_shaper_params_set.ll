; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_shaper_params_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_shaper_params_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_ptp_shaper_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_QPSC_LEN = common dso_local global i32 0, align 4
@MLXSW_SP1_PTP_SHAPER_PARAMS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_shaper_params = common dso_local global %struct.mlxsw_sp1_ptp_shaper_params* null, align 8
@qpsc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp1_ptp_shaper_params_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_ptp_shaper_params_set(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp1_ptp_shaper_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %10 = load i32, i32* @MLXSW_REG_QPSC_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MLXSW_SP1_PTP_SHAPER_PARAMS_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** @mlxsw_sp1_ptp_shaper_params, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %19, i64 %21
  store %struct.mlxsw_sp1_ptp_shaper_params* %22, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %23 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxsw_sp1_ptp_shaper_params*, %struct.mlxsw_sp1_ptp_shaper_params** %4, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp1_ptp_shaper_params, %struct.mlxsw_sp1_ptp_shaper_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mlxsw_reg_qpsc_pack(i8* %13, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @qpsc, align 4
  %52 = call i32 @MLXSW_REG(i32 %51)
  %53 = call i32 @mlxsw_reg_write(i32 %50, i32 %52, i8* %13)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %18
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

58:                                               ; preds = %18
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %14

62:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_qpsc_pack(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

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
