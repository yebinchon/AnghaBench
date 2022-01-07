; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_mms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_mms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_mm* }
%struct.mlxsw_sp_sb_pool_des = type { i32 }
%struct.mlxsw_sp_sb_mm = type { i64, i32, i32 }

@MLXSW_REG_SBMM_LEN = common dso_local global i32 0, align 4
@sbmm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_sb_mms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_mms_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_sb_pool_des*, align 8
  %9 = alloca %struct.mlxsw_sp_sb_mm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %12 = load i32, i32* @MLXSW_REG_SBMM_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %67, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %16
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.mlxsw_sp_sb_mm*, %struct.mlxsw_sp_sb_mm** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlxsw_sp_sb_mm, %struct.mlxsw_sp_sb_mm* %29, i64 %31
  store %struct.mlxsw_sp_sb_mm* %32, %struct.mlxsw_sp_sb_mm** %9, align 8
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %36, align 8
  %38 = load %struct.mlxsw_sp_sb_mm*, %struct.mlxsw_sp_sb_mm** %9, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_sb_mm, %struct.mlxsw_sp_sb_mm* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %37, i64 %40
  store %struct.mlxsw_sp_sb_pool_des* %41, %struct.mlxsw_sp_sb_pool_des** %8, align 8
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %43 = load %struct.mlxsw_sp_sb_mm*, %struct.mlxsw_sp_sb_mm** %9, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_sb_mm, %struct.mlxsw_sp_sb_mm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.mlxsw_sp_sb_mm*, %struct.mlxsw_sp_sb_mm** %9, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_sb_mm, %struct.mlxsw_sp_sb_mm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %8, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mlxsw_reg_sbmm_pack(i8* %15, i32 %47, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @sbmm, align 4
  %60 = call i32 @MLXSW_REG(i32 %59)
  %61 = call i32 @mlxsw_reg_write(i32 %58, i32 %60, i8* %15)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %24
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %71

66:                                               ; preds = %24
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %16

70:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @mlxsw_reg_sbmm_pack(i8*, i32, i32, i32, i32) #2

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
