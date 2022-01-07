; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_mtmp_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_mtmp_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i8*)* @mlxsw_reg_mtmp_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_mtmp_unpack(i8* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @mlxsw_reg_mtmp_temperature_get(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @MLXSW_REG_MTMP_TEMP_TO_MC(i32 %15)
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @mlxsw_reg_mtmp_max_temperature_get(i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @MLXSW_REG_MTMP_TEMP_TO_MC(i32 %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @mlxsw_reg_mtmp_sensor_name_memcpy_from(i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @mlxsw_reg_mtmp_temperature_get(i8*) #1

declare dso_local i32 @MLXSW_REG_MTMP_TEMP_TO_MC(i32) #1

declare dso_local i32 @mlxsw_reg_mtmp_max_temperature_get(i8*) #1

declare dso_local i32 @mlxsw_reg_mtmp_sensor_name_memcpy_from(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
