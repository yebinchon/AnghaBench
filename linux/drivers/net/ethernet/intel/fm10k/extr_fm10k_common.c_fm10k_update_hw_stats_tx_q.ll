; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_stats_tx_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_stats_tx_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_hw_stats_q = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FM10K_TXQCTL_ID_MASK = common dso_local global i32 0, align 4
@FM10K_STAT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_hw_stats_q*, i32)* @fm10k_update_hw_stats_tx_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_update_hw_stats_tx_q(%struct.fm10k_hw* %0, %struct.fm10k_hw_stats_q* %1, i32 %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_hw_stats_q*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_hw_stats_q* %1, %struct.fm10k_hw_stats_q** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @FM10K_TXQCTL(i32 %12)
  %14 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %11, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %37, %3
  %16 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @FM10K_QPTC(i32 %17)
  %19 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %20 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %19, i32 0, i32 2
  %21 = call i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw* %16, i32 %18, %struct.TYPE_6__* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @FM10K_QBTC_L(i32 %26)
  %28 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %29 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %28, i32 0, i32 1
  %30 = call i64 @fm10k_read_hw_stats_48b(%struct.fm10k_hw* %25, i32 %27, %struct.TYPE_5__* %29)
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @FM10K_TXQCTL(i32 %34)
  %36 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %33, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = xor i32 %38, %39
  %41 = load i32, i32* @FM10K_TXQCTL_ID_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %15, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @FM10K_TXQCTL_ID_MASK, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @FM10K_STAT_VALID, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %52 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %59 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %65 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %63
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  br label %71

71:                                               ; preds = %56, %44
  %72 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %73 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %72, i32 0, i32 2
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @fm10k_update_hw_base_32b(%struct.TYPE_6__* %73, i32 %74)
  %76 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %77 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %76, i32 0, i32 1
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @fm10k_update_hw_base_48b(%struct.TYPE_5__* %77, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.fm10k_hw_stats_q*, %struct.fm10k_hw_stats_q** %5, align 8
  %82 = getelementptr inbounds %struct.fm10k_hw_stats_q, %struct.fm10k_hw_stats_q* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXQCTL(i32) #1

declare dso_local i32 @fm10k_read_hw_stats_32b(%struct.fm10k_hw*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @FM10K_QPTC(i32) #1

declare dso_local i64 @fm10k_read_hw_stats_48b(%struct.fm10k_hw*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @FM10K_QBTC_L(i32) #1

declare dso_local i32 @fm10k_update_hw_base_32b(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fm10k_update_hw_base_48b(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
