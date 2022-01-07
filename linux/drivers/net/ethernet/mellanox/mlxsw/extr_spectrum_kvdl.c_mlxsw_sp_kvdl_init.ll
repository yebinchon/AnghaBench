; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_kvdl.c_mlxsw_sp_kvdl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_kvdl.c_mlxsw_sp_kvdl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl_ops* }
%struct.mlxsw_sp_kvdl = type { i32, %struct.mlxsw_sp_kvdl_ops* }
%struct.mlxsw_sp_kvdl_ops = type { i32 (%struct.mlxsw_sp.0*, i32)*, i64 }
%struct.mlxsw_sp.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_kvdl_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_kvdl_ops*, align 8
  %5 = alloca %struct.mlxsw_sp_kvdl*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 1
  %9 = load %struct.mlxsw_sp_kvdl_ops*, %struct.mlxsw_sp_kvdl_ops** %8, align 8
  store %struct.mlxsw_sp_kvdl_ops* %9, %struct.mlxsw_sp_kvdl_ops** %4, align 8
  %10 = load %struct.mlxsw_sp_kvdl_ops*, %struct.mlxsw_sp_kvdl_ops** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_kvdl_ops, %struct.mlxsw_sp_kvdl_ops* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add i64 16, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mlxsw_sp_kvdl* @kzalloc(i64 %13, i32 %14)
  store %struct.mlxsw_sp_kvdl* %15, %struct.mlxsw_sp_kvdl** %5, align 8
  %16 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %5, align 8
  %17 = icmp ne %struct.mlxsw_sp_kvdl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.mlxsw_sp_kvdl_ops*, %struct.mlxsw_sp_kvdl_ops** %4, align 8
  %23 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_kvdl, %struct.mlxsw_sp_kvdl* %23, i32 0, i32 1
  store %struct.mlxsw_sp_kvdl_ops* %22, %struct.mlxsw_sp_kvdl_ops** %24, align 8
  %25 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %5, align 8
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %26, i32 0, i32 0
  store %struct.mlxsw_sp_kvdl* %25, %struct.mlxsw_sp_kvdl** %27, align 8
  %28 = load %struct.mlxsw_sp_kvdl_ops*, %struct.mlxsw_sp_kvdl_ops** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_kvdl_ops, %struct.mlxsw_sp_kvdl_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %29, align 8
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %32 = bitcast %struct.mlxsw_sp* %31 to %struct.mlxsw_sp.0*
  %33 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_kvdl, %struct.mlxsw_sp_kvdl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %30(%struct.mlxsw_sp.0* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %41

40:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %39
  %42 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %5, align 8
  %43 = call i32 @kfree(%struct.mlxsw_sp_kvdl* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %40, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mlxsw_sp_kvdl* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_kvdl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
