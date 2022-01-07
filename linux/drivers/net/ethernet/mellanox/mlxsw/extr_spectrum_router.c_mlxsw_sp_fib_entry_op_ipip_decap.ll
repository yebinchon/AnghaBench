; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_op_ipip_decap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_op_ipip_decap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i32 (%struct.mlxsw_sp.0*, %struct.mlxsw_sp_ipip_entry*, i32, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_ipip_entry = type opaque
%struct.mlxsw_sp_fib_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mlxsw_sp_ipip_entry.1* }
%struct.mlxsw_sp_ipip_entry.1 = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32)* @mlxsw_sp_fib_entry_op_ipip_decap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib_entry_op_ipip_decap(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_ipip_entry.1*, align 8
  %9 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %12, align 8
  store %struct.mlxsw_sp_ipip_entry.1* %13, %struct.mlxsw_sp_ipip_entry.1** %8, align 8
  %14 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %8, align 8
  %15 = icmp ne %struct.mlxsw_sp_ipip_entry.1* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %27, align 8
  %29 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry.1, %struct.mlxsw_sp_ipip_entry.1* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %28, i64 %31
  %33 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %32, align 8
  store %struct.mlxsw_sp_ipip_ops* %33, %struct.mlxsw_sp_ipip_ops** %9, align 8
  %34 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %9, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.mlxsw_sp.0*, %struct.mlxsw_sp_ipip_entry*, i32, i32)*, i32 (%struct.mlxsw_sp.0*, %struct.mlxsw_sp_ipip_entry*, i32, i32)** %35, align 8
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %38 = bitcast %struct.mlxsw_sp* %37 to %struct.mlxsw_sp.0*
  %39 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %8, align 8
  %40 = bitcast %struct.mlxsw_sp_ipip_entry.1* %39 to %struct.mlxsw_sp_ipip_entry*
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %36(%struct.mlxsw_sp.0* %38, %struct.mlxsw_sp_ipip_entry* %40, i32 %41, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %23, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
