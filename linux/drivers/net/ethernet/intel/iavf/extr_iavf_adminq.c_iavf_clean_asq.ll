; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_clean_asq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_clean_asq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iavf_adminq_ring }
%struct.iavf_adminq_ring = type { i64, i64, i32 }
%struct.iavf_asq_cmd_details = type { i64 }
%struct.iavf_aq_desc = type { i32 }

@IAVF_DEBUG_AQ_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ntc %d head %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iavf_hw*)* @iavf_clean_asq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iavf_clean_asq(%struct.iavf_hw* %0) #0 {
  %2 = alloca %struct.iavf_hw*, align 8
  %3 = alloca %struct.iavf_adminq_ring*, align 8
  %4 = alloca %struct.iavf_asq_cmd_details*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iavf_aq_desc, align 4
  %7 = alloca %struct.iavf_aq_desc*, align 8
  %8 = alloca i32 (%struct.iavf_hw*, %struct.iavf_aq_desc*)*, align 8
  store %struct.iavf_hw* %0, %struct.iavf_hw** %2, align 8
  %9 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.iavf_adminq_ring* %11, %struct.iavf_adminq_ring** %3, align 8
  %12 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %13 = getelementptr inbounds %struct.iavf_adminq_ring, %struct.iavf_adminq_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.iavf_aq_desc* @IAVF_ADMINQ_DESC(%struct.iavf_adminq_ring* byval(%struct.iavf_adminq_ring) align 8 %15, i64 %16)
  store %struct.iavf_aq_desc* %17, %struct.iavf_aq_desc** %7, align 8
  %18 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call %struct.iavf_asq_cmd_details* @IAVF_ADMINQ_DETAILS(%struct.iavf_adminq_ring* byval(%struct.iavf_adminq_ring) align 8 %18, i64 %19)
  store %struct.iavf_asq_cmd_details* %20, %struct.iavf_asq_cmd_details** %4, align 8
  br label %21

21:                                               ; preds = %73, %1
  %22 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %23 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %24 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.iavf_adminq_ring, %struct.iavf_adminq_ring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @rd32(%struct.iavf_hw* %22, i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %21
  %32 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %33 = load i32, i32* @IAVF_DEBUG_AQ_MESSAGE, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %36 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %37 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.iavf_adminq_ring, %struct.iavf_adminq_ring* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @rd32(%struct.iavf_hw* %35, i32 %40)
  %42 = call i32 @iavf_debug(%struct.iavf_hw* %32, i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %41)
  %43 = load %struct.iavf_asq_cmd_details*, %struct.iavf_asq_cmd_details** %4, align 8
  %44 = getelementptr inbounds %struct.iavf_asq_cmd_details, %struct.iavf_asq_cmd_details* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %31
  %48 = load %struct.iavf_asq_cmd_details*, %struct.iavf_asq_cmd_details** %4, align 8
  %49 = getelementptr inbounds %struct.iavf_asq_cmd_details, %struct.iavf_asq_cmd_details* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32 (%struct.iavf_hw*, %struct.iavf_aq_desc*)*
  store i32 (%struct.iavf_hw*, %struct.iavf_aq_desc*)* %51, i32 (%struct.iavf_hw*, %struct.iavf_aq_desc*)** %8, align 8
  %52 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %7, align 8
  %53 = bitcast %struct.iavf_aq_desc* %6 to i8*
  %54 = bitcast %struct.iavf_aq_desc* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load i32 (%struct.iavf_hw*, %struct.iavf_aq_desc*)*, i32 (%struct.iavf_hw*, %struct.iavf_aq_desc*)** %8, align 8
  %56 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %57 = call i32 %55(%struct.iavf_hw* %56, %struct.iavf_aq_desc* %6)
  br label %58

58:                                               ; preds = %47, %31
  %59 = load %struct.iavf_aq_desc*, %struct.iavf_aq_desc** %7, align 8
  %60 = bitcast %struct.iavf_aq_desc* %59 to i8*
  %61 = call i32 @memset(i8* %60, i32 0, i32 4)
  %62 = load %struct.iavf_asq_cmd_details*, %struct.iavf_asq_cmd_details** %4, align 8
  %63 = bitcast %struct.iavf_asq_cmd_details* %62 to i8*
  %64 = call i32 @memset(i8* %63, i32 0, i32 8)
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %69 = getelementptr inbounds %struct.iavf_adminq_ring, %struct.iavf_adminq_ring* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %72, %58
  %74 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call %struct.iavf_aq_desc* @IAVF_ADMINQ_DESC(%struct.iavf_adminq_ring* byval(%struct.iavf_adminq_ring) align 8 %74, i64 %75)
  store %struct.iavf_aq_desc* %76, %struct.iavf_aq_desc** %7, align 8
  %77 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call %struct.iavf_asq_cmd_details* @IAVF_ADMINQ_DETAILS(%struct.iavf_adminq_ring* byval(%struct.iavf_adminq_ring) align 8 %77, i64 %78)
  store %struct.iavf_asq_cmd_details* %79, %struct.iavf_asq_cmd_details** %4, align 8
  br label %21

80:                                               ; preds = %21
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %83 = getelementptr inbounds %struct.iavf_adminq_ring, %struct.iavf_adminq_ring* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.iavf_adminq_ring*, %struct.iavf_adminq_ring** %3, align 8
  %85 = call i64 @IAVF_DESC_UNUSED(%struct.iavf_adminq_ring* %84)
  ret i64 %85
}

declare dso_local %struct.iavf_aq_desc* @IAVF_ADMINQ_DESC(%struct.iavf_adminq_ring* byval(%struct.iavf_adminq_ring) align 8, i64) #1

declare dso_local %struct.iavf_asq_cmd_details* @IAVF_ADMINQ_DETAILS(%struct.iavf_adminq_ring* byval(%struct.iavf_adminq_ring) align 8, i64) #1

declare dso_local i64 @rd32(%struct.iavf_hw*, i32) #1

declare dso_local i32 @iavf_debug(%struct.iavf_hw*, i32, i8*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @IAVF_DESC_UNUSED(%struct.iavf_adminq_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
