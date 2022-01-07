; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_init_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Cannot generate IPv4 or IPv6 rules with given mask\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DR_CHUNK_SIZE_1 = common dso_local global i32 0, align 4
@MLX5DR_STE_LU_TYPE_DONT_CARE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*)* @dr_matcher_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_matcher*, align 8
  %5 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %4, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %10 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %13, align 8
  store %struct.mlx5dr_domain* %14, %struct.mlx5dr_domain** %6, align 8
  %15 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %16 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %17 = call i32 @dr_matcher_set_ste_builders(%struct.mlx5dr_matcher* %15, %struct.mlx5dr_matcher_rx_tx* %16, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %19 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %20 = call i32 @dr_matcher_set_ste_builders(%struct.mlx5dr_matcher* %18, %struct.mlx5dr_matcher_rx_tx* %19, i32 1)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %28 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %104

31:                                               ; preds = %23, %2
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %38, i32 0, i32 2
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  br label %46

40:                                               ; preds = %31
  %41 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %44, i32 0, i32 2
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DR_CHUNK_SIZE_1, align 4
  %51 = load i32, i32* @MLX5DR_STE_LU_TYPE_DONT_CARE, align 4
  %52 = call i8* @mlx5dr_ste_htbl_alloc(i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %104

62:                                               ; preds = %46
  %63 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DR_CHUNK_SIZE_1, align 4
  %67 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %74 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @mlx5dr_ste_htbl_alloc(i32 %65, i32 %66, i32 %72, i32 %78)
  %80 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %81 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %83 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %62
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %98

89:                                               ; preds = %62
  %90 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @mlx5dr_htbl_get(i8* %92)
  %94 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @mlx5dr_htbl_get(i8* %96)
  store i32 0, i32* %3, align 4
  br label %104

98:                                               ; preds = %86
  %99 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %5, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @mlx5dr_ste_htbl_free(i8* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %89, %59, %26
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dr_matcher_set_ste_builders(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i8* @mlx5dr_ste_htbl_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5dr_htbl_get(i8*) #1

declare dso_local i32 @mlx5dr_ste_htbl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
