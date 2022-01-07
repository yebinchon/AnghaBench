; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_dev_addr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_dev_addr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i64, %struct.TYPE_2__*, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i8* }
%struct.mlxsw_sp = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_dev_addr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_dev_addr_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i8*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %2, align 8
  %5 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %5, i32 0, i32 2
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp* %7, %struct.mlxsw_sp** %3, align 8
  %8 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ether_addr_copy(i8* %13, i32 %16)
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = add nsw i64 %27, %20
  %29 = trunc i64 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @mlxsw_sp_port_dev_addr_set(%struct.mlxsw_sp_port* %30, i8* %31)
  ret i32 %32
}

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

declare dso_local i32 @mlxsw_sp_port_dev_addr_set(%struct.mlxsw_sp_port*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
