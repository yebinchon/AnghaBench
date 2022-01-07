; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_hwrm_ring_free_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_hwrm_ring_free_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.hwrm_ring_free_output* }
%struct.hwrm_ring_free_output = type { i32 }
%struct.bnxt_ring_struct = type { i32 }
%struct.hwrm_ring_free_input = type { i32, i32, i32 }

@BNXT_STATE_FW_FATAL_COND = common dso_local global i32 0, align 4
@HWRM_RING_FREE = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"hwrm_ring_free type %d failed. rc:%x err:%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_ring_struct*, i32, i32)* @hwrm_ring_free_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwrm_ring_free_send_msg(%struct.bnxt* %0, %struct.bnxt_ring_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_ring_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hwrm_ring_free_input, align 4
  %12 = alloca %struct.hwrm_ring_free_output*, align 8
  %13 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_ring_struct* %1, %struct.bnxt_ring_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.hwrm_ring_free_input* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  %15 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 3
  %17 = load %struct.hwrm_ring_free_output*, %struct.hwrm_ring_free_output** %16, align 8
  store %struct.hwrm_ring_free_output* %17, %struct.hwrm_ring_free_output** %12, align 8
  %18 = load i32, i32* @BNXT_STATE_FW_FATAL_COND, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

24:                                               ; preds = %4
  %25 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %26 = load i32, i32* @HWRM_RING_FREE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %25, %struct.hwrm_ring_free_input* %11, i32 %26, i32 %27, i32 -1)
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.hwrm_ring_free_input, %struct.hwrm_ring_free_input* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %7, align 8
  %32 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.hwrm_ring_free_input, %struct.hwrm_ring_free_input* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %40 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %41 = call i32 @_hwrm_send_message(%struct.bnxt* %39, %struct.hwrm_ring_free_input* %11, i32 12, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.hwrm_ring_free_output*, %struct.hwrm_ring_free_output** %12, align 8
  %43 = getelementptr inbounds %struct.hwrm_ring_free_output, %struct.hwrm_ring_free_output* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %24
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51, %24
  %55 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %56 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @netdev_err(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i64 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %54, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_ring_free_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_ring_free_input*, i32, i32) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
