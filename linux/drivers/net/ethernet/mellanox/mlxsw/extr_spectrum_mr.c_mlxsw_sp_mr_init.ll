; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr* }
%struct.mlxsw_sp_mr = type { i32, i32, i32, %struct.mlxsw_sp_mr_ops* }
%struct.mlxsw_sp_mr_ops = type { i32 (%struct.mlxsw_sp.0*, i32)*, i64 }
%struct.mlxsw_sp.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_mr_stats_update = common dso_local global i32 0, align 4
@MLXSW_SP_MR_ROUTES_COUNTER_UPDATE_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_mr_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_mr_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_mr_ops*, align 8
  %6 = alloca %struct.mlxsw_sp_mr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_mr_ops* %1, %struct.mlxsw_sp_mr_ops** %5, align 8
  %9 = load %struct.mlxsw_sp_mr_ops*, %struct.mlxsw_sp_mr_ops** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_mr_ops, %struct.mlxsw_sp_mr_ops* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add i64 24, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlxsw_sp_mr* @kzalloc(i64 %12, i32 %13)
  store %struct.mlxsw_sp_mr* %14, %struct.mlxsw_sp_mr** %6, align 8
  %15 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %16 = icmp ne %struct.mlxsw_sp_mr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp_mr_ops*, %struct.mlxsw_sp_mr_ops** %5, align 8
  %22 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %22, i32 0, i32 3
  store %struct.mlxsw_sp_mr_ops* %21, %struct.mlxsw_sp_mr_ops** %23, align 8
  %24 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 0
  store %struct.mlxsw_sp_mr* %24, %struct.mlxsw_sp_mr** %26, align 8
  %27 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.mlxsw_sp_mr_ops*, %struct.mlxsw_sp_mr_ops** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mr_ops, %struct.mlxsw_sp_mr_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %31, align 8
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %34 = bitcast %struct.mlxsw_sp* %33 to %struct.mlxsw_sp.0*
  %35 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %32(%struct.mlxsw_sp.0* %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  br label %53

42:                                               ; preds = %20
  %43 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %43, i32 0, i32 0
  %45 = load i32, i32* @mlxsw_sp_mr_stats_update, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load i32, i32* @MLXSW_SP_MR_ROUTES_COUNTER_UPDATE_INTERVAL, align 4
  %48 = call i64 @msecs_to_jiffies(i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %49, i32 0, i32 0
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @mlxsw_core_schedule_dw(i32* %50, i64 %51)
  store i32 0, i32* %3, align 4
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %6, align 8
  %55 = call i32 @kfree(%struct.mlxsw_sp_mr* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %42, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.mlxsw_sp_mr* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mlxsw_core_schedule_dw(i32*, i64) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
