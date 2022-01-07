; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_vr* }
%struct.mlxsw_sp_vr = type { i32* }

@MAX_VRS = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_MAX = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_router_fib_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_router_fib_flush(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MAX_VRS, align 4
  %12 = call i32 @MLXSW_CORE_RES_GET(i32 %10, i32 %11)
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %6
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %19, i64 %21
  store %struct.mlxsw_sp_vr* %22, %struct.mlxsw_sp_vr** %5, align 8
  %23 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %24 = call i32 @mlxsw_sp_vr_is_used(%struct.mlxsw_sp_vr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  br label %58

27:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MLXSW_SP_L3_PROTO_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlxsw_sp_mr_table_flush(i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %46 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %47 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %48 = call i32 @mlxsw_sp_vr_fib_flush(%struct.mlxsw_sp* %45, %struct.mlxsw_sp_vr* %46, i32 %47)
  %49 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %50 = call i32 @mlxsw_sp_vr_is_used(%struct.mlxsw_sp_vr* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %58

53:                                               ; preds = %44
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %55 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %5, align 8
  %56 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV6, align 4
  %57 = call i32 @mlxsw_sp_vr_fib_flush(%struct.mlxsw_sp* %54, %struct.mlxsw_sp_vr* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %52, %26
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @mlxsw_sp_vr_is_used(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @mlxsw_sp_mr_table_flush(i32) #1

declare dso_local i32 @mlxsw_sp_vr_fib_flush(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
