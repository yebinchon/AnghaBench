; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_stats_rx_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_stats_rx_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_hw_stats_q = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FM10K_RXQCTL_ID_MASK = common dso_local global i32 0, align 4
@FM10K_STAT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_hw_stats_q*, i32)* @fm10k_update_hw_stats_rx_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_update_hw_stats_rx_q(%struct.fm10k_hw* %0, %struct.fm10k_hw_stats_q* %1, i32 %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_hw_stats_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_hw_stats_q* %1, %struct.fm10k_hw_stats_q** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @FM10K_RXQCTL(i32 %13)
  %15 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %12, i32 %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %44, %3
  %17 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FM10K_QPRDC(i32 %18)
  %20 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %20, i32 0, i32 3
  %22 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %17, i32 %19, %struct.TYPE_6__* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FM10K_QPRC(i32 %24)
  %26 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %26, i32 0, i32 2
  %28 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %23, i32 %25, %struct.TYPE_6__* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %16
  %32 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @FM10K_QBRC_L(i32 %33)
  %35 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %36 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %35, i32 0, i32 1
  %37 = call i64 @fm10k_read_hw_stats_48b(%struct.fm10k_hw* %32, i32 %34, %struct.TYPE_5__* %36)
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %31, %16
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @FM10K_RXQCTL(i32 %41)
  %43 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %40, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = xor i32 %45, %46
  %48 = load i32, i32* @FM10K_RXQCTL_ID_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %16, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @FM10K_RXQCTL_ID_MASK, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @FM10K_STAT_VALID, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %59 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %66 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %72 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %70
  store i32 %75, i32* %73, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %78 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %76
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %84

84:                                               ; preds = %63, %51
  %85 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %86 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %85, i32 0, i32 3
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_6__* %86, i32 %87)
  %89 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %90 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %89, i32 0, i32 2
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_6__* %90, i32 %91)
  %93 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %94 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %93, i32 0, i32 1
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @fm10k_update_hw_base_48b(%struct.TYPE_5__* %94, i64 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %99 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_RXQCTL(i32) #1

declare dso_local i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @FM10K_QPRDC(i32) #1

declare dso_local i32 @FM10K_QPRC(i32) #1

declare dso_local i64 @fm10k_read_hw_stats_48b(%struct.fm10k_hw*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @FM10K_QBRC_L(i32) #1

declare dso_local i32 @fm10k_update_hw_base_32b(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fm10k_update_hw_base_48b(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
