; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_validate_mqprio_qopt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_validate_mqprio_qopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.tc_mqprio_qopt_offload = type { i64*, %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i64*, i32, i64* }

@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid min tx rate (greater than 0) specified\0A\00", align 1
@I40E_BW_MBPS_DIVISOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid max tx rate specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.tc_mqprio_qopt_offload*)* @i40e_validate_mqprio_qopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_validate_mqprio_qopt(%struct.i40e_vsi* %0, %struct.tc_mqprio_qopt_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.tc_mqprio_qopt_offload*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.tc_mqprio_qopt_offload* %1, %struct.tc_mqprio_qopt_offload** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %10 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %18 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %24 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %16, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %163

32:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %119, %32
  %34 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %35 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %163

46:                                               ; preds = %33
  %47 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %48 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %57 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %163

65:                                               ; preds = %46
  %66 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %67 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* @I40E_BW_MBPS_DIVISOR, align 4
  %75 = call i32 @do_div(i64 %73, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %81 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = icmp sge i32 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  br label %122

87:                                               ; preds = %65
  %88 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %89 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %98 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %106 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %104, %112
  %114 = icmp ne i64 %96, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %87
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %163

118:                                              ; preds = %87
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %33

122:                                              ; preds = %86
  %123 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %124 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %127 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %135 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %133, %141
  %143 = icmp slt i64 %125, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %122
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %163

147:                                              ; preds = %122
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %150 = call i64 @i40e_get_link_speed(%struct.i40e_vsi* %149)
  %151 = icmp sgt i64 %148, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %154 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %163

162:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %152, %144, %115, %55, %43, %29
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @i40e_get_link_speed(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
