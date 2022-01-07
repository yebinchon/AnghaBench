; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_rif_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_rif_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_RITR_LEN = common dso_local global i32 0, align 4
@ritr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32)* @mlxsw_sp_router_rif_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_rif_disable(%struct.mlxsw_sp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MLXSW_REG_RITR_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @mlxsw_reg_ritr_rif_pack(i8* %13, i32 %14)
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ritr, align 4
  %20 = call i32 @MLXSW_REG(i32 %19)
  %21 = call i32 @mlxsw_reg_query(i32 %18, i32 %20, i8* %13)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %34

26:                                               ; preds = %2
  %27 = call i32 @mlxsw_reg_ritr_enable_set(i8* %13, i32 0)
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ritr, align 4
  %32 = call i32 @MLXSW_REG(i32 %31)
  %33 = call i32 @mlxsw_reg_write(i32 %30, i32 %32, i8* %13)
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ritr_rif_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ritr_enable_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
