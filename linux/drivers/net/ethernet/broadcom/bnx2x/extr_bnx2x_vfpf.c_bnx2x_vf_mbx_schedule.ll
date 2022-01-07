; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.vf_pf_event_data = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8* }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"vf pf event received: vfid %d, address_hi %x, address lo %x\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Illegal vf_id %d max allowed: %d\0A\00", align 1
@BNX2X_IOV_HANDLE_VF_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vf_mbx_schedule(%struct.bnx2x* %0, %struct.vf_pf_event_data* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.vf_pf_event_data*, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.vf_pf_event_data* %1, %struct.vf_pf_event_data** %4, align 8
  %6 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %7 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %8 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %11 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %14 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @DP(i32 %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12, i32 %15)
  %17 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %18 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = call %struct.TYPE_6__* @BP_VFDB(%struct.bnx2x* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %19, %24
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = call i64 @BNX2X_NR_VIRTFN(%struct.bnx2x* %26)
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %31 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = call i64 @BNX2X_NR_VIRTFN(%struct.bnx2x* %33)
  %35 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %34)
  br label %76

36:                                               ; preds = %2
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %39 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @bnx2x_vf_idx_by_abs_fid(%struct.bnx2x* %37, i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = call %struct.TYPE_6__* @BP_VFDB(%struct.bnx2x* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %47 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call %struct.TYPE_5__* @BP_VF_MBX(%struct.bnx2x* %50, i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  %54 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %55 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call %struct.TYPE_5__* @BP_VF_MBX(%struct.bnx2x* %58, i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = shl i64 1, %62
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = call %struct.TYPE_6__* @BP_VFDB(%struct.bnx2x* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = call %struct.TYPE_6__* @BP_VFDB(%struct.bnx2x* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load i32, i32* @BNX2X_IOV_HANDLE_VF_MSG, align 4
  %75 = call i32 @bnx2x_schedule_iov_task(%struct.bnx2x* %73, i32 %74)
  br label %76

76:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, i32, i32) #1

declare dso_local %struct.TYPE_6__* @BP_VFDB(%struct.bnx2x*) #1

declare dso_local i64 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64) #1

declare dso_local i64 @bnx2x_vf_idx_by_abs_fid(%struct.bnx2x*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @BP_VF_MBX(%struct.bnx2x*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bnx2x_schedule_iov_task(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
