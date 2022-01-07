; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque

@FM10K_MBX_DISCONNECT_TIMEOUT = common dso_local global i32 0, align 4
@FM10K_STATE_DISCONNECT = common dso_local global i64 0, align 8
@FM10K_MBX_REQ = common dso_local global i32 0, align 4
@FM10K_MBX_INTERRUPT_DISABLE = common dso_local global i32 0, align 4
@FM10K_MBX_POLL_DELAY = common dso_local global i64 0, align 8
@FM10K_STATE_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_disconnect(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FM10K_MBX_DISCONNECT_TIMEOUT, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @FM10K_STATE_DISCONNECT, align 8
  %16 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %17 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %19 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %20 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FM10K_MBX_REQ, align 4
  %23 = load i32, i32* @FM10K_MBX_INTERRUPT_DISABLE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %52, %13
  %27 = load i64, i64* @FM10K_MBX_POLL_DELAY, align 8
  %28 = call i32 @udelay(i64 %27)
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)** %31, align 8
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %34 = bitcast %struct.fm10k_hw* %33 to %struct.fm10k_hw.0*
  %35 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %36 = bitcast %struct.fm10k_mbx_info* %35 to %struct.fm10k_mbx_info.1*
  %37 = call i32 %32(%struct.fm10k_hw.0* %34, %struct.fm10k_mbx_info.1* %36)
  %38 = load i64, i64* @FM10K_MBX_POLL_DELAY, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %48 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FM10K_STATE_CLOSED, align 8
  %51 = icmp ne i64 %49, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %26, label %54

54:                                               ; preds = %52
  %55 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %56 = call i32 @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info* %55)
  %57 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %58 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %57, i32 0, i32 3
  %59 = call i32 @fm10k_fifo_drop_all(i32* %58)
  %60 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %61 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %62 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %60, i32 %63, i32 0)
  ret void
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_fifo_drop_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
