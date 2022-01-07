; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_fib_entry_op_gre4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_fib_entry_op_gre4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, i32, i32)* @mlxsw_sp_ipip_fib_entry_op_gre4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_fib_entry_op_gre4(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_ipip_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_ipip_entry* %1, %struct.mlxsw_sp_ipip_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %7, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlxsw_sp_ipip_lb_ul_vr_id(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %7, align 8
  %21 = call i32 @mlxsw_sp_ipip_fib_entry_op_gre4_rtdp(%struct.mlxsw_sp* %18, i32 %19, %struct.mlxsw_sp_ipip_entry* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %42

26:                                               ; preds = %4
  %27 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV4, align 4
  %28 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlxsw_sp_ipip_netdev_saddr(i32 %27, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @mlxsw_sp_ipip_fib_entry_op_gre4_ralue(%struct.mlxsw_sp* %35, i32 %37, i32 32, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %26, %24
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @mlxsw_sp_ipip_lb_ul_vr_id(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_fib_entry_op_gre4_rtdp(%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_saddr(i32, i32) #1

declare dso_local i32 @mlxsw_sp_ipip_fib_entry_op_gre4_ralue(%struct.mlxsw_sp*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
