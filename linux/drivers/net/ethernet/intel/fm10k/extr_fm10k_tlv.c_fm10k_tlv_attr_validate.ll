; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_tlv_attr = type { i32, i32, i32 }

@FM10K_TLV_ID_MASK = common dso_local global i32 0, align 4
@FM10K_TLV_LEN_SHIFT = common dso_local global i32 0, align 4
@FM10K_TLV_FLAGS_MSG = common dso_local global i32 0, align 4
@FM10K_TLV_FLAGS_SHIFT = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.fm10k_tlv_attr*)* @fm10k_tlv_attr_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_tlv_attr_validate(i32* %0, %struct.fm10k_tlv_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fm10k_tlv_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.fm10k_tlv_attr* %1, %struct.fm10k_tlv_attr** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FM10K_TLV_ID_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FM10K_TLV_LEN_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FM10K_TLV_FLAGS_MSG, align 4
  %19 = load i32, i32* @FM10K_TLV_FLAGS_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %24, i32* %3, align 4
  br label %123

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %32, %25
  %27 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %34 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %33, i32 1
  store %struct.fm10k_tlv_attr* %34, %struct.fm10k_tlv_attr** %5, align 8
  br label %26

35:                                               ; preds = %26
  %36 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %37 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @FM10K_NOT_IMPLEMENTED, align 4
  store i32 %42, i32* %3, align 4
  br label %123

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %4, align 8
  %46 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %47 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %120 [
    i32 130, label %49
    i32 132, label %78
    i32 134, label %85
    i32 128, label %91
    i32 129, label %91
    i32 133, label %100
    i32 131, label %113
  ]

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sdiv i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = srem i32 %61, 4
  %63 = mul nsw i32 8, %62
  %64 = shl i32 255, %63
  %65 = and i32 %59, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52, %49
  %68 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %68, i32* %3, align 4
  br label %123

69:                                               ; preds = %52
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %72 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %76, i32* %3, align 4
  br label %123

77:                                               ; preds = %69
  br label %122

78:                                               ; preds = %43
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %83, i32* %3, align 4
  br label %123

84:                                               ; preds = %78
  br label %122

85:                                               ; preds = %43
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %89, i32* %3, align 4
  br label %123

90:                                               ; preds = %85
  br label %122

91:                                               ; preds = %43, %43
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %94 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %98, i32* %3, align 4
  br label %123

99:                                               ; preds = %91
  br label %122

100:                                              ; preds = %43
  %101 = load i32, i32* %7, align 4
  %102 = srem i32 %101, 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.fm10k_tlv_attr*, %struct.fm10k_tlv_attr** %5, align 8
  %107 = getelementptr inbounds %struct.fm10k_tlv_attr, %struct.fm10k_tlv_attr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104, %100
  %111 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %111, i32* %3, align 4
  br label %123

112:                                              ; preds = %104
  br label %122

113:                                              ; preds = %43
  %114 = load i32, i32* %7, align 4
  %115 = srem i32 %114, 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %118, i32* %3, align 4
  br label %123

119:                                              ; preds = %113
  br label %122

120:                                              ; preds = %43
  %121 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %121, i32* %3, align 4
  br label %123

122:                                              ; preds = %119, %112, %99, %90, %84, %77
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %120, %117, %110, %97, %88, %82, %75, %67, %41, %23
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
