; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_pf_switch_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_pf_switch_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_aqc_switch_config_element_resp = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"type=%d seid=%d uplink=%d downlink=%d\0A\00", align 1
@I40E_MAX_VEB = common dso_local global i32 0, align 4
@I40E_NO_VEB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"pf_seid=%d main_vsi_seid=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown element type=%d seid=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, %struct.i40e_aqc_switch_config_element_resp*, i32, i32)* @i40e_setup_pf_switch_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_setup_pf_switch_element(%struct.i40e_pf* %0, %struct.i40e_aqc_switch_config_element_resp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_aqc_switch_config_element_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %5, align 8
  store %struct.i40e_aqc_switch_config_element_resp* %1, %struct.i40e_aqc_switch_config_element_resp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.i40e_aqc_switch_config_element_resp*, %struct.i40e_aqc_switch_config_element_resp** %6, align 8
  %26 = getelementptr inbounds %struct.i40e_aqc_switch_config_element_resp, %struct.i40e_aqc_switch_config_element_resp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %4
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %195 [
    i32 134, label %43
    i32 130, label %47
    i32 128, label %165
    i32 131, label %194
    i32 129, label %194
    i32 135, label %194
    i32 136, label %194
    i32 132, label %194
    i32 133, label %194
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %203

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %203

54:                                               ; preds = %47
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I40E_MAX_VEB, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %91, %60
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @I40E_MAX_VEB, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %67 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %65
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 5
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %89 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %74, %65
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %61

94:                                               ; preds = %86, %61
  %95 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %96 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @I40E_MAX_VEB, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %102 = call i32 @i40e_veb_mem_alloc(%struct.i40e_pf* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %203

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %94
  br label %111

111:                                              ; preds = %110, %54
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @I40E_MAX_VEB, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %203

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 5
  %122 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %121, align 8
  %123 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %124 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %122, i64 %126
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 %119, i32* %129, align 8
  %130 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %131 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %134 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %133, i32 0, i32 5
  %135 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %134, align 8
  %136 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %137 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %135, i64 %139
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32 %132, i32* %142, align 4
  %143 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %144 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %145 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %144, i32 0, i32 5
  %146 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %145, align 8
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %146, i64 %150
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  store %struct.i40e_pf* %143, %struct.i40e_pf** %153, align 8
  %154 = load i32, i32* @I40E_NO_VEB, align 4
  %155 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %156 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %155, i32 0, i32 5
  %157 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %156, align 8
  %158 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %159 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %157, i64 %161
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  store i32 %154, i32* %164, align 8
  br label %203

165:                                              ; preds = %41
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %203

169:                                              ; preds = %165
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %172 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %175 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %178 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %169
  %182 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %183 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %182, i32 0, i32 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %187 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %190 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %191)
  br label %193

193:                                              ; preds = %181, %169
  br label %203

194:                                              ; preds = %41, %41, %41, %41, %41, %41
  br label %203

195:                                              ; preds = %41
  %196 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %197 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %196, i32 0, i32 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %195, %194, %193, %168, %118, %117, %105, %53, %43
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @i40e_veb_mem_alloc(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
