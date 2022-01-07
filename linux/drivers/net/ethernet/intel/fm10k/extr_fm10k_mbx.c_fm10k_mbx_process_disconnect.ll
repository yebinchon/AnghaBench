; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i64, i64, i32 }

@HEAD = common dso_local global i32 0, align 4
@FM10K_MBX_ERR_TAIL = common dso_local global i64 0, align 8
@FM10K_MBX_ERR_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_process_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_mbx_process_disconnect(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 4
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HEAD, align 4
  %18 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %20 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @FM10K_MBX_ERR_TAIL, align 8
  store i64 %24, i64* %3, align 8
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %29 = call i64 @fm10k_mbx_verify_remote_crc(%struct.fm10k_mbx_info* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %3, align 8
  br label %58

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %52 [
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %38 = call i32 @fm10k_mbx_tx_complete(%struct.fm10k_mbx_info* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %44 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @FM10K_MBX_ERR_HEAD, align 8
  store i64 %48, i64* %3, align 8
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %51 = call i32 @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info* %50)
  br label %53

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %49, %40
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %55 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @fm10k_mbx_create_reply(%struct.fm10k_hw* %54, %struct.fm10k_mbx_info* %55, i32 %56)
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %53, %47, %32, %23
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i64 @fm10k_mbx_verify_remote_crc(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_tx_complete(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info*) #1

declare dso_local i64 @fm10k_mbx_create_reply(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
