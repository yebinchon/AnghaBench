; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_tlv_attr = type { i32 }

@FM10K_ERR_PARAM = common dso_local global i64 0, align 8
@FM10K_TLV_RESULTS_MAX = common dso_local global i64 0, align 8
@FM10K_TLV_LEN_SHIFT = common dso_local global i64 0, align 8
@FM10K_TLV_ID_MASK = common dso_local global i64 0, align 8
@FM10K_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64**, %struct.fm10k_tlv_attr*)* @fm10k_tlv_attr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_tlv_attr_parse(i64* %0, i64** %1, %struct.fm10k_tlv_attr* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca %struct.fm10k_tlv_attr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64** %1, i64*** %6, align 8
  store %struct.fm10k_tlv_attr* %2, %struct.fm10k_tlv_attr** %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64**, i64*** %6, align 8
  %17 = icmp ne i64** %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* @FM10K_ERR_PARAM, align 8
  store i64 %19, i64* %4, align 8
  br label %102

20:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %29, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @FM10K_TLV_RESULTS_MAX, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i64**, i64*** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64*, i64** %26, i64 %27
  store i64* null, i64** %28, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FM10K_TLV_LEN_SHIFT, align 8
  %36 = lshr i64 %34, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i64 0, i64* %4, align 8
  br label %102

40:                                               ; preds = %32
  %41 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %7, align 8
  %42 = icmp ne %struct.fm10k_tlv_attr* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i64*, i64** %5, align 8
  %45 = load i64**, i64*** %6, align 8
  %46 = getelementptr inbounds i64*, i64** %45, i64 0
  store i64* %44, i64** %46, align 8
  store i64 0, i64* %4, align 8
  br label %102

47:                                               ; preds = %40
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %5, align 8
  br label %50

50:                                               ; preds = %83, %47
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %50
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FM10K_TLV_ID_MASK, align 8
  %58 = and i64 %56, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @FM10K_TLV_RESULTS_MAX, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i64, i64* @FM10K_NOT_IMPLEMENTED, align 8
  store i64 %63, i64* %4, align 8
  br label %102

64:                                               ; preds = %54
  %65 = load i64*, i64** %5, align 8
  %66 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %7, align 8
  %67 = call i64 @fm10k_tlv_attr_validate(i64* %65, %struct.fm10k_tlv_attr* %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @FM10K_NOT_IMPLEMENTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %83

72:                                               ; preds = %64
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %4, align 8
  br label %102

77:                                               ; preds = %72
  %78 = load i64*, i64** %5, align 8
  %79 = load i64**, i64*** %6, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i64*, i64** %79, i64 %80
  store i64* %78, i64** %81, align 8
  br label %82

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @FM10K_TLV_DWORD_LEN(i64 %85)
  %87 = mul i64 %86, 4
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = load i64*, i64** %5, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @FM10K_TLV_DWORD_LEN(i64 %92)
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  store i64* %94, i64** %5, align 8
  br label %50

95:                                               ; preds = %50
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* @FM10K_ERR_PARAM, align 8
  store i64 %100, i64* %4, align 8
  br label %102

101:                                              ; preds = %95
  store i64 0, i64* %4, align 8
  br label %102

102:                                              ; preds = %101, %99, %75, %62, %43, %39, %18
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i64 @fm10k_tlv_attr_validate(i64*, %struct.fm10k_tlv_attr*) #1

declare dso_local i64 @FM10K_TLV_DWORD_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
