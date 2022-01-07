; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_is_windows_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_is_windows_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.vfpf_acquire_tlv = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VF_OS_MASK = common dso_local global i32 0, align 4
@VF_OS_WINDOWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.vfpf_acquire_tlv*)* @bnx2x_vf_mbx_is_windows_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_mbx_is_windows_vm(%struct.bnx2x* %0, %struct.vfpf_acquire_tlv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.vfpf_acquire_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.vfpf_acquire_tlv* %1, %struct.vfpf_acquire_tlv** %5, align 8
  %6 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %5, align 8
  %7 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %5, align 8
  %12 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %5, align 8
  %18 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VF_OS_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @VF_OS_WINDOWS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %10, %2
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
