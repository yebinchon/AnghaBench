; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_hash_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_hash_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop* }
%struct.mlxsw_sp_nexthop = type { i32 }
%struct.fib_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mlxsw_sp_nexthop_group_hash_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop_group_hash_obj(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %9 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %10 = alloca %struct.fib_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mlxsw_sp_nexthop_group*
  store %struct.mlxsw_sp_nexthop_group* %14, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %15 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %16 = call i32 @mlxsw_sp_nexthop_group_type(%struct.mlxsw_sp_nexthop_group* %15)
  switch i32 %16, label %52 [
    i32 129, label %17
    i32 128, label %23
  ]

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %19 = call %struct.fib_info* @mlxsw_sp_nexthop4_group_fi(%struct.mlxsw_sp_nexthop_group* %18)
  store %struct.fib_info* %19, %struct.fib_info** %10, align 8
  %20 = bitcast %struct.fib_info** %10 to i32*
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @jhash(i32* %20, i32 8, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %46, %23
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %8, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %34, i32 0, i32 1
  %36 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %36, i64 %38
  store %struct.mlxsw_sp_nexthop* %39, %struct.mlxsw_sp_nexthop** %9, align 8
  %40 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @jhash(i32* %41, i32 4, i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @jhash(i32* %11, i32 4, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %3
  %53 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %49, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @mlxsw_sp_nexthop_group_type(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local %struct.fib_info* @mlxsw_sp_nexthop4_group_fi(%struct.mlxsw_sp_nexthop_group*) #1

declare dso_local i32 @jhash(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
