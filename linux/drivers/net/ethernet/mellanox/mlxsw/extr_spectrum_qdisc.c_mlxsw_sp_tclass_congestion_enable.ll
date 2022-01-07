; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_tclass_congestion_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_tclass_congestion_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_CWTPM_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_CWTP_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_CWTP_DEFAULT_PROFILE = common dso_local global i32 0, align 4
@MLXSW_REG_CWTP_MIN_VALUE = common dso_local global i32 0, align 4
@cwtp = common dso_local global i32 0, align 4
@cwtpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32, i32, i32, i32, i32)* @mlxsw_sp_tclass_congestion_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_tclass_congestion_enable(%struct.mlxsw_sp_port* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.mlxsw_sp*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @MLXSW_REG_CWTPM_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @MLXSW_REG_CWTP_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 1
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %28, align 8
  store %struct.mlxsw_sp* %29, %struct.mlxsw_sp** %17, align 8
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @mlxsw_reg_cwtp_pack(i8* %26, i32 %32, i32 %33)
  %35 = load i32, i32* @MLXSW_REG_CWTP_DEFAULT_PROFILE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MLXSW_REG_CWTP_MIN_VALUE, align 4
  %38 = call i32 @roundup(i32 %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @MLXSW_REG_CWTP_MIN_VALUE, align 4
  %41 = call i32 @roundup(i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @mlxsw_reg_cwtp_profile_pack(i8* %26, i32 %35, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @cwtp, align 4
  %48 = call i32 @MLXSW_REG(i32 %47)
  %49 = call i32 @mlxsw_reg_write(i32 %46, i32 %48, i8* %26)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %6
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %68

54:                                               ; preds = %6
  %55 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MLXSW_REG_CWTP_DEFAULT_PROFILE, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mlxsw_reg_cwtpm_pack(i8* %23, i32 %57, i32 %58, i32 %59, i32 1, i32 %60)
  %62 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %17, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @cwtpm, align 4
  %66 = call i32 @MLXSW_REG(i32 %65)
  %67 = call i32 @mlxsw_reg_write(i32 %64, i32 %66, i8* %23)
  store i32 %67, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %68

68:                                               ; preds = %54, %52
  %69 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_cwtp_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_cwtp_profile_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_cwtpm_pack(i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
