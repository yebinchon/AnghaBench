; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_clk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_clk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_clk_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CUDBG_STATUS_CCLK_NOT_DEFINED = common dso_local global i32 0, align 4
@TP_TIMER_RESOLUTION_A = common dso_local global i32 0, align 4
@TP_DACK_TIMER_A = common dso_local global i32 0, align 4
@TP_RXT_MIN_A = common dso_local global i32 0, align 4
@TP_RXT_MAX_A = common dso_local global i32 0, align 4
@TP_PERS_MIN_A = common dso_local global i32 0, align 4
@TP_PERS_MAX_A = common dso_local global i32 0, align 4
@TP_KEEP_IDLE_A = common dso_local global i32 0, align 4
@TP_KEEP_INTVL_A = common dso_local global i32 0, align 4
@TP_INIT_SRTT_A = common dso_local global i32 0, align 4
@TP_FINWAIT2_TIMER_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_clk_info(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_clk_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %13 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %14 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %8, align 8
  %16 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.adapter*, %struct.adapter** %8, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @CUDBG_STATUS_CCLK_NOT_DEFINED, align 4
  store i32 %24, i32* %4, align 4
  br label %144

25:                                               ; preds = %3
  %26 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %27 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %28 = call i32 @cudbg_get_buff(%struct.cudbg_init* %26, %struct.cudbg_buffer* %27, i32 52, %struct.cudbg_buffer* %9)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %144

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.cudbg_clk_info*
  store %struct.cudbg_clk_info* %36, %struct.cudbg_clk_info** %10, align 8
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 1000000000, %41
  %43 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %44 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.adapter*, %struct.adapter** %8, align 8
  %46 = load i32, i32* @TP_TIMER_RESOLUTION_A, align 4
  %47 = call i32 @t4_read_reg(%struct.adapter* %45, i32 %46)
  %48 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %49 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %51 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TIMERRESOLUTION_G(i32 %52)
  %54 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %55 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %57 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DELAYEDACKRESOLUTION_G(i32 %58)
  %60 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %61 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %63 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %66 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %64, %67
  %69 = sdiv i32 %68, 1000000
  store i32 %69, i32* %11, align 4
  %70 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %71 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %74 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %72, %75
  %77 = sdiv i32 %76, 1000000
  %78 = load %struct.adapter*, %struct.adapter** %8, align 8
  %79 = load i32, i32* @TP_DACK_TIMER_A, align 4
  %80 = call i32 @t4_read_reg(%struct.adapter* %78, i32 %79)
  %81 = mul nsw i32 %77, %80
  %82 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %83 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.adapter*, %struct.adapter** %8, align 8
  %86 = load i32, i32* @TP_RXT_MIN_A, align 4
  %87 = call i32 @t4_read_reg(%struct.adapter* %85, i32 %86)
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %90 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.adapter*, %struct.adapter** %8, align 8
  %93 = load i32, i32* @TP_RXT_MAX_A, align 4
  %94 = call i32 @t4_read_reg(%struct.adapter* %92, i32 %93)
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %97 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.adapter*, %struct.adapter** %8, align 8
  %100 = load i32, i32* @TP_PERS_MIN_A, align 4
  %101 = call i32 @t4_read_reg(%struct.adapter* %99, i32 %100)
  %102 = mul nsw i32 %98, %101
  %103 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %104 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.adapter*, %struct.adapter** %8, align 8
  %107 = load i32, i32* @TP_PERS_MAX_A, align 4
  %108 = call i32 @t4_read_reg(%struct.adapter* %106, i32 %107)
  %109 = mul nsw i32 %105, %108
  %110 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %111 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.adapter*, %struct.adapter** %8, align 8
  %114 = load i32, i32* @TP_KEEP_IDLE_A, align 4
  %115 = call i32 @t4_read_reg(%struct.adapter* %113, i32 %114)
  %116 = mul nsw i32 %112, %115
  %117 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %118 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.adapter*, %struct.adapter** %8, align 8
  %121 = load i32, i32* @TP_KEEP_INTVL_A, align 4
  %122 = call i32 @t4_read_reg(%struct.adapter* %120, i32 %121)
  %123 = mul nsw i32 %119, %122
  %124 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %125 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.adapter*, %struct.adapter** %8, align 8
  %128 = load i32, i32* @TP_INIT_SRTT_A, align 4
  %129 = call i32 @t4_read_reg(%struct.adapter* %127, i32 %128)
  %130 = call i32 @INITSRTT_G(i32 %129)
  %131 = mul nsw i32 %126, %130
  %132 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %133 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %132, i32 0, i32 11
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.adapter*, %struct.adapter** %8, align 8
  %136 = load i32, i32* @TP_FINWAIT2_TIMER_A, align 4
  %137 = call i32 @t4_read_reg(%struct.adapter* %135, i32 %136)
  %138 = mul nsw i32 %134, %137
  %139 = load %struct.cudbg_clk_info*, %struct.cudbg_clk_info** %10, align 8
  %140 = getelementptr inbounds %struct.cudbg_clk_info, %struct.cudbg_clk_info* %139, i32 0, i32 12
  store i32 %138, i32* %140, align 4
  %141 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %142 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %143 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %141, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %142)
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %33, %31, %23
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #2

declare dso_local i32 @TIMERRESOLUTION_G(i32) #2

declare dso_local i32 @DELAYEDACKRESOLUTION_G(i32) #2

declare dso_local i32 @INITSRTT_G(i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
