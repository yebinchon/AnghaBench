; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c___mlxsw_sp_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c___mlxsw_sp_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_port_hw_stats = type { i32, i32 (i8*)* }

@MLXSW_REG_PPCNT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32*, i32)* @__mlxsw_sp_port_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sp_port_get_stats(%struct.net_device* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_sp_port*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca %struct.mlxsw_sp_port_hw_stats*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %20)
  store %struct.mlxsw_sp_port* %21, %struct.mlxsw_sp_port** %11, align 8
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %22, i32 0, i32 0
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %23, align 8
  store %struct.mlxsw_sp* %24, %struct.mlxsw_sp** %12, align 8
  %25 = load i32, i32* @MLXSW_REG_PPCNT_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlxsw_sp_get_hw_stats_by_group(%struct.mlxsw_sp_port_hw_stats** %13, i32* %17, i32 %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 1, i32* %19, align 4
  br label %85

34:                                               ; preds = %5
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device* %35, i32 %36, i32 %37, i8* %28)
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %81, %34
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39
  %44 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** %13, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mlxsw_sp_port_hw_stats, %struct.mlxsw_sp_port_hw_stats* %44, i64 %46
  %48 = getelementptr inbounds %struct.mlxsw_sp_port_hw_stats, %struct.mlxsw_sp_port_hw_stats* %47, i32 0, i32 1
  %49 = load i32 (i8*)*, i32 (i8*)** %48, align 8
  %50 = call i32 %49(i8* %28)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** %13, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mlxsw_sp_port_hw_stats, %struct.mlxsw_sp_port_hw_stats* %57, i64 %59
  %61 = getelementptr inbounds %struct.mlxsw_sp_port_hw_stats, %struct.mlxsw_sp_port_hw_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %43
  br label %81

65:                                               ; preds = %43
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp* %66, i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %65, %64
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %39

84:                                               ; preds = %39
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %84, %33
  %86 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %19, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_sp_get_hw_stats_by_group(%struct.mlxsw_sp_port_hw_stats**, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_port_get_stats_raw(%struct.net_device*, i32, i32, i8*) #1

declare dso_local i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
