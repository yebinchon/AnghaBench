; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, i32, i32, i32, i32 }

@FM10K_MBX_ERR_BUSY = common dso_local global i32 0, align 4
@FM10K_MBX_REQ_INTERRUPT = common dso_local global i32 0, align 4
@FM10K_MBX_ACK = common dso_local global i32 0, align 4
@FM10K_MBX_ACK_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_read(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FM10K_MBX_ERR_BUSY, align 4
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %13, i32 %16)
  %18 = load i32, i32* @FM10K_MBX_REQ_INTERRUPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @FM10K_MBX_ACK, align 4
  %23 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %24 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %27 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FM10K_MBX_REQ_INTERRUPT, align 4
  %31 = load i32, i32* @FM10K_MBX_ACK_INTERRUPT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %26, i32 %29, i32 %32)
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %35 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %36 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %39 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %37, %40
  %42 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %34, i32 %41)
  %43 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %44 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %25, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
