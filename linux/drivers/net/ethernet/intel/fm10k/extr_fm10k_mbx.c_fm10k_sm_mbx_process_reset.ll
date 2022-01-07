; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_process_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_process_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i32, i32 }

@FM10K_STATE_CLOSED = common dso_local global i32 0, align 4
@FM10K_ERR_RESET_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_sm_mbx_process_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_sm_mbx_process_reset(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %8 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 128, label %19
    i32 130, label %23
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @FM10K_STATE_CLOSED, align 4
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %16 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %15, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %18 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %21 = call i32 @fm10k_sm_mbx_connect_reset(%struct.fm10k_mbx_info* %20)
  %22 = load i32, i32* @FM10K_ERR_RESET_REQUESTED, align 4
  store i32 %22, i32* %5, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %25 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %28 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %2, %23
  br label %30

30:                                               ; preds = %29, %19, %11
  %31 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %32 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %33 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %34 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fm10k_sm_mbx_create_reply(%struct.fm10k_hw* %31, %struct.fm10k_mbx_info* %32, i32 %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @fm10k_sm_mbx_connect_reset(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_sm_mbx_create_reply(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
