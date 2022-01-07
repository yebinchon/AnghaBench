; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_associate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_PERAR_LEN = common dso_local global i32 0, align 4
@ACL_MAX_REGIONS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@perar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_atcam_region_associate(%struct.mlxsw_sp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MLXSW_REG_PERAR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 3
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ACL_MAX_REGIONS, align 4
  %21 = call i32 @MLXSW_CORE_RES_GET(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mlxsw_reg_perar_pack(i8* %14, i32 %29, i32 %30)
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @perar, align 4
  %36 = call i32 @MLXSW_REG(i32 %35)
  %37 = call i32 @mlxsw_reg_write(i32 %34, i32 %36, i8* %14)
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #2

declare dso_local i32 @mlxsw_reg_perar_pack(i8*, i32, i32) #2

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
