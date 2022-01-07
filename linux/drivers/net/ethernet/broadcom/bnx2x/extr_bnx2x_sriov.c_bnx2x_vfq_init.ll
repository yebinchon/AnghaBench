; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vf_queue = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BNX2X_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@q_data = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"initialized vf %d's queue object. func id set to %d. cid set to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*)* @bnx2x_vfq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfq_init(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_queue* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vf_queue** %6, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %11 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %12 = call i32 @vfq_cl_id(%struct.bnx2x_virtf* %10, %struct.bnx2x_vf_queue* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FW_VF_HANDLE(i32 %15)
  store i32 %16, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %17 = load i32, i32* @BNX2X_Q_TYPE_HAS_TX, align 4
  %18 = call i32 @set_bit(i32 %17, i64* %9)
  %19 = load i32, i32* @BNX2X_Q_TYPE_HAS_RX, align 4
  %20 = call i32 @set_bit(i32 %19, i64* %9)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %22, i32 0, i32 2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %30 = load i32, i32* @q_data, align 4
  %31 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %28, %struct.bnx2x_virtf* %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %34 = load i32, i32* @q_data, align 4
  %35 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %32, %struct.bnx2x_virtf* %33, i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @bnx2x_init_queue_obj(%struct.bnx2x* %21, %struct.TYPE_2__* %23, i32 %24, i32* %26, i32 1, i32 %27, i32 %31, i32 %35, i64 %36)
  %38 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %39 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %41 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %42 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DP(i32 %40, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %47, i32 %50)
  ret void
}

declare dso_local i32 @vfq_cl_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_init_queue_obj(%struct.bnx2x*, %struct.TYPE_2__*, i32, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @bnx2x_vf_sp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_sp_map(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
