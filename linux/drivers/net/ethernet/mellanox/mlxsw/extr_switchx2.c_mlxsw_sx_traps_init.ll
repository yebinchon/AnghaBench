; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_traps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_traps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_HTGT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_TRAP_GROUP_SX2_RX = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_INVALID_POLICER = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_DEFAULT_TC = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_RX = common dso_local global i32 0, align 4
@htgt = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_TRAP_GROUP_SX2_CTRL = common dso_local global i32 0, align 4
@MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_CTRL = common dso_local global i32 0, align 4
@mlxsw_sx_listener = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx*)* @mlxsw_sx_traps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_traps_init(%struct.mlxsw_sx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sx* %0, %struct.mlxsw_sx** %3, align 8
  %9 = load i32, i32* @MLXSW_REG_HTGT_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @MLXSW_REG_HTGT_TRAP_GROUP_SX2_RX, align 4
  %14 = load i32, i32* @MLXSW_REG_HTGT_INVALID_POLICER, align 4
  %15 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_PRIORITY, align 4
  %16 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_TC, align 4
  %17 = call i32 @mlxsw_reg_htgt_pack(i8* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_RX, align 4
  %19 = call i32 @mlxsw_reg_htgt_local_path_rdq_set(i8* %12, i32 %18)
  %20 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @htgt, align 4
  %24 = call i32 @MLXSW_REG(i32 %23)
  %25 = call i32 @mlxsw_reg_write(i32 %22, i32 %24, i8* %12)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %93

30:                                               ; preds = %1
  %31 = load i32, i32* @MLXSW_REG_HTGT_TRAP_GROUP_SX2_CTRL, align 4
  %32 = load i32, i32* @MLXSW_REG_HTGT_INVALID_POLICER, align 4
  %33 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_PRIORITY, align 4
  %34 = load i32, i32* @MLXSW_REG_HTGT_DEFAULT_TC, align 4
  %35 = call i32 @mlxsw_reg_htgt_pack(i8* %12, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @MLXSW_REG_HTGT_LOCAL_PATH_RDQ_SX2_CTRL, align 4
  %37 = call i32 @mlxsw_reg_htgt_local_path_rdq_set(i8* %12, i32 %36)
  %38 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @htgt, align 4
  %42 = call i32 @MLXSW_REG(i32 %41)
  %43 = call i32 @mlxsw_reg_write(i32 %40, i32 %42, i8* %12)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %93

48:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** @mlxsw_sx_listener, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @mlxsw_sx_listener, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %63 = call i32 @mlxsw_core_trap_register(i32 %57, i32* %61, %struct.mlxsw_sx* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %72

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %49

71:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %93

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %88, %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** @mlxsw_sx_listener, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %87 = call i32 @mlxsw_core_trap_unregister(i32 %81, i32* %85, %struct.mlxsw_sx* %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %75

91:                                               ; preds = %75
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %71, %46, %28
  %94 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_htgt_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_htgt_local_path_rdq_set(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mlxsw_core_trap_register(i32, i32*, %struct.mlxsw_sx*) #2

declare dso_local i32 @mlxsw_core_trap_unregister(i32, i32*, %struct.mlxsw_sx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
