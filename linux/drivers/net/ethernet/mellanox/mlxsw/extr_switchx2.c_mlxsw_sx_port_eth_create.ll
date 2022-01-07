; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_eth_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_eth_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Port %d: Failed to init core port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx*, i64, i64, i64)* @mlxsw_sx_port_eth_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_eth_create(%struct.mlxsw_sx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sx* %0, %struct.mlxsw_sx** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mlxsw_core_port_init(i32 %13, i64 %14, i64 %16, i32 0, i32 0, i32 %19, i32 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %49

32:                                               ; preds = %4
  %33 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @__mlxsw_sx_port_eth_create(%struct.mlxsw_sx* %33, i64 %34, i64 %35, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %49

42:                                               ; preds = %40
  %43 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @mlxsw_core_port_fini(i32 %45, i64 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %41, %23
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @mlxsw_core_port_init(i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @__mlxsw_sx_port_eth_create(%struct.mlxsw_sx*, i64, i64, i64) #1

declare dso_local i32 @mlxsw_core_port_fini(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
