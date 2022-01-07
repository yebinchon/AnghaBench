; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_update_tpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_update_tpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vfpf_tpa_tlv }
%struct.vfpf_tpa_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_queue_update_tpa_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_update_tpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_update_tpa(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.bnx2x_queue_update_tpa_params, align 4
  %8 = alloca %struct.vfpf_tpa_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.vfpf_tpa_tlv* %14, %struct.vfpf_tpa_tlv** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = call i32 @memset(%struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 44)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %18 = call i64 @bnx2x_validate_tpa_params(%struct.bnx2x* %16, %struct.vfpf_tpa_tlv* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %81

21:                                               ; preds = %3
  %22 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %23 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 10
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %28 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 9
  store i32 %30, i32* %31, align 4
  %32 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %33 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %38 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %43 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %48 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %53 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %58 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %63 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %68 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %73 = getelementptr inbounds %struct.vfpf_tpa_tlv, %struct.vfpf_tpa_tlv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.bnx2x_queue_update_tpa_params, %struct.bnx2x_queue_update_tpa_params* %7, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %78 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %79 = load %struct.vfpf_tpa_tlv*, %struct.vfpf_tpa_tlv** %8, align 8
  %80 = call i32 @bnx2x_vf_tpa_update(%struct.bnx2x* %77, %struct.bnx2x_virtf* %78, %struct.vfpf_tpa_tlv* %79, %struct.bnx2x_queue_update_tpa_params* %7)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %21, %20
  %82 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %83 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %82, %struct.bnx2x_virtf* %83, i32 %84)
  ret void
}

declare dso_local i32 @memset(%struct.bnx2x_queue_update_tpa_params*, i32, i32) #1

declare dso_local i64 @bnx2x_validate_tpa_params(%struct.bnx2x*, %struct.vfpf_tpa_tlv*) #1

declare dso_local i32 @bnx2x_vf_tpa_update(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_tpa_tlv*, %struct.bnx2x_queue_update_tpa_params*) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
