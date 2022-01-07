; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_pf_update_stag(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_spq_entry*, align 8
  %5 = alloca %struct.qed_sp_init_data, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %4, align 8
  %7 = call i32 @memset(%struct.qed_sp_init_data* %5, i32 0, i32 12)
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %8)
  %10 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %17 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %19 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %20 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %21 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %18, %struct.qed_spq_entry** %4, i32 %19, i32 %20, %struct.qed_sp_init_data* %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %1
  %27 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %28 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %37 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %42 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %40, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %26
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 13
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %56 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %47, %26
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %63 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %64 = call i32 @qed_spq_post(%struct.qed_hwfn* %62, %struct.qed_spq_entry* %63, i32* null)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %24
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
