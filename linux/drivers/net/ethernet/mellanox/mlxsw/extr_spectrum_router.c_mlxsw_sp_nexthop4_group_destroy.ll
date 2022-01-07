; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_group_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop4_group_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32, i32, %struct.mlxsw_sp_nexthop* }
%struct.mlxsw_sp_nexthop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*)* @mlxsw_sp_nexthop4_group_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop4_group_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %5 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %9 = call i32 @mlxsw_sp_nexthop_group_remove(%struct.mlxsw_sp* %7, %struct.mlxsw_sp_nexthop_group* %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %17, i32 0, i32 2
  %19 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %19, i64 %21
  store %struct.mlxsw_sp_nexthop* %22, %struct.mlxsw_sp_nexthop** %5, align 8
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %5, align 8
  %25 = call i32 @mlxsw_sp_nexthop4_fini(%struct.mlxsw_sp* %23, %struct.mlxsw_sp_nexthop* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %31 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %32 = call i32 @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_nexthop_group* %31)
  %33 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %38 = call i32 @mlxsw_sp_nexthop4_group_fi(%struct.mlxsw_sp_nexthop_group* %37)
  %39 = call i32 @fib_info_put(i32 %38)
  %40 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %4, align 8
  %41 = call i32 @kfree(%struct.mlxsw_sp_nexthop_group* %40)
  ret void
}

declare dso_local i32 @mlxsw_sp_nexthop_group_remove(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_nexthop4_fini(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @mlxsw_sp_nexthop_group_refresh(%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fib_info_put(i32) #1

declare dso_local i32 @mlxsw_sp_nexthop4_group_fi(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_nexthop_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
