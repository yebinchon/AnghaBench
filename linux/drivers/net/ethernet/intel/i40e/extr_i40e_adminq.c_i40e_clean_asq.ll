; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_clean_asq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_clean_asq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40e_adminq_ring }
%struct.i40e_adminq_ring = type { i64, i64, i32 }
%struct.i40e_asq_cmd_details = type { i64 }
%struct.i40e_aq_desc = type { i64 }

@I40E_DEBUG_AQ_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ntc %d head %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*)* @i40e_clean_asq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_clean_asq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca %struct.i40e_adminq_ring*, align 8
  %4 = alloca %struct.i40e_asq_cmd_details*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_aq_desc, align 8
  %7 = alloca %struct.i40e_aq_desc*, align 8
  %8 = alloca i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.i40e_adminq_ring* %11, %struct.i40e_adminq_ring** %3, align 8
  %12 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DESC(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %15, i64 %16)
  %18 = bitcast %struct.i40e_asq_cmd_details* %17 to %struct.i40e_aq_desc*
  store %struct.i40e_aq_desc* %18, %struct.i40e_aq_desc** %7, align 8
  %19 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DETAILS(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %19, i64 %20)
  store %struct.i40e_asq_cmd_details* %21, %struct.i40e_asq_cmd_details** %4, align 8
  br label %22

22:                                               ; preds = %74, %1
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @rd32(%struct.i40e_hw* %23, i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %82

32:                                               ; preds = %22
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %34 = load i32, i32* @I40E_DEBUG_AQ_COMMAND, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @rd32(%struct.i40e_hw* %36, i32 %41)
  %43 = call i32 @i40e_debug(%struct.i40e_hw* %33, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %42)
  %44 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %32
  %49 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)*
  store i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)* %52, i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)** %8, align 8
  %53 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %7, align 8
  %54 = bitcast %struct.i40e_aq_desc* %6 to i8*
  %55 = bitcast %struct.i40e_aq_desc* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = load i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)*, i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)** %8, align 8
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %58 = bitcast %struct.i40e_aq_desc* %6 to %struct.i40e_asq_cmd_details*
  %59 = call i32 %56(%struct.i40e_hw* %57, %struct.i40e_asq_cmd_details* %58)
  br label %60

60:                                               ; preds = %48, %32
  %61 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %7, align 8
  %62 = bitcast %struct.i40e_aq_desc* %61 to %struct.i40e_asq_cmd_details*
  %63 = call i32 @memset(%struct.i40e_asq_cmd_details* %62, i32 0, i32 8)
  %64 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %65 = call i32 @memset(%struct.i40e_asq_cmd_details* %64, i32 0, i32 8)
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %74

74:                                               ; preds = %73, %60
  %75 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DESC(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %75, i64 %76)
  %78 = bitcast %struct.i40e_asq_cmd_details* %77 to %struct.i40e_aq_desc*
  store %struct.i40e_aq_desc* %78, %struct.i40e_aq_desc** %7, align 8
  %79 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DETAILS(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %79, i64 %80)
  store %struct.i40e_asq_cmd_details* %81, %struct.i40e_asq_cmd_details** %4, align 8
  br label %22

82:                                               ; preds = %22
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %85 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %87 = call i64 @I40E_DESC_UNUSED(%struct.i40e_adminq_ring* %86)
  ret i64 %87
}

declare dso_local %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DESC(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8, i64) #1

declare dso_local %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DETAILS(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8, i64) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i64 @I40E_DESC_UNUSED(%struct.i40e_adminq_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
