; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_create_next_htbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_create_next_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.mlx5dr_ste = type { %struct.mlx5dr_ste_htbl*, i32 }
%struct.mlx5dr_ste_htbl = type { %struct.mlx5dr_ste* }
%struct.dr_hw_ste_format = type { i32 }
%struct.mlx5dr_htbl_connect_info = type { i32, i32 }

@ste_general = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed allocating table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONNECT_MISS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed writing table to HW\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_ste_create_next_htbl(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_ste* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5dr_matcher*, align 8
  %8 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %9 = alloca %struct.mlx5dr_ste*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dr_hw_ste_format*, align 8
  %13 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %14 = alloca %struct.mlx5dr_domain*, align 8
  %15 = alloca %struct.mlx5dr_htbl_connect_info, align 4
  %16 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %7, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  store %struct.mlx5dr_ste* %2, %struct.mlx5dr_ste** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = bitcast i32* %20 to %struct.dr_hw_ste_format*
  store %struct.dr_hw_ste_format* %21, %struct.dr_hw_ste_format** %12, align 8
  %22 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %25, align 8
  store %struct.mlx5dr_domain_rx_tx* %26, %struct.mlx5dr_domain_rx_tx** %13, align 8
  %27 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %30, align 8
  store %struct.mlx5dr_domain* %31, %struct.mlx5dr_domain** %14, align 8
  %32 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %33 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mlx5dr_ste_is_last_in_rule(%struct.mlx5dr_matcher_rx_tx* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %97, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @ste_general, align 4
  %40 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %12, align 8
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @MLX5_GET(i32 %39, %struct.dr_hw_ste_format* %40, i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* @ste_general, align 4
  %44 = load %struct.dr_hw_ste_format*, %struct.dr_hw_ste_format** %12, align 8
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @MLX5_GET(i32 %43, %struct.dr_hw_ste_format* %44, i32 %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = call i32 @get_bits_per_mask(i32 %47)
  %49 = load i32, i32* @BITS_PER_BYTE, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %14, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %19, align 4
  %60 = call %struct.mlx5dr_ste_htbl* @mlx5dr_ste_htbl_alloc(i32 %56, i32 %57, i32 %58, i32 %59)
  store %struct.mlx5dr_ste_htbl* %60, %struct.mlx5dr_ste_htbl** %16, align 8
  %61 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %16, align 8
  %62 = icmp ne %struct.mlx5dr_ste_htbl* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %38
  %64 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %14, align 8
  %65 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %103

68:                                               ; preds = %38
  %69 = load i32, i32* @CONNECT_MISS, align 4
  %70 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %15, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %72 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %15, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %14, align 8
  %80 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %13, align 8
  %81 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %16, align 8
  %82 = call i64 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain* %79, %struct.mlx5dr_domain_rx_tx* %80, %struct.mlx5dr_ste_htbl* %81, %struct.mlx5dr_htbl_connect_info* %15, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %14, align 8
  %86 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %98

87:                                               ; preds = %68
  %88 = load i32*, i32** %10, align 8
  %89 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %16, align 8
  %90 = call i32 @mlx5dr_ste_set_hit_addr_by_next_htbl(i32* %88, %struct.mlx5dr_ste_htbl* %89)
  %91 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %16, align 8
  %92 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %93 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %92, i32 0, i32 0
  store %struct.mlx5dr_ste_htbl* %91, %struct.mlx5dr_ste_htbl** %93, align 8
  %94 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %95 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %16, align 8
  %96 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %95, i32 0, i32 0
  store %struct.mlx5dr_ste* %94, %struct.mlx5dr_ste** %96, align 8
  br label %97

97:                                               ; preds = %87, %5
  store i32 0, i32* %6, align 4
  br label %103

98:                                               ; preds = %84
  %99 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %16, align 8
  %100 = call i32 @mlx5dr_ste_htbl_free(%struct.mlx5dr_ste_htbl* %99)
  %101 = load i32, i32* @ENOENT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %97, %63
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @mlx5dr_ste_is_last_in_rule(%struct.mlx5dr_matcher_rx_tx*, i32) #1

declare dso_local i32 @MLX5_GET(i32, %struct.dr_hw_ste_format*, i32) #1

declare dso_local i32 @get_bits_per_mask(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.mlx5dr_ste_htbl* @mlx5dr_ste_htbl_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i64 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain*, %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_htbl_connect_info*, i32) #1

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5dr_ste_set_hit_addr_by_next_htbl(i32*, %struct.mlx5dr_ste_htbl*) #1

declare dso_local i32 @mlx5dr_ste_htbl_free(%struct.mlx5dr_ste_htbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
