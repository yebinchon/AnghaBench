; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nexthop_group_cmp_arg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mlxsw_sp_nexthop_group_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop_group_hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_nexthop_group_cmp_arg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mlxsw_sp_nexthop_group_cmp_arg*
  store %struct.mlxsw_sp_nexthop_group_cmp_arg* %10, %struct.mlxsw_sp_nexthop_group_cmp_arg** %8, align 8
  %11 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %8, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group_cmp_arg, %struct.mlxsw_sp_nexthop_group_cmp_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %25 [
    i32 129, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %3
  %15 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %8, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group_cmp_arg, %struct.mlxsw_sp_nexthop_group_cmp_arg* %15, i32 0, i32 2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @jhash(i32* %16, i32 4, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_sp_nexthop_group_cmp_arg*, %struct.mlxsw_sp_nexthop_group_cmp_arg** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group_cmp_arg, %struct.mlxsw_sp_nexthop_group_cmp_arg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mlxsw_sp_nexthop6_group_hash(i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %19, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @jhash(i32*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_nexthop6_group_hash(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
