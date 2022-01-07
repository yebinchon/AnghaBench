; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM10K_MBX_ERR_NO_SPACE = common dso_local global i32 0, align 4
@FM10K_STATE_CLOSED = common dso_local global i64 0, align 8
@FM10K_MBX_ERR_BUSY = common dso_local global i32 0, align 4
@FM10K_MBX_INIT_TIMEOUT = common dso_local global i32 0, align 4
@FM10K_STATE_CONNECT = common dso_local global i64 0, align 8
@FM10K_MBX_REQ_INTERRUPT = common dso_local global i32 0, align 4
@FM10K_MBX_ACK_INTERRUPT = common dso_local global i32 0, align 4
@FM10K_MBX_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_connect(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @FM10K_MBX_ERR_NO_SPACE, align 4
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FM10K_STATE_CLOSED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @FM10K_MBX_ERR_BUSY, align 4
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %13
  %22 = load i32, i32* @FM10K_MBX_INIT_TIMEOUT, align 4
  %23 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %24 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @FM10K_STATE_CONNECT, align 8
  %26 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %29 = call i32 @fm10k_mbx_reset_work(%struct.fm10k_mbx_info* %28)
  %30 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %31 = call i32 @fm10k_mbx_create_fake_disconnect_hdr(%struct.fm10k_mbx_info* %30)
  %32 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %33 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %34 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %37 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %35, %38
  %40 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %41 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %32, i32 %39, i32 %42)
  %44 = load i32, i32* @FM10K_MBX_REQ_INTERRUPT, align 4
  %45 = load i32, i32* @FM10K_MBX_ACK_INTERRUPT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FM10K_MBX_INTERRUPT_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %50 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %52 = call i32 @fm10k_mbx_create_connect_hdr(%struct.fm10k_mbx_info* %51)
  %53 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %54 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %55 = call i32 @fm10k_mbx_write(%struct.fm10k_hw* %53, %struct.fm10k_mbx_info* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %21, %19, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fm10k_mbx_reset_work(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_create_fake_disconnect_hdr(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @fm10k_mbx_create_connect_hdr(%struct.fm10k_mbx_info*) #1

declare dso_local i32 @fm10k_mbx_write(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
