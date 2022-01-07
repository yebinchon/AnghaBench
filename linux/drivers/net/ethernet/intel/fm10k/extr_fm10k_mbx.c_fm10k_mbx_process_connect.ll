; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_process_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CONNECT_SIZE = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_process_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_process_connect(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  %9 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %10 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %13 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %12, i32 0, i32 4
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CONNECT_SIZE, align 4
  %17 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HEAD, align 4
  %21 = call i32 @FM10K_MSG_HDR_FIELD_GET(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %48 [
    i32 129, label %23
    i32 128, label %23
    i32 130, label %26
  ]

23:                                               ; preds = %2, %2
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %25 = call i32 @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info* %24)
  br label %49

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %29 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %35 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %40 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %47

41:                                               ; preds = %26
  %42 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %43 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %42, i32 0, i32 0
  store i32 128, i32* %43, align 4
  %44 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @fm10k_mbx_update_max_size(%struct.fm10k_mbx_info* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %33
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %47, %23
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %52 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %54 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @fm10k_mbx_create_reply(%struct.fm10k_hw* %53, %struct.fm10k_mbx_info* %54, i32 %55)
  ret i32 %56
}

declare dso_local i32 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i32 @fm10k_mbx_connect_reset(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_update_max_size(%struct.fm10k_mbx_info*, i32) #1

declare dso_local i32 @fm10k_mbx_create_reply(%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
