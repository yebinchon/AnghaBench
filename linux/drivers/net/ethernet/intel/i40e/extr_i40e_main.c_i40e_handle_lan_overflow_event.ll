; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_handle_lan_overflow_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_handle_lan_overflow_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_vf*, %struct.TYPE_7__*, %struct.i40e_hw }
%struct.i40e_vf = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.i40e_arq_event_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_aqc_lan_overflow = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"overflow Rx Queue Number = %d QTX_CTL=0x%08x\0A\00", align 1
@I40E_QTX_CTL_PFVF_Q_MASK = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PFVF_Q_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VF_QUEUE = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, %struct.i40e_arq_event_info*)* @i40e_handle_lan_overflow_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_handle_lan_overflow_event(%struct.i40e_pf* %0, %struct.i40e_arq_event_info* %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_arq_event_info*, align 8
  %5 = alloca %struct.i40e_aqc_lan_overflow*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca %struct.i40e_vf*, align 8
  %10 = alloca i64, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store %struct.i40e_arq_event_info* %1, %struct.i40e_arq_event_info** %4, align 8
  %11 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.i40e_aqc_lan_overflow*
  store %struct.i40e_aqc_lan_overflow* %15, %struct.i40e_aqc_lan_overflow** %5, align 8
  %16 = load %struct.i40e_aqc_lan_overflow*, %struct.i40e_aqc_lan_overflow** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_aqc_lan_overflow, %struct.i40e_aqc_lan_overflow* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.i40e_aqc_lan_overflow*, %struct.i40e_aqc_lan_overflow** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_aqc_lan_overflow, %struct.i40e_aqc_lan_overflow* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 2
  store %struct.i40e_hw* %25, %struct.i40e_hw** %8, align 8
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @I40E_QTX_CTL_PFVF_Q_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @I40E_QTX_CTL_PFVF_Q_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @I40E_QTX_CTL_VF_QUEUE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %48 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 0
  %55 = load %struct.i40e_vf*, %struct.i40e_vf** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %55, i64 %56
  store %struct.i40e_vf* %57, %struct.i40e_vf** %9, align 8
  %58 = load %struct.i40e_vf*, %struct.i40e_vf** %9, align 8
  %59 = call i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf* %58)
  %60 = call i32 @msleep(i32 20)
  %61 = load %struct.i40e_vf*, %struct.i40e_vf** %9, align 8
  %62 = call i32 @i40e_reset_vf(%struct.i40e_vf* %61, i32 0)
  br label %63

63:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i40e_reset_vf(%struct.i40e_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
