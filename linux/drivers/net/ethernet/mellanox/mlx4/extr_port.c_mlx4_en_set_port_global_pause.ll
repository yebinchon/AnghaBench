; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_en_set_port_global_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_en_set_port_global_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_set_port_general_context = type { i64, i64 }
%struct.mlx4_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx4_mfunc_master_ctx }
%struct.mlx4_mfunc_master_ctx = type { i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"denying Global Pause change for slave:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, i32, %struct.mlx4_set_port_general_context*)* @mlx4_en_set_port_global_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_set_port_global_pause(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_set_port_general_context* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_set_port_general_context*, align 8
  %7 = alloca %struct.mlx4_priv*, align 8
  %8 = alloca %struct.mlx4_mfunc_master_ctx*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_set_port_general_context* %2, %struct.mlx4_set_port_general_context** %6, align 8
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %7, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mlx4_mfunc_master_ctx* %13, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %16 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %15)
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mlx4_mfunc_master_ctx*, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.mlx4_mfunc_master_ctx, %struct.mlx4_mfunc_master_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlx4_mfunc_master_ctx*, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.mlx4_mfunc_master_ctx, %struct.mlx4_mfunc_master_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %26, %18
  %35 = load %struct.mlx4_mfunc_master_ctx*, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_mfunc_master_ctx, %struct.mlx4_mfunc_master_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mlx4_mfunc_master_ctx*, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_mfunc_master_ctx, %struct.mlx4_mfunc_master_ctx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mlx4_warn(%struct.mlx4_dev* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %59

48:                                               ; preds = %26, %3
  %49 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlx4_mfunc_master_ctx*, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_mfunc_master_ctx, %struct.mlx4_mfunc_master_ctx* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.mlx4_set_port_general_context*, %struct.mlx4_set_port_general_context** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_set_port_general_context, %struct.mlx4_set_port_general_context* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mlx4_mfunc_master_ctx*, %struct.mlx4_mfunc_master_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_mfunc_master_ctx, %struct.mlx4_mfunc_master_ctx* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %48, %34
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
