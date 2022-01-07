; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_counter_value_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_counter_value_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_REG_RICNT_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLXSW_REG_RICNT_OPCODE_NOP = common dso_local global i32 0, align 4
@ricnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_rif_counter_value_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_rif* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_rif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @MLXSW_REG_RICNT_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @mlxsw_sp_rif_counter_valid_get(%struct.mlxsw_sp_rif* %20, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %55

28:                                               ; preds = %4
  %29 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32* @mlxsw_sp_rif_p_counter_get(%struct.mlxsw_sp_rif* %29, i32 %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %55

37:                                               ; preds = %28
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MLXSW_REG_RICNT_OPCODE_NOP, align 4
  %41 = call i32 @mlxsw_reg_ricnt_pack(i8* %19, i32 %39, i32 %40)
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ricnt, align 4
  %46 = call i32 @MLXSW_REG(i32 %45)
  %47 = call i32 @mlxsw_reg_query(i32 %44, i32 %46, i8* %19)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %55

52:                                               ; preds = %37
  %53 = call i32 @mlxsw_reg_ricnt_good_unicast_packets_get(i8* %19)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %52, %50, %34, %25
  %56 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_rif_counter_valid_get(%struct.mlxsw_sp_rif*, i32) #2

declare dso_local i32* @mlxsw_sp_rif_p_counter_get(%struct.mlxsw_sp_rif*, i32) #2

declare dso_local i32 @mlxsw_reg_ricnt_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ricnt_good_unicast_packets_get(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
