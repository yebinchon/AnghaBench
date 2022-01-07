; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_table_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_table_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, %struct.TYPE_2__*, i32, i32, %struct.mlxsw_sp_acl_erp_core* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_erp_core = type { i32 }
%struct.mlxsw_sp_acl_erp = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_table*)* @mlxsw_sp_acl_erp_region_table_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_region_table_trans(%struct.mlxsw_sp_acl_erp_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %7 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %7, i32 0, i32 4
  %9 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %8, align 8
  store %struct.mlxsw_sp_acl_erp_core* %9, %struct.mlxsw_sp_acl_erp_core** %4, align 8
  %10 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %4, align 8
  %11 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %19, i32 0, i32 0
  %21 = call i32 @mlxsw_sp_acl_erp_table_alloc(%struct.mlxsw_sp_acl_erp_core* %10, i32 %13, i32 %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %99

26:                                               ; preds = %1
  %27 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %33 = call %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_table_master_rp(%struct.mlxsw_sp_acl_erp_table* %32)
  store %struct.mlxsw_sp_acl_erp* %33, %struct.mlxsw_sp_acl_erp** %5, align 8
  %34 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %35 = icmp ne %struct.mlxsw_sp_acl_erp* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %84

39:                                               ; preds = %26
  %40 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i64 %44, i32 %47)
  %49 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %50 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %51 = call i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table* %49, %struct.mlxsw_sp_acl_erp* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %76

55:                                               ; preds = %39
  %56 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %57 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %58 = call i32 @mlxsw_acl_erp_table_bf_add(%struct.mlxsw_sp_acl_erp_table* %56, %struct.mlxsw_sp_acl_erp* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %73

62:                                               ; preds = %55
  %63 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %64 = call i32 @mlxsw_sp_acl_erp_table_enable(%struct.mlxsw_sp_acl_erp_table* %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %99

69:                                               ; preds = %67
  %70 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %71 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %72 = call i32 @mlxsw_acl_erp_table_bf_del(%struct.mlxsw_sp_acl_erp_table* %70, %struct.mlxsw_sp_acl_erp* %71)
  br label %73

73:                                               ; preds = %69, %61
  %74 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %75 = call i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp* %74)
  br label %76

76:                                               ; preds = %73, %54
  %77 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %5, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__clear_bit(i64 %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %36
  %85 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %4, align 8
  %86 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mlxsw_sp_acl_erp_table_free(%struct.mlxsw_sp_acl_erp_core* %85, i32 %88, i32 %93, i32 %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %84, %68, %24
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @mlxsw_sp_acl_erp_table_alloc(%struct.mlxsw_sp_acl_erp_core*, i32, i32, i32*) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_table_master_rp(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_add(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_acl_erp_table_bf_add(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_enable(%struct.mlxsw_sp_acl_erp_table*, i32) #1

declare dso_local i32 @mlxsw_acl_erp_table_bf_del(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_free(%struct.mlxsw_sp_acl_erp_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
