; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_config_vector_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_config_vector_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.alx_hw }
%struct.alx_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@txq_vec_mapping_shift = common dso_local global i32* null, align 8
@ALX_MSI_MAP_TBL1_RXQ0_SHIFT = common dso_local global i32 0, align 4
@ALX_MSI_MAP_TBL1 = common dso_local global i32 0, align 4
@ALX_MSI_MAP_TBL2 = common dso_local global i32 0, align 4
@ALX_MSI_ID_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_config_vector_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_config_vector_mapping(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %9 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %10 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %9, i32 0, i32 1
  store %struct.alx_hw* %10, %struct.alx_hw** %3, align 8
  %11 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %23 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load i32*, i32** @txq_vec_mapping_shift, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32*, i32** @txq_vec_mapping_shift, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* @ALX_MSI_MAP_TBL1_RXQ0_SHIFT, align 4
  %55 = shl i32 1, %54
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %1
  %60 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %61 = load i32, i32* @ALX_MSI_MAP_TBL1, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @alx_write_mem32(%struct.alx_hw* %60, i32 %61, i32 %63)
  %65 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %66 = load i32, i32* @ALX_MSI_MAP_TBL2, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @alx_write_mem32(%struct.alx_hw* %65, i32 %66, i32 %68)
  %70 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %71 = load i32, i32* @ALX_MSI_ID_MAP, align 4
  %72 = call i32 @alx_write_mem32(%struct.alx_hw* %70, i32 %71, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
