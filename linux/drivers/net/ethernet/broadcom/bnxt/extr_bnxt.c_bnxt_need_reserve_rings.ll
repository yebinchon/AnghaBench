; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_need_reserve_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_need_reserve_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i64, i32, %struct.bnxt_hw_resc }
%struct.bnxt_hw_resc = type { i64, i32, i32, i32, i32, i32, i32 }

@BNXT_FLAG_RFS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_need_reserve_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_need_reserve_rings(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_hw_resc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 4
  store %struct.bnxt_hw_resc* %12, %struct.bnxt_hw_resc** %4, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = call i32 @bnxt_cp_rings_in_use(%struct.bnxt* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = call i32 @bnxt_nq_rings_in_use(%struct.bnxt* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 67073
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

26:                                               ; preds = %1
  %27 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %125

35:                                               ; preds = %26
  %36 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BNXT_FLAG_RFS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %42, %35
  %53 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %64 = call i32 @bnxt_get_func_stat_ctxs(%struct.bnxt* %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %66 = call i64 @BNXT_NEW_RM(%struct.bnxt* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %62
  %69 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %70 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %105, label %74

74:                                               ; preds = %68
  %75 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %76 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %105, label %80

80:                                               ; preds = %74
  %81 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %82 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %105, label %86

86:                                               ; preds = %80
  %87 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %88 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %94 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %100 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98, %86, %80, %74, %68
  store i32 1, i32* %2, align 4
  br label %125

106:                                              ; preds = %98, %92, %62
  %107 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %108 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %115 = call i64 @BNXT_PF(%struct.bnxt* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.bnxt_hw_resc*, %struct.bnxt_hw_resc** %4, align 8
  %119 = getelementptr inbounds %struct.bnxt_hw_resc, %struct.bnxt_hw_resc* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %125

124:                                              ; preds = %117, %113, %106
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %123, %105, %34, %25
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @bnxt_cp_rings_in_use(%struct.bnxt*) #1

declare dso_local i32 @bnxt_nq_rings_in_use(%struct.bnxt*) #1

declare dso_local i32 @bnxt_get_func_stat_ctxs(%struct.bnxt*) #1

declare dso_local i64 @BNXT_NEW_RM(%struct.bnxt*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
