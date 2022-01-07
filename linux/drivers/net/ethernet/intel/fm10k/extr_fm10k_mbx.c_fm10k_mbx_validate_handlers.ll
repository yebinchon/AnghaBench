; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_validate_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_validate_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_msg_data = type { i32, i32, %struct.fm10k_tlv_attr* }
%struct.fm10k_tlv_attr = type { i32 }

@FM10K_TLV_ERROR = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_TLV_RESULTS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_msg_data*)* @fm10k_mbx_validate_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_validate_handlers(%struct.fm10k_msg_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_msg_data*, align 8
  %4 = alloca %struct.fm10k_tlv_attr*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_msg_data* %0, %struct.fm10k_msg_data** %3, align 8
  %6 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %7 = icmp ne %struct.fm10k_msg_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %78, %9
  %11 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FM10K_TLV_ERROR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %10
  %17 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %18 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %16
  %24 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %25 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %24, i32 0, i32 2
  %26 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %25, align 8
  store %struct.fm10k_tlv_attr* %26, %struct.fm10k_tlv_attr** %4, align 8
  %27 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %4, align 8
  %28 = icmp ne %struct.fm10k_tlv_attr* %27, null
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %55, %29
  %31 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %4, align 8
  %32 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FM10K_TLV_ERROR, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %4, align 8
  %38 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %4, align 8
  %41 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %40, i32 1
  store %struct.fm10k_tlv_attr* %41, %struct.fm10k_tlv_attr** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %4, align 8
  %44 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %48, i32* %2, align 4
  br label %93

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FM10K_TLV_RESULTS_MAX, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %54, i32* %2, align 4
  br label %93

55:                                               ; preds = %49
  br label %30

56:                                               ; preds = %30
  %57 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %4, align 8
  %58 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FM10K_TLV_ERROR, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %63, i32* %2, align 4
  br label %93

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %23
  %66 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %67 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %5, align 4
  %69 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %70 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %69, i32 1
  store %struct.fm10k_msg_data* %70, %struct.fm10k_msg_data** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %73 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp uge i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %77, i32* %2, align 4
  br label %93

78:                                               ; preds = %65
  br label %10

79:                                               ; preds = %10
  %80 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %81 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FM10K_TLV_ERROR, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %3, align 8
  %87 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85, %79
  %91 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %90, %76, %62, %53, %47, %21, %8
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
