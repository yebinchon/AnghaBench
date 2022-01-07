; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_cnt.c_mlxsw_sp_counter_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_counter_sub_pool = type { i32, i32, i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_counter_pool*, i32 }
%struct.mlxsw_sp_counter_pool = type { i32, %struct.mlxsw_sp_counter_sub_pool*, i8* }

@COUNTER_POOL_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_counter_sub_pools = common dso_local global %struct.mlxsw_sp_counter_sub_pool* null, align 8
@MLXSW_SP_COUNTER_POOL_BANK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_counter_pool_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_counter_sub_pool*, align 8
  %5 = alloca %struct.mlxsw_sp_counter_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @COUNTER_POOL_SIZE, align 4
  %14 = call i32 @MLXSW_CORE_RES_VALID(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %133

19:                                               ; preds = %1
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %21 = call i32 @mlxsw_sp_counter_pool_validate(%struct.mlxsw_sp* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %2, align 4
  br label %133

26:                                               ; preds = %19
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %28 = call i32 @mlxsw_sp_counter_sub_pools_prepare(%struct.mlxsw_sp* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %133

33:                                               ; preds = %26
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 24, i32 %34)
  %36 = bitcast i8* %35 to %struct.mlxsw_sp_counter_pool*
  store %struct.mlxsw_sp_counter_pool* %36, %struct.mlxsw_sp_counter_pool** %5, align 8
  %37 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %38 = icmp ne %struct.mlxsw_sp_counter_pool* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %133

42:                                               ; preds = %33
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @COUNTER_POOL_SIZE, align 4
  %47 = call i32 @MLXSW_CORE_RES_GET(i32 %45, i32 %46)
  %48 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @BITS_TO_LONGS(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kzalloc(i32 %57, i32 %58)
  %60 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %42
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %129

69:                                               ; preds = %42
  %70 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** @mlxsw_sp_counter_sub_pools, align 8
  %71 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %71, i32 0, i32 1
  store %struct.mlxsw_sp_counter_sub_pool* %70, %struct.mlxsw_sp_counter_sub_pool** %72, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %122, %69
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** @mlxsw_sp_counter_sub_pools, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.mlxsw_sp_counter_sub_pool* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %73
  %79 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %79, i32 0, i32 1
  %81 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %81, i64 %83
  store %struct.mlxsw_sp_counter_sub_pool* %84, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %85 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MLXSW_SP_COUNTER_POOL_BANK_SIZE, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %96 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %102, %105
  %107 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ugt i32 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %78
  %112 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %113 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, %struct.mlxsw_sp_counter_pool* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sub i32 %114, %117
  %119 = load %struct.mlxsw_sp_counter_sub_pool*, %struct.mlxsw_sp_counter_sub_pool** %4, align 8
  %120 = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, %struct.mlxsw_sp_counter_sub_pool* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %78
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %73

125:                                              ; preds = %73
  %126 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %127 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %128 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %127, i32 0, i32 0
  store %struct.mlxsw_sp_counter_pool* %126, %struct.mlxsw_sp_counter_pool** %128, align 8
  store i32 0, i32* %2, align 4
  br label %133

129:                                              ; preds = %66
  %130 = load %struct.mlxsw_sp_counter_pool*, %struct.mlxsw_sp_counter_pool** %5, align 8
  %131 = call i32 @kfree(%struct.mlxsw_sp_counter_pool* %130)
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %125, %39, %31, %24, %16
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #1

declare dso_local i32 @mlxsw_sp_counter_pool_validate(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_counter_sub_pools_prepare(%struct.mlxsw_sp*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mlxsw_sp_counter_sub_pool*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_counter_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
