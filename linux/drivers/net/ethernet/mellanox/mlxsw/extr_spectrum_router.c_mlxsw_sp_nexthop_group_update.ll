; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_nexthop_group_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_nexthop_group = type { i32, %struct.mlxsw_sp_nexthop*, i32 }
%struct.mlxsw_sp_nexthop = type { i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_nexthop_group*, i32)* @mlxsw_sp_nexthop_group_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nexthop_group_update(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nexthop_group* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_nexthop_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_nexthop*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_nexthop_group* %1, %struct.mlxsw_sp_nexthop_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %75, %3
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %15
  %22 = load %struct.mlxsw_sp_nexthop_group*, %struct.mlxsw_sp_nexthop_group** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_nexthop_group, %struct.mlxsw_sp_nexthop_group* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %24, i64 %26
  store %struct.mlxsw_sp_nexthop* %27, %struct.mlxsw_sp_nexthop** %9, align 8
  %28 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %75

35:                                               ; preds = %21
  %36 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %40, %35
  %44 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %57 [
    i32 129, label %47
    i32 128, label %52
  ]

47:                                               ; preds = %43
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %51 = call i32 @mlxsw_sp_nexthop_update(%struct.mlxsw_sp* %48, i32 %49, %struct.mlxsw_sp_nexthop* %50)
  store i32 %51, i32* %11, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %56 = call i32 @mlxsw_sp_nexthop_ipip_update(%struct.mlxsw_sp* %53, i32 %54, %struct.mlxsw_sp_nexthop* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %43, %52, %47
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %79

62:                                               ; preds = %57
  %63 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %40
  %68 = load %struct.mlxsw_sp_nexthop*, %struct.mlxsw_sp_nexthop** %9, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_nexthop, %struct.mlxsw_sp_nexthop* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %67, %32
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %15

78:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @mlxsw_sp_nexthop_update(%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_nexthop*) #1

declare dso_local i32 @mlxsw_sp_nexthop_ipip_update(%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_nexthop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
