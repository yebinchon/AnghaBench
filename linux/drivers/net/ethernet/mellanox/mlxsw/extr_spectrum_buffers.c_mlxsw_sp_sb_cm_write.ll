; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_cm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_cm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_sb_pool_des* }
%struct.mlxsw_sp_sb_pool_des = type { i32, i32 }
%struct.mlxsw_sp_sb_cm = type { i64, i8*, i8* }

@MLXSW_REG_SBCM_LEN = common dso_local global i32 0, align 4
@sbcm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32, i8*, i8*, i32, i64)* @mlxsw_sp_sb_cm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_cm_write(%struct.mlxsw_sp* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.mlxsw_sp_sb_pool_des*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %25, align 8
  %27 = load i64, i64* %15, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %26, i64 %27
  store %struct.mlxsw_sp_sb_pool_des* %28, %struct.mlxsw_sp_sb_pool_des** %16, align 8
  %29 = load i32, i32* @MLXSW_REG_SBCM_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %16, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %16, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlxsw_reg_sbcm_pack(i8* %32, i32 %33, i32 %34, i32 %37, i8* %38, i8* %39, i32 %40, i32 %43)
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @sbcm, align 4
  %49 = call i32 @MLXSW_REG(i32 %48)
  %50 = call i32 @mlxsw_reg_write(i32 %47, i32 %49, i8* %32)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %7
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %8, align 4
  store i32 1, i32* %21, align 4
  br label %91

55:                                               ; preds = %7
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %16, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @mlxsw_sp_sb_cm_exists(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %55
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %66, i32 %71)
  store i8* %72, i8** %13, align 8
  br label %73

73:                                               ; preds = %65, %62
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.mlxsw_sp_sb_pool_des*, %struct.mlxsw_sp_sb_pool_des** %16, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_sb_pool_des, %struct.mlxsw_sp_sb_pool_des* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp* %74, i32 %75, i32 %76, i32 %79)
  store %struct.mlxsw_sp_sb_cm* %80, %struct.mlxsw_sp_sb_cm** %19, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %19, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %73, %55
  store i32 0, i32* %8, align 4
  store i32 1, i32* %21, align 4
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sbcm_pack(i8*, i32, i32, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i64 @mlxsw_sp_sb_cm_exists(i32, i32) #2

declare dso_local i8* @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i32) #2

declare dso_local %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
