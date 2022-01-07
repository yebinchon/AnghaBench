; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_cpu_policers_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_cpu_policers_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }

@MLXSW_REG_QPCR_LEN = common dso_local global i32 0, align 4
@MAX_CPU_POLICERS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_REG_QPCR_IR_UNITS_M = common dso_local global i32 0, align 4
@qpcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_sp_cpu_policers_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_cpu_policers_set(%struct.mlxsw_core* %0) #0 {
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
  %14 = load i32, i32* @MLXSW_REG_QPCR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %19 = load i32, i32* @MAX_CPU_POLICERS, align 4
  %20 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %63

25:                                               ; preds = %1
  %26 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %27 = load i32, i32* @MAX_CPU_POLICERS, align 4
  %28 = call i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @MLXSW_REG_QPCR_IR_UNITS_M, align 4
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %59, %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %42 [
    i32 128, label %36
    i32 139, label %36
    i32 137, label %36
    i32 135, label %36
    i32 134, label %36
    i32 129, label %36
    i32 138, label %36
    i32 143, label %37
    i32 141, label %37
    i32 146, label %38
    i32 147, label %38
    i32 145, label %38
    i32 144, label %38
    i32 130, label %38
    i32 131, label %38
    i32 140, label %38
    i32 136, label %38
    i32 142, label %39
    i32 133, label %40
    i32 132, label %41
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34, %34
  store i32 128, i32* %10, align 4
  store i32 7, i32* %9, align 4
  br label %43

37:                                               ; preds = %34, %34
  store i32 16384, i32* %10, align 4
  store i32 10, i32* %9, align 4
  br label %43

38:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34
  store i32 1024, i32* %10, align 4
  store i32 7, i32* %9, align 4
  br label %43

39:                                               ; preds = %34
  store i32 1024, i32* %10, align 4
  store i32 7, i32* %9, align 4
  br label %43

40:                                               ; preds = %34
  store i32 24576, i32* %10, align 4
  store i32 12, i32* %9, align 4
  br label %43

41:                                               ; preds = %34
  store i32 19456, i32* %10, align 4
  store i32 12, i32* %9, align 4
  br label %43

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %41, %40, %39, %38, %37, %36
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @mlxsw_reg_qpcr_pack(i8* %17, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %51 = load i32, i32* @qpcr, align 4
  %52 = call i32 @MLXSW_REG(i32 %51)
  %53 = call i32 @mlxsw_reg_write(%struct.mlxsw_core* %50, i32 %52, i8* %17)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %63

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %30

62:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %56, %22
  %64 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #2

declare dso_local i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #2

declare dso_local i32 @mlxsw_reg_qpcr_pack(i8*, i32, i32, i32, i32, i32) #2

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
