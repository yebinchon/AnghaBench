; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_create_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_create_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32)* @fm10k_sm_mbx_create_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_sm_mbx_create_reply(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1, i32 %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %8 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %36 [
    i32 128, label %10
    i32 129, label %10
    i32 130, label %33
    i32 131, label %33
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %12 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fm10k_sm_mbx_transmit(%struct.fm10k_hw* %11, %struct.fm10k_mbx_info* %12, i32 %13)
  %15 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %16 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %10
  %25 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %26 = call i32 @fm10k_sm_mbx_create_data_hdr(%struct.fm10k_mbx_info* %25)
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %29 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %31 = call i32 @fm10k_sm_mbx_create_connect_hdr(%struct.fm10k_mbx_info* %30, i32 0)
  br label %32

32:                                               ; preds = %27, %24
  br label %37

33:                                               ; preds = %3, %3
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %35 = call i32 @fm10k_sm_mbx_create_connect_hdr(%struct.fm10k_mbx_info* %34, i32 0)
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %33, %32
  ret void
}

declare dso_local i32 @fm10k_sm_mbx_transmit(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

declare dso_local i32 @fm10k_sm_mbx_create_data_hdr(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_sm_mbx_create_connect_hdr(%struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
