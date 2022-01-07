; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_trap_groups_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_trap_groups_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }

@MLXSW_REG_HTGT_LEN = common dso_local global i32 0, align 4
@MAX_TRAP_GROUPS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAX_CPU_POLICERS = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_DEFAULT_TC = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_INVALID_POLICER = common dso_local global i32 0, align 4
@htgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_sp_trap_groups_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_trap_groups_set(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %14 = load i32, i32* @MLXSW_REG_HTGT_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %19 = load i32, i32* @MAX_TRAP_GROUPS, align 4
  %20 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %79

25:                                               ; preds = %1
  %26 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %27 = load i32, i32* @MAX_TRAP_GROUPS, align 4
  %28 = call i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %30 = load i32, i32* @MAX_CPU_POLICERS, align 4
  %31 = call i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %75, %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %48 [
    i32 128, label %39
    i32 139, label %39
    i32 137, label %39
    i32 135, label %39
    i32 134, label %39
    i32 133, label %39
    i32 147, label %40
    i32 146, label %40
    i32 143, label %41
    i32 142, label %41
    i32 141, label %41
    i32 148, label %42
    i32 140, label %42
    i32 129, label %42
    i32 132, label %42
    i32 144, label %43
    i32 130, label %43
    i32 131, label %43
    i32 136, label %43
    i32 138, label %43
    i32 145, label %44
  ]

39:                                               ; preds = %36, %36, %36, %36, %36, %36
  store i32 5, i32* %9, align 4
  store i32 5, i32* %10, align 4
  br label %49

40:                                               ; preds = %36, %36
  store i32 4, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %49

41:                                               ; preds = %36, %36, %36
  store i32 3, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %49

42:                                               ; preds = %36, %36, %36, %36
  store i32 2, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %49

43:                                               ; preds = %36, %36, %36, %36, %36
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %49

44:                                               ; preds = %36
  %45 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_PRIORITY, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_TC, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @MLXSW_REG_HTGT_INVALID_POLICER, align 4
  store i32 %47, i32* %11, align 4
  br label %49

48:                                               ; preds = %36
  br label %75

49:                                               ; preds = %44, %43, %42, %41, %40, %39
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @MLXSW_REG_HTGT_INVALID_POLICER, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %79

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mlxsw_reg_htgt_pack(i8* %17, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %67 = load i32, i32* @htgt, align 4
  %68 = call i32 @MLXSW_REG(i32 %67)
  %69 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %66, i32 %68, i8* %17)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %79

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %32

78:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %78, %72, %57, %22
  %80 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #2

declare dso_local i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #2

declare dso_local i32 @mlxsw_reg_htgt_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(%struct.mlxsw_core*, i32, i8*) #2

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
