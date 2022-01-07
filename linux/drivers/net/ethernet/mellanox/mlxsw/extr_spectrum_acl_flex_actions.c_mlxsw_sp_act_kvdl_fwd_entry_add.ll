; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_flex_actions.c_mlxsw_sp_act_kvdl_fwd_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_flex_actions.c_mlxsw_sp_act_kvdl_fwd_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_PPBS_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_KVDL_ENTRY_TYPE_PBS = common dso_local global i32 0, align 4
@ppbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @mlxsw_sp_act_kvdl_fwd_entry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_act_kvdl_fwd_entry_add(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.mlxsw_sp*
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %8, align 8
  %16 = load i32, i32* @MLXSW_REG_PPBS_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %21 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_PBS, align 4
  %22 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %20, i32 %21, i32 1, i32* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlxsw_reg_ppbs_pack(i8* %19, i32 %28, i32 %29)
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ppbs, align 4
  %35 = call i32 @MLXSW_REG(i32 %34)
  %36 = call i32 @mlxsw_reg_write(i32 %33, i32 %35, i8* %19)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %43

40:                                               ; preds = %27
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %49

43:                                               ; preds = %39
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %45 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_PBS, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp* %44, i32 %45, i32 1, i32 %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %49

49:                                               ; preds = %43, %40, %25
  %50 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i32, i32*) #2

declare dso_local i32 @mlxsw_reg_ppbs_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_sp_kvdl_free(%struct.mlxsw_sp*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
