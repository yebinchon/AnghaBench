; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_create_error_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_create_error_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*, i32)* @fm10k_sm_mbx_create_error_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_sm_mbx_create_error_msg(%struct.fm10k_mbx_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fm10k_mbx_info*, align 8
  %4 = alloca i32, align 4
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %7 [
    i32 128, label %6
    i32 132, label %6
    i32 129, label %6
    i32 130, label %6
    i32 131, label %6
  ]

6:                                                ; preds = %2, %2, %2, %2, %2
  br label %8

7:                                                ; preds = %2
  br label %13

8:                                                ; preds = %6
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %10 = call i32 @fm10k_sm_mbx_process_error(%struct.fm10k_mbx_info* %9)
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %3, align 8
  %12 = call i32 @fm10k_sm_mbx_create_connect_hdr(%struct.fm10k_mbx_info* %11, i32 1)
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @fm10k_sm_mbx_process_error(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_sm_mbx_create_connect_hdr(%struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
