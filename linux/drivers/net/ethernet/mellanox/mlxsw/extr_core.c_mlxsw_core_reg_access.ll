; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_reg_info = type { i32 }

@bulk_list = common dso_local global i32 0, align 4
@mlxsw_core_reg_access_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32)* @mlxsw_core_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_core_reg_access(%struct.mlxsw_core* %0, %struct.mlxsw_reg_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.mlxsw_reg_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %6, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @bulk_list, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %20 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @mlxsw_core_reg_access_cmd(%struct.mlxsw_core* %19, %struct.mlxsw_reg_info* %20, i8* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %26 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @mlxsw_core_reg_access_cb, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = call i32 @mlxsw_core_reg_access_emad(%struct.mlxsw_core* %25, %struct.mlxsw_reg_info* %26, i8* %27, i32 %28, i32* @bulk_list, i32 %29, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %24
  %38 = call i32 @mlxsw_reg_trans_bulk_wait(i32* @bulk_list)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35, %18
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @mlxsw_core_reg_access_cmd(%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32) #1

declare dso_local i32 @mlxsw_core_reg_access_emad(%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32, i32*, i32, i64) #1

declare dso_local i32 @mlxsw_reg_trans_bulk_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
