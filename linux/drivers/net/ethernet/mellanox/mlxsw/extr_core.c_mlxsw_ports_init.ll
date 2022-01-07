; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_ports_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_ports_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32, i64 }

@MAX_SYSTEM_PORT = common dso_local global i32 0, align 4
@MLXSW_PORT_MAX_PORTS_DEFAULT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_ports_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_ports_init(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %4 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %5 = load i32, i32* @MAX_SYSTEM_PORT, align 4
  %6 = call i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %10 = load i32, i32* @MAX_SYSTEM_PORT, align 4
  %11 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %9, i32 %10)
  %12 = add nsw i64 %11, 1
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load i64, i64* @MLXSW_PORT_MAX_PORTS_DEFAULT, align 8
  %17 = add nsw i64 %16, 1
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kcalloc(i64 %23, i32 4, i32 %24)
  %26 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %27 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @kcalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
