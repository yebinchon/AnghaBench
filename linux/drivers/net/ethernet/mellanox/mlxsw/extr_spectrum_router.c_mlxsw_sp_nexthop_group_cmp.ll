; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.mlxsw_sp_nexthop_group_cmp_arg* }
%struct.mlxsw_sp_nexthop_group_cmp_arg = type { i32, i32, i32 }
%struct.mlxsw_sp_nexthop_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @mlxsw_sp_nexthop_group_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop_group_cmp(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable_compare_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_sp_nexthop_group_cmp_arg*, align 8
  %7 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %4, align 8
  %9 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %9, align 8
  store %struct.mlxsw_sp_nexthop_group_cmp_arg* %10, %struct.mlxsw_sp_nexthop_group_cmp_arg** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mlxsw_sp_nexthop_group*
  store %struct.mlxsw_sp_nexthop_group* %12, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %13 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group_cmp_arg, %struct.mlxsw_sp_nexthop_group_cmp_arg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %33 [
    i32 129, label %16
    i32 128, label %24
  ]

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group_cmp_arg, %struct.mlxsw_sp_nexthop_group_cmp_arg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %21 = call i32 @mlxsw_sp_nexthop4_group_fi(%struct.mlxsw_sp_nexthop_group* %20)
  %22 = icmp ne i32 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %7, align 8
  %26 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group_cmp_arg, %struct.mlxsw_sp_nexthop_group_cmp_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlxsw_sp_nexthop6_group_cmp(%struct.mlxsw_sp_nexthop_group* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @WARN_ON(i32 1)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %24, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @mlxsw_sp_nexthop4_group_fi(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @mlxsw_sp_nexthop6_group_cmp(%struct.mlxsw_sp_nexthop_group*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
