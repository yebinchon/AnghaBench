; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_query_fdb_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_dr_domain_query_fdb_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5dr_domain = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i64, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to query vports caps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5dr_domain*)* @dr_domain_query_fdb_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_domain_query_fdb_caps(%struct.mlx5_core_dev* %0, %struct.mlx5dr_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5dr_domain*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain** %5, align 8
  %7 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %109

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @mlx5dr_cmd_query_esw_caps(%struct.mlx5_core_dev* %17, %struct.TYPE_6__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %109

27:                                               ; preds = %16
  %28 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32 %33, i32* %37, align 4
  %38 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  store i32 %43, i32* %47, align 8
  %48 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32* @kcalloc(i64 %62, i32 4, i32 %63)
  %65 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32* %64, i32** %68, align 8
  %69 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %27
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %109

78:                                               ; preds = %27
  %79 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %80 = call i32 @dr_domain_query_vports(%struct.mlx5dr_domain* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %85 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %97

86:                                               ; preds = %78
  %87 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %94 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i64 %92, i64* %96, align 8
  store i32 0, i32* %3, align 4
  br label %109

97:                                               ; preds = %83
  %98 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @kfree(i32* %102)
  %104 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %105 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %97, %86, %75, %25, %13
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @mlx5dr_cmd_query_esw_caps(%struct.mlx5_core_dev*, %struct.TYPE_6__*) #1

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @dr_domain_query_vports(%struct.mlx5dr_domain*) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
