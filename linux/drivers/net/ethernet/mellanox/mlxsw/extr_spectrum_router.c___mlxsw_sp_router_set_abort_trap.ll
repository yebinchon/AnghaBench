; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_router_set_abort_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_router_set_abort_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_vr* }
%struct.mlxsw_sp_vr = type { i32 }

@MLXSW_REG_RALTA_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RALST_LEN = common dso_local global i32 0, align 4
@ralta = common dso_local global i32 0, align 4
@ralst = common dso_local global i32 0, align 4
@MAX_VRS = common dso_local global i32 0, align 4
@MLXSW_REG_RALTB_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RALUE_LEN = common dso_local global i32 0, align 4
@raltb = common dso_local global i32 0, align 4
@MLXSW_REG_RALUE_OP_WRITE_WRITE = common dso_local global i32 0, align 4
@ralue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32)* @__mlxsw_sp_router_set_abort_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_router_set_abort_trap(%struct.mlxsw_sp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_sp_vr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @MLXSW_REG_RALTA_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @MLXSW_REG_RALST_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mlxsw_reg_ralta_pack(i8* %21, i32 1, i32 %25, i32 %26)
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ralta, align 4
  %32 = call i32 @MLXSW_REG(i32 %31)
  %33 = call i32 @mlxsw_reg_write(i32 %30, i32 %32, i8* %21)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %119

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mlxsw_reg_ralst_pack(i8* %24, i32 255, i32 %39)
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ralst, align 4
  %45 = call i32 @MLXSW_REG(i32 %44)
  %46 = call i32 @mlxsw_reg_write(i32 %43, i32 %45, i8* %24)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %119

51:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %115, %51
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAX_VRS, align 4
  %58 = call i32 @MLXSW_CORE_RES_GET(i32 %56, i32 %57)
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %118

60:                                               ; preds = %52
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %65, i64 %67
  store %struct.mlxsw_sp_vr* %68, %struct.mlxsw_sp_vr** %14, align 8
  %69 = load i32, i32* @MLXSW_REG_RALTB_LEN, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %15, align 8
  %72 = alloca i8, i64 %70, align 16
  store i64 %70, i64* %16, align 8
  %73 = load i32, i32* @MLXSW_REG_RALUE_LEN, align 4
  %74 = zext i32 %73 to i64
  %75 = alloca i8, i64 %74, align 16
  store i64 %74, i64* %17, align 8
  %76 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %14, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @mlxsw_reg_raltb_pack(i8* %72, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @raltb, align 4
  %86 = call i32 @MLXSW_REG(i32 %85)
  %87 = call i32 @mlxsw_reg_write(i32 %84, i32 %86, i8* %72)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %60
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %111

92:                                               ; preds = %60
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @MLXSW_REG_RALUE_OP_WRITE_WRITE, align 4
  %95 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %14, align 8
  %96 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mlxsw_reg_ralue_pack(i8* %75, i32 %93, i32 %94, i32 %97, i32 0)
  %99 = call i32 @mlxsw_reg_ralue_act_ip2me_pack(i8* %75)
  %100 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ralue, align 4
  %104 = call i32 @MLXSW_REG(i32 %103)
  %105 = call i32 @mlxsw_reg_write(i32 %102, i32 %104, i8* %75)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %111

110:                                              ; preds = %92
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %108, %90
  %112 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %13, align 4
  switch i32 %113, label %119 [
    i32 0, label %114
  ]

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %52

118:                                              ; preds = %52
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %111, %49, %36
  %120 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ralta_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ralst_pack(i8*, i32, i32) #2

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #2

declare dso_local i32 @mlxsw_reg_raltb_pack(i8*, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_ralue_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_ralue_act_ip2me_pack(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
