; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_process_version_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_sm_mbx_process_version_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i32, i32 }

@SM_TAIL = common dso_local global i32 0, align 4
@SM_HEAD = common dso_local global i32 0, align 4
@FM10K_STATE_CONNECT = common dso_local global i64 0, align 8
@FM10K_MBX_ERR_SRC = common dso_local global i64 0, align 8
@FM10K_STATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_sm_mbx_process_version_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_sm_mbx_process_version_1(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %10, i32 0, i32 2
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SM_TAIL, align 4
  %15 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SM_HEAD, align 4
  %19 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FM10K_STATE_CONNECT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  %32 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %33 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @FM10K_MBX_ERR_SRC, align 8
  store i64 %37, i64* %3, align 8
  br label %62

38:                                               ; preds = %31
  %39 = load i64, i64* @FM10K_STATE_OPEN, align 8
  %40 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %41 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %2
  br label %43

43:                                               ; preds = %53, %42
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %45 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @fm10k_sm_mbx_receive(%struct.fm10k_hw* %44, %struct.fm10k_mbx_info* %45, i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %3, align 8
  br label %62

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %59 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @fm10k_sm_mbx_create_reply(%struct.fm10k_hw* %58, %struct.fm10k_mbx_info* %59, i32 %60)
  store i64 0, i64* %3, align 8
  br label %62

62:                                               ; preds = %57, %50, %36
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i64 @fm10k_sm_mbx_receive(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

declare dso_local i32 @fm10k_sm_mbx_create_reply(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
