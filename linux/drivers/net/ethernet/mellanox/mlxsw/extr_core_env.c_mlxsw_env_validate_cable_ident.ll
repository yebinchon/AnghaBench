; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_env.c_mlxsw_env_validate_cable_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_env.c_mlxsw_env_validate_cable_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }

@MLXSW_REG_MCIA_EEPROM_SIZE = common dso_local global i32 0, align 4
@MLXSW_REG_MCIA_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_MCIA_PAGE0_LO_OFF = common dso_local global i32 0, align 4
@MLXSW_REG_MCIA_I2C_ADDR_LOW = common dso_local global i32 0, align 4
@mcia = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, i32, i32*)* @mlxsw_env_validate_cable_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_env_validate_cable_ident(%struct.mlxsw_core* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MLXSW_REG_MCIA_EEPROM_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @MLXSW_REG_MCIA_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MLXSW_REG_MCIA_PAGE0_LO_OFF, align 4
  %23 = load i32, i32* @MLXSW_REG_MCIA_I2C_ADDR_LOW, align 4
  %24 = call i32 @mlxsw_reg_mcia_pack(i8* %20, i32 %21, i32 0, i32 %22, i32 0, i32 1, i32 %23)
  %25 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %26 = load i32, i32* @mcia, align 4
  %27 = call i32 @MLXSW_REG(i32 %26)
  %28 = call i32 @mlxsw_reg_query(%struct.mlxsw_core* %25, i32 %27, i8* %20)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %47

33:                                               ; preds = %3
  %34 = call i32 @mlxsw_reg_mcia_eeprom_memcpy_from(i8* %20, i8* %17)
  %35 = getelementptr inbounds i8, i8* %17, i64 0
  %36 = load i8, i8* %35, align 16
  store i8 %36, i8* %11, align 1
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %43 [
    i32 128, label %39
    i32 132, label %41
    i32 129, label %41
    i32 131, label %41
    i32 130, label %41
  ]

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  br label %46

41:                                               ; preds = %33, %33, %33, %33
  %42 = load i32*, i32** %7, align 8
  store i32 1, i32* %42, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %47

46:                                               ; preds = %41, %39
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %46, %43, %31
  %48 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mcia_pack(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(%struct.mlxsw_core*, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_mcia_eeprom_memcpy_from(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
