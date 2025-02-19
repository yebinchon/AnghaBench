; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_sb_pool_des* }
%struct.mlxsw_sp_sb_pool_des = type { i32, i32 }
%struct.mlxsw_sp_sb_pm = type { i8*, i8* }

@MLXSW_REG_SBPM_LEN = common dso_local global i32 0, align 4
@sbpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i64, i8*, i8*)* @mlxsw_sp_sb_pm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_pm_write(%struct.mlxsw_sp* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mlxsw_sp_sb_pool_des*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mlxsw_sp_sb_pm*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %22, i64 %23
  store %struct.mlxsw_sp_sb_pool_des* %24, %struct.mlxsw_sp_sb_pool_des** %12, align 8
  %25 = load i32, i32* @MLXSW_REG_SBPM_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %12, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %12, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @mlxsw_reg_sbpm_pack(i8* %28, i32 %29, i32 %32, i32 %35, i32 0, i8* %36, i8* %37)
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @sbpm, align 4
  %43 = call i32 @MLXSW_REG(i32 %42)
  %44 = call i32 @mlxsw_reg_write(i32 %41, i32 %43, i8* %28)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %60

49:                                               ; preds = %5
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call %struct.mlxsw_sp_sb_pm* @mlxsw_sp_sb_pm_get(%struct.mlxsw_sp* %50, i32 %51, i64 %52)
  store %struct.mlxsw_sp_sb_pm* %53, %struct.mlxsw_sp_sb_pm** %15, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %15, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %15, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %60

60:                                               ; preds = %49, %47
  %61 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sbpm_pack(i8*, i32, i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local %struct.mlxsw_sp_sb_pm* @mlxsw_sp_sb_pm_get(%struct.mlxsw_sp*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
