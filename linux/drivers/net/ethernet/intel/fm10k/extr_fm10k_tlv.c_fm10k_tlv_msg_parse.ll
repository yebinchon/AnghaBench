; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_msg_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_msg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32 }
%struct.fm10k_msg_data = type { i32, i64 (%struct.fm10k_hw.0*, i32**, %struct.fm10k_mbx_info.1*)*, i32 }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque

@FM10K_TLV_RESULTS_MAX = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i64 0, align 8
@FM10K_TLV_FLAGS_MSG = common dso_local global i32 0, align 4
@FM10K_TLV_FLAGS_SHIFT = common dso_local global i32 0, align 4
@FM10K_TLV_ID_MASK = common dso_local global i32 0, align 4
@FM10K_TLV_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fm10k_tlv_msg_parse(%struct.fm10k_hw* %0, i32* %1, %struct.fm10k_mbx_info* %2, %struct.fm10k_msg_data* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fm10k_mbx_info*, align 8
  %9 = alloca %struct.fm10k_msg_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.fm10k_mbx_info* %2, %struct.fm10k_mbx_info** %8, align 8
  store %struct.fm10k_msg_data* %3, %struct.fm10k_msg_data** %9, align 8
  %15 = load i32, i32* @FM10K_TLV_RESULTS_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %23 = icmp ne %struct.fm10k_msg_data* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %4
  %25 = load i64, i64* @FM10K_ERR_PARAM, align 8
  store i64 %25, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %86

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FM10K_TLV_FLAGS_MSG, align 4
  %30 = load i32, i32* @FM10K_TLV_FLAGS_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* @FM10K_ERR_PARAM, align 8
  store i64 %35, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %86

36:                                               ; preds = %26
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FM10K_TLV_ID_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %47, %36
  %42 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %43 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %49 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %48, i32 1
  store %struct.fm10k_msg_data* %49, %struct.fm10k_msg_data** %9, align 8
  br label %41

50:                                               ; preds = %41
  %51 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %52 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %63, %56
  %58 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %59 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FM10K_TLV_ERROR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %65 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %64, i32 1
  store %struct.fm10k_msg_data* %65, %struct.fm10k_msg_data** %9, align 8
  br label %57

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %70 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @fm10k_tlv_attr_parse(i32* %68, i32** %18, i32 %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %86

77:                                               ; preds = %67
  %78 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %9, align 8
  %79 = getelementptr inbounds %struct.fm10k_msg_data, %struct.fm10k_msg_data* %78, i32 0, i32 1
  %80 = load i64 (%struct.fm10k_hw.0*, i32**, %struct.fm10k_mbx_info.1*)*, i64 (%struct.fm10k_hw.0*, i32**, %struct.fm10k_mbx_info.1*)** %79, align 8
  %81 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %82 = bitcast %struct.fm10k_hw* %81 to %struct.fm10k_hw.0*
  %83 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %84 = bitcast %struct.fm10k_mbx_info* %83 to %struct.fm10k_mbx_info.1*
  %85 = call i64 %80(%struct.fm10k_hw.0* %82, i32** %18, %struct.fm10k_mbx_info.1* %84)
  store i64 %85, i64* %5, align 8
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %77, %75, %34, %24
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fm10k_tlv_attr_parse(i32*, i32**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
