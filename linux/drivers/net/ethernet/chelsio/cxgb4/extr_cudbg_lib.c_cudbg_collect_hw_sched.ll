; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_hw_sched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_hw_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_hw_sched = type { i32*, i32*, i32, i32, i32 }

@CUDBG_STATUS_CCLK_NOT_DEFINED = common dso_local global i32 0, align 4
@TP_TX_MOD_QUEUE_REQ_MAP_A = common dso_local global i32 0, align 4
@TP_MOD_CONFIG_A = common dso_local global i32 0, align 4
@NTX_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_hw_sched(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_hw_sched*, align 8
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
  store i32 0, i32* %12, align 4
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
  br label %80

25:                                               ; preds = %3
  %26 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %27 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %28 = call i32 @cudbg_get_buff(%struct.cudbg_init* %26, %struct.cudbg_buffer* %27, i32 32, %struct.cudbg_buffer* %9)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %80

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.cudbg_hw_sched*
  store %struct.cudbg_hw_sched* %36, %struct.cudbg_hw_sched** %10, align 8
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = load i32, i32* @TP_TX_MOD_QUEUE_REQ_MAP_A, align 4
  %39 = call i32 @t4_read_reg(%struct.adapter* %37, i32 %38)
  %40 = load %struct.cudbg_hw_sched*, %struct.cudbg_hw_sched** %10, align 8
  %41 = getelementptr inbounds %struct.cudbg_hw_sched, %struct.cudbg_hw_sched* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.adapter*, %struct.adapter** %8, align 8
  %43 = load i32, i32* @TP_MOD_CONFIG_A, align 4
  %44 = call i32 @t4_read_reg(%struct.adapter* %42, i32 %43)
  %45 = call i32 @TIMERMODE_G(i32 %44)
  %46 = load %struct.cudbg_hw_sched*, %struct.cudbg_hw_sched** %10, align 8
  %47 = getelementptr inbounds %struct.cudbg_hw_sched, %struct.cudbg_hw_sched* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.adapter*, %struct.adapter** %8, align 8
  %49 = load %struct.cudbg_hw_sched*, %struct.cudbg_hw_sched** %10, align 8
  %50 = getelementptr inbounds %struct.cudbg_hw_sched, %struct.cudbg_hw_sched* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @t4_read_pace_tbl(%struct.adapter* %48, i32 %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %73, %33
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @NTX_SCHED, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.cudbg_hw_sched*, %struct.cudbg_hw_sched** %10, align 8
  %61 = getelementptr inbounds %struct.cudbg_hw_sched, %struct.cudbg_hw_sched* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.cudbg_hw_sched*, %struct.cudbg_hw_sched** %10, align 8
  %67 = getelementptr inbounds %struct.cudbg_hw_sched, %struct.cudbg_hw_sched* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @t4_get_tx_sched(%struct.adapter* %58, i32 %59, i32* %65, i32* %71, i32 1)
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %53

76:                                               ; preds = %53
  %77 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %78 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %79 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %77, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %31, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #2

declare dso_local i32 @TIMERMODE_G(i32) #2

declare dso_local i32 @t4_read_pace_tbl(%struct.adapter*, i32) #2

declare dso_local i32 @t4_get_tx_sched(%struct.adapter*, i32, i32*, i32*, i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
