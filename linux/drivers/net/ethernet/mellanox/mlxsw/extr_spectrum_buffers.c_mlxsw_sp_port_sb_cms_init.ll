; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_port_sb_cms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_port_sb_cms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DIR_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_sb_cms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_sb_cms_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp* %8, %struct.mlxsw_sp** %4, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MLXSW_REG_SBXX_DIR_INGRESS, align 4
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__mlxsw_sp_sb_cms_init(%struct.mlxsw_sp* %9, i32 %12, i32 %13, i32 %18, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %30, i32 0, i32 1
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %31, align 8
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MLXSW_REG_SBXX_DIR_EGRESS, align 4
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__mlxsw_sp_sb_cms_init(%struct.mlxsw_sp* %32, i32 %35, i32 %36, i32 %41, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %29, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @__mlxsw_sp_sb_cms_init(%struct.mlxsw_sp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
