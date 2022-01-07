; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fi_is_gateway.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fi_is_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.fib_info = type { i32 }
%struct.fib_nh = type { i64 }

@RT_SCOPE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.fib_info*)* @mlxsw_sp_fi_is_gateway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fi_is_gateway(%struct.mlxsw_sp* %0, %struct.fib_info* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.fib_info*, align 8
  %5 = alloca %struct.fib_nh*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.fib_info* %1, %struct.fib_info** %4, align 8
  %6 = load %struct.fib_info*, %struct.fib_info** %4, align 8
  %7 = call %struct.fib_nh* @fib_info_nh(%struct.fib_info* %6, i32 0)
  store %struct.fib_nh* %7, %struct.fib_nh** %5, align 8
  %8 = load %struct.fib_nh*, %struct.fib_nh** %5, align 8
  %9 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RT_SCOPE_LINK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = load %struct.fib_nh*, %struct.fib_nh** %5, align 8
  %16 = call i64 @mlxsw_sp_nexthop4_ipip_type(%struct.mlxsw_sp* %14, %struct.fib_nh* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ true, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.fib_nh* @fib_info_nh(%struct.fib_info*, i32) #1

declare dso_local i64 @mlxsw_sp_nexthop4_ipip_type(%struct.mlxsw_sp*, %struct.fib_nh*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
