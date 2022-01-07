; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_connect_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_connect_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i64, i8*, i8* }

@FM10K_MBX_CRC_SEED = common dso_local global i8* null, align 8
@FM10K_STATE_OPEN = common dso_local global i64 0, align 8
@FM10K_STATE_CONNECT = common dso_local global i64 0, align 8
@FM10K_STATE_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*)* @fm10k_mbx_connect_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_info*, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %2, align 8
  %3 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %4 = call i32 @fm10k_mbx_reset_work(%struct.fm10k_mbx_info* %3)
  %5 = load i8*, i8** @FM10K_MBX_CRC_SEED, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @FM10K_MBX_CRC_SEED, align 8
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FM10K_STATE_OPEN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* @FM10K_STATE_CONNECT, align 8
  %18 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %19 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load i64, i64* @FM10K_STATE_CLOSED, align 8
  %22 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %23 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @fm10k_mbx_reset_work(%struct.fm10k_mbx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
