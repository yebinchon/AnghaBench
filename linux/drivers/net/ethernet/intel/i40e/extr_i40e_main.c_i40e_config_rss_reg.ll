; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_rss_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_rss_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i64, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__*, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_PFQF_HKEY_MAX_INDEX = common dso_local global i64 0, align 8
@I40E_VSI_SRIOV = common dso_local global i64 0, align 8
@I40E_VFQF_HKEY1_MAX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot set RSS seed - invalid VSI type\0A\00", align 1
@I40E_HLUT_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@I40E_PFQF_HLUT_MAX_INDEX = common dso_local global i64 0, align 8
@I40E_VF_HLUT_ARRAY_SIZE = common dso_local global i64 0, align 8
@I40E_VFQF_HLUT_MAX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot set RSS LUT - invalid VSI type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i64*, i64*, i64)* @i40e_config_rss_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_rss_reg(%struct.i40e_vsi* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 2
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %10, align 8
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  store %struct.i40e_hw* %20, %struct.i40e_hw** %11, align 8
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %85

26:                                               ; preds = %4
  %27 = load i64*, i64** %7, align 8
  %28 = bitcast i64* %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @I40E_VSI_MAIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %26
  store i64 0, i64* %13, align 8
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @I40E_PFQF_HKEY_MAX_INDEX, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @I40E_PFQF_HKEY(i64 %41)
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wr32(%struct.i40e_hw* %40, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %13, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %13, align 8
  br label %35

51:                                               ; preds = %35
  br label %84

52:                                               ; preds = %26
  %53 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %54 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @I40E_VSI_SRIOV, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @I40E_VFQF_HKEY1_MAX_INDEX, align 8
  %62 = icmp ule i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @I40E_VFQF_HKEY1(i64 %65, i64 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wr32(%struct.i40e_hw* %64, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %13, align 8
  br label %59

76:                                               ; preds = %59
  br label %83

77:                                               ; preds = %52
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %76
  br label %84

84:                                               ; preds = %83, %51
  br label %85

85:                                               ; preds = %84, %4
  %86 = load i64*, i64** %8, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %161

88:                                               ; preds = %85
  %89 = load i64*, i64** %8, align 8
  %90 = bitcast i64* %89 to i32*
  store i32* %90, i32** %15, align 8
  %91 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @I40E_VSI_MAIN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %88
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %164

103:                                              ; preds = %96
  store i64 0, i64* %13, align 8
  br label %104

104:                                              ; preds = %117, %103
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @I40E_PFQF_HLUT_MAX_INDEX, align 8
  %107 = icmp ule i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @I40E_PFQF_HLUT(i64 %110)
  %112 = load i32*, i32** %15, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @wr32(%struct.i40e_hw* %109, i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %108
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %13, align 8
  br label %104

120:                                              ; preds = %104
  br label %160

121:                                              ; preds = %88
  %122 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %123 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @I40E_VSI_SRIOV, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %153

127:                                              ; preds = %121
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @I40E_VF_HLUT_ARRAY_SIZE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %164

134:                                              ; preds = %127
  store i64 0, i64* %13, align 8
  br label %135

135:                                              ; preds = %149, %134
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @I40E_VFQF_HLUT_MAX_INDEX, align 8
  %138 = icmp ule i64 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %12, align 8
  %143 = call i32 @I40E_VFQF_HLUT1(i64 %141, i64 %142)
  %144 = load i32*, i32** %15, align 8
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @wr32(%struct.i40e_hw* %140, i32 %143, i32 %147)
  br label %149

149:                                              ; preds = %139
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %13, align 8
  br label %135

152:                                              ; preds = %135
  br label %159

153:                                              ; preds = %121
  %154 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %155 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %159

159:                                              ; preds = %153, %152
  br label %160

160:                                              ; preds = %159, %120
  br label %161

161:                                              ; preds = %160, %85
  %162 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %163 = call i32 @i40e_flush(%struct.i40e_hw* %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %161, %131, %100
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFQF_HKEY(i64) #1

declare dso_local i32 @I40E_VFQF_HKEY1(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @I40E_PFQF_HLUT(i64) #1

declare dso_local i32 @I40E_VFQF_HLUT1(i64, i64) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
