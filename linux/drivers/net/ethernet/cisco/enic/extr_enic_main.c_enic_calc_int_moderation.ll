; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_calc_int_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_calc_int_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.enic = type { %struct.vnic_cq*, %struct.enic_rx_coal }
%struct.vnic_cq = type { i32, i32, %struct.vnic_rx_bytes_counter }
%struct.vnic_rx_bytes_counter = type { i32, i32 }
%struct.enic_rx_coal = type { i32, i32, i32 }
%struct.vnic_rq = type { i32 }

@ENIC_AIC_TS_BREAK = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@ENIC_MAX_COALESCE_TIMERS = common dso_local global i32 0, align 4
@mod_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*, %struct.vnic_rq*)* @enic_calc_int_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_calc_int_moderation(%struct.enic* %0, %struct.vnic_rq* %1) #0 {
  %3 = alloca %struct.enic*, align 8
  %4 = alloca %struct.vnic_rq*, align 8
  %5 = alloca %struct.enic_rx_coal*, align 8
  %6 = alloca %struct.vnic_cq*, align 8
  %7 = alloca %struct.vnic_rx_bytes_counter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %3, align 8
  store %struct.vnic_rq* %1, %struct.vnic_rq** %4, align 8
  %14 = load %struct.enic*, %struct.enic** %3, align 8
  %15 = getelementptr inbounds %struct.enic, %struct.enic* %14, i32 0, i32 1
  store %struct.enic_rx_coal* %15, %struct.enic_rx_coal** %5, align 8
  %16 = load %struct.enic*, %struct.enic** %3, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 0
  %18 = load %struct.vnic_cq*, %struct.vnic_cq** %17, align 8
  %19 = load %struct.enic*, %struct.enic** %3, align 8
  %20 = load %struct.vnic_rq*, %struct.vnic_rq** %4, align 8
  %21 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @enic_cq_rq(%struct.enic* %19, i32 %22)
  %24 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %18, i64 %23
  store %struct.vnic_cq* %24, %struct.vnic_cq** %6, align 8
  %25 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %26 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %25, i32 0, i32 2
  store %struct.vnic_rx_bytes_counter* %26, %struct.vnic_rx_bytes_counter** %7, align 8
  %27 = call i32 (...) @ktime_get()
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %30 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ktime_us_delta(i32 %28, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @ENIC_AIC_TS_BREAK, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %125

37:                                               ; preds = %2
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %40 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %7, align 8
  %42 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %7, align 8
  %45 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, 3
  store i32 %49, i32* %11, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @UINT_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %59

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %12, align 8
  %57 = trunc i64 %56 to i32
  %58 = sdiv i32 %55, %57
  br label %59

59:                                               ; preds = %54, %53
  %60 = phi i32 [ 0, %53 ], [ %58, %54 ]
  store i32 %60, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %76, %59
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ENIC_MAX_COALESCE_TIMERS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mod_table, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %66, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %61

79:                                               ; preds = %74, %61
  %80 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %7, align 8
  %81 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %7, align 8
  %84 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 1
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %90 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  br label %96

92:                                               ; preds = %79
  %93 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %94 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %91, %88 ], [ %95, %92 ]
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %100 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mod_table, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %103, %109
  %111 = sdiv i32 %110, 100
  %112 = add nsw i32 %98, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %115 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = ashr i32 %117, 1
  %119 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %120 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %7, align 8
  %122 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  %123 = load %struct.vnic_rx_bytes_counter*, %struct.vnic_rx_bytes_counter** %7, align 8
  %124 = getelementptr inbounds %struct.vnic_rx_bytes_counter, %struct.vnic_rx_bytes_counter* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %96, %36
  ret void
}

declare dso_local i64 @enic_cq_rq(%struct.enic*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
