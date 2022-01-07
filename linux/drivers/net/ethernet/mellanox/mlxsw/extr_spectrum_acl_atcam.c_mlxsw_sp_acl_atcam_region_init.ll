; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { i32, %struct.TYPE_2__*, i32, i32, %struct.mlxsw_sp_acl_atcam*, %struct.mlxsw_sp_acl_tcam_region* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_acl_atcam_region*)*, i32 (%struct.mlxsw_sp_acl_atcam_region*)* }
%struct.mlxsw_sp_acl_tcam_region = type { i32 }
%struct.mlxsw_sp_acl_ctcam_region_ops = type { i32 }

@mlxsw_sp_acl_atcam_entries_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_atcam_region_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam* %1, %struct.mlxsw_sp_acl_atcam_region* %2, %struct.mlxsw_sp_acl_tcam_region* %3, i8* %4, %struct.mlxsw_sp_acl_ctcam_region_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_atcam*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %11 = alloca %struct.mlxsw_sp_acl_tcam_region*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mlxsw_sp_acl_ctcam_region_ops*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp_acl_atcam* %1, %struct.mlxsw_sp_acl_atcam** %9, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %2, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  store %struct.mlxsw_sp_acl_tcam_region* %3, %struct.mlxsw_sp_acl_tcam_region** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.mlxsw_sp_acl_ctcam_region_ops* %5, %struct.mlxsw_sp_acl_ctcam_region_ops** %13, align 8
  %15 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %11, align 8
  %16 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %16, i32 0, i32 5
  store %struct.mlxsw_sp_acl_tcam_region* %15, %struct.mlxsw_sp_acl_tcam_region** %17, align 8
  %18 = load %struct.mlxsw_sp_acl_atcam*, %struct.mlxsw_sp_acl_atcam** %9, align 8
  %19 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %19, i32 0, i32 4
  store %struct.mlxsw_sp_acl_atcam* %18, %struct.mlxsw_sp_acl_atcam** %20, align 8
  %21 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %22 = call i32 @mlxsw_sp_acl_atcam_region_type_init(%struct.mlxsw_sp_acl_atcam_region* %21)
  %23 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %26, i32 0, i32 0
  %28 = call i32 @rhashtable_init(i32* %27, i32* @mlxsw_sp_acl_atcam_entries_ht_params)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %7, align 4
  br label %78

33:                                               ; preds = %6
  %34 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.mlxsw_sp_acl_atcam_region*)*, i32 (%struct.mlxsw_sp_acl_atcam_region*)** %37, align 8
  %39 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %40 = call i32 %38(%struct.mlxsw_sp_acl_atcam_region* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %73

44:                                               ; preds = %33
  %45 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @mlxsw_sp_acl_erp_region_init(%struct.mlxsw_sp_acl_atcam_region* %45, i8* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %65

51:                                               ; preds = %44
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %53 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %53, i32 0, i32 2
  %55 = load %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_tcam_region** %11, align 8
  %56 = load %struct.mlxsw_sp_acl_ctcam_region_ops*, %struct.mlxsw_sp_acl_ctcam_region_ops** %13, align 8
  %57 = call i32 @mlxsw_sp_acl_ctcam_region_init(%struct.mlxsw_sp* %52, i32* %54, %struct.mlxsw_sp_acl_tcam_region* %55, %struct.mlxsw_sp_acl_ctcam_region_ops* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %78

62:                                               ; preds = %60
  %63 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %64 = call i32 @mlxsw_sp_acl_erp_region_fini(%struct.mlxsw_sp_acl_atcam_region* %63)
  br label %65

65:                                               ; preds = %62, %50
  %66 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (%struct.mlxsw_sp_acl_atcam_region*)*, i32 (%struct.mlxsw_sp_acl_atcam_region*)** %69, align 8
  %71 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %72 = call i32 %70(%struct.mlxsw_sp_acl_atcam_region* %71)
  br label %73

73:                                               ; preds = %65, %43
  %74 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %10, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %74, i32 0, i32 0
  %76 = call i32 @rhashtable_destroy(i32* %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %61, %31
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @mlxsw_sp_acl_atcam_region_type_init(%struct.mlxsw_sp_acl_atcam_region*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_init(%struct.mlxsw_sp_acl_atcam_region*, i8*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_region_init(%struct.mlxsw_sp*, i32*, %struct.mlxsw_sp_acl_tcam_region*, %struct.mlxsw_sp_acl_ctcam_region_ops*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_fini(%struct.mlxsw_sp_acl_atcam_region*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
