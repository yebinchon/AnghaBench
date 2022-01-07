; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_func_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_init_params = type { i32, i32, i32, i64, i32 }
%struct.tstorm_eth_function_common_config = type { i32 }

@XSEM_REG_FAST_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_func_init(%struct.bnx2x* %0, %struct.bnx2x_func_init_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_init_params*, align 8
  %5 = alloca %struct.tstorm_eth_function_common_config, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_init_params* %1, %struct.bnx2x_func_init_params** %4, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = bitcast %struct.tstorm_eth_function_common_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @storm_memset_func_cfg(%struct.bnx2x* %11, %struct.tstorm_eth_function_common_config* %5, i32 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @storm_memset_vf_to_pf(%struct.bnx2x* %17, i32 %20, i32 %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @storm_memset_func_en(%struct.bnx2x* %25, i32 %28, i32 1)
  %30 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %16
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %37 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @storm_memset_spq_addr(%struct.bnx2x* %35, i32 %38, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load i64, i64* @XSEM_REG_FAST_MEMORY, align 8
  %45 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %46 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @XSTORM_SPQ_PROD_OFFSET(i32 %47)
  %49 = add nsw i64 %44, %48
  %50 = load %struct.bnx2x_func_init_params*, %struct.bnx2x_func_init_params** %4, align 8
  %51 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @REG_WR(%struct.bnx2x* %43, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %34, %16
  ret void
}

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @storm_memset_func_cfg(%struct.bnx2x*, %struct.tstorm_eth_function_common_config*, i32) #1

declare dso_local i32 @storm_memset_vf_to_pf(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @storm_memset_func_en(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @storm_memset_spq_addr(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i64 @XSTORM_SPQ_PROD_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
