; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fids_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fids_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_fid_core*, i32 }
%struct.mlxsw_sp_fid_core = type { i32, i32, %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_family** }
%struct.mlxsw_sp_fid_family = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_fid_ht_params = common dso_local global i32 0, align 4
@mlxsw_sp_fid_vni_ht_params = common dso_local global i32 0, align 4
@MLXSW_SP_FID_TYPE_MAX = common dso_local global i32 0, align 4
@mlxsw_sp_fid_family_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_fids_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_fid_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_fid_family*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mlxsw_core_max_ports(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlxsw_sp_fid_core* @kzalloc(i32 24, i32 %13)
  store %struct.mlxsw_sp_fid_core* %14, %struct.mlxsw_sp_fid_core** %5, align 8
  %15 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %16 = icmp ne %struct.mlxsw_sp_fid_core* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %108

20:                                               ; preds = %1
  %21 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  store %struct.mlxsw_sp_fid_core* %21, %struct.mlxsw_sp_fid_core** %23, align 8
  %24 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %24, i32 0, i32 0
  %26 = call i32 @rhashtable_init(i32* %25, i32* @mlxsw_sp_fid_ht_params)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %104

30:                                               ; preds = %20
  %31 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %31, i32 0, i32 1
  %33 = call i32 @rhashtable_init(i32* %32, i32* @mlxsw_sp_fid_vni_ht_params)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %100

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.mlxsw_sp_fid_core* @kcalloc(i32 %38, i32 4, i32 %39)
  %41 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %41, i32 0, i32 2
  store %struct.mlxsw_sp_fid_core* %40, %struct.mlxsw_sp_fid_core** %42, align 8
  %43 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %43, i32 0, i32 2
  %45 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %44, align 8
  %46 = icmp ne %struct.mlxsw_sp_fid_core* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %96

50:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MLXSW_SP_FID_TYPE_MAX, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %57 = load i32*, i32** @mlxsw_sp_fid_family_arr, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mlxsw_sp_fid_family_register(%struct.mlxsw_sp* %56, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %71

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %51

70:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %108

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %88, %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %78, i32 0, i32 3
  %80 = load %struct.mlxsw_sp_fid_family**, %struct.mlxsw_sp_fid_family*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %80, i64 %82
  %84 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %83, align 8
  store %struct.mlxsw_sp_fid_family* %84, %struct.mlxsw_sp_fid_family** %8, align 8
  %85 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %86 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %8, align 8
  %87 = call i32 @mlxsw_sp_fid_family_unregister(%struct.mlxsw_sp* %85, %struct.mlxsw_sp_fid_family* %86)
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %93 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %92, i32 0, i32 2
  %94 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %93, align 8
  %95 = call i32 @kfree(%struct.mlxsw_sp_fid_core* %94)
  br label %96

96:                                               ; preds = %91, %47
  %97 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %97, i32 0, i32 1
  %99 = call i32 @rhashtable_destroy(i32* %98)
  br label %100

100:                                              ; preds = %96, %36
  %101 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %102 = getelementptr inbounds %struct.mlxsw_sp_fid_core, %struct.mlxsw_sp_fid_core* %101, i32 0, i32 0
  %103 = call i32 @rhashtable_destroy(i32* %102)
  br label %104

104:                                              ; preds = %100, %29
  %105 = load %struct.mlxsw_sp_fid_core*, %struct.mlxsw_sp_fid_core** %5, align 8
  %106 = call i32 @kfree(%struct.mlxsw_sp_fid_core* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %70, %17
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local %struct.mlxsw_sp_fid_core* @kzalloc(i32, i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local %struct.mlxsw_sp_fid_core* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_family_register(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_family_unregister(%struct.mlxsw_sp*, %struct.mlxsw_sp_fid_family*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fid_core*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
