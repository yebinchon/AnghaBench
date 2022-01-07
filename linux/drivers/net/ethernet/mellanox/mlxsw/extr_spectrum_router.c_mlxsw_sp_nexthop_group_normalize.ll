; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_normalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nexthop_group = type { i32, i32, %struct.mlxsw_sp_nexthop* }
%struct.mlxsw_sp_nexthop = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_nexthop_group*)* @mlxsw_sp_nexthop_group_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nexthop_group_normalize(%struct.mlxsw_sp_nexthop_group* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_nexthop*, align 8
  store %struct.mlxsw_sp_nexthop_group* %0, %struct.mlxsw_sp_nexthop_group** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %2, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %2, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %14, i32 0, i32 2
  %16 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %16, i64 %18
  store %struct.mlxsw_sp_nexthop* %19, %struct.mlxsw_sp_nexthop** %6, align 8
  %20 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %39

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gcd(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %7

42:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %2, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %2, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %50, i32 0, i32 2
  %52 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %52, i64 %54
  store %struct.mlxsw_sp_nexthop* %55, %struct.mlxsw_sp_nexthop** %6, align 8
  %56 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %74

61:                                               ; preds = %49
  %62 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sdiv i32 %64, %65
  %67 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %6, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %61, %60
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %43

77:                                               ; preds = %43
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %2, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  ret void
}

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
