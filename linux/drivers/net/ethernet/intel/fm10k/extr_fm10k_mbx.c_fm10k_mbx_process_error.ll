; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i8*, i8*, i32 }

@HEAD = common dso_local global i32 0, align 4
@FM10K_MBX_CRC_SEED = common dso_local global i8* null, align 8
@FM10K_STATE_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_process_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_process_error(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %8 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %9 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %8, i32 0, i32 4
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HEAD, align 4
  %13 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %40 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %19 = call i32 @fm10k_mbx_reset_work(%struct.fm10k_mbx_info* %18)
  %20 = load i8*, i8** @FM10K_MBX_CRC_SEED, align 8
  %21 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %22 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @FM10K_MBX_CRC_SEED, align 8
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %25 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i32, i32* @FM10K_STATE_CONNECT, align 4
  %35 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %36 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %17
  %38 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %39 = call i32 @fm10k_mbx_create_connect_hdr(%struct.fm10k_mbx_info* %38)
  store i32 0, i32* %3, align 4
  br label %48

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %43 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %44 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %45 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fm10k_mbx_create_reply(%struct.fm10k_hw* %42, %struct.fm10k_mbx_info* %43, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i32 @fm10k_mbx_reset_work(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_create_connect_hdr(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_create_reply(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
