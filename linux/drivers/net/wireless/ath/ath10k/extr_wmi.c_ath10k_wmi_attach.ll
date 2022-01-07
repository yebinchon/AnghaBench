; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@wmi_10_4_ops = common dso_local global i32 0, align 4
@wmi_10_4_cmd_map = common dso_local global i32 0, align 4
@wmi_10_4_vdev_param_map = common dso_local global i32 0, align 4
@wmi_10_4_pdev_param_map = common dso_local global i32 0, align 4
@wmi_10_2_peer_flags_map = common dso_local global i32 0, align 4
@wmi_key_cipher_suites = common dso_local global i8* null, align 8
@wmi_10_2_4_cmd_map = common dso_local global i32 0, align 4
@wmi_10_2_4_ops = common dso_local global i32 0, align 4
@wmi_10_2_4_vdev_param_map = common dso_local global i32 0, align 4
@wmi_10_2_4_pdev_param_map = common dso_local global i32 0, align 4
@wmi_10_2_cmd_map = common dso_local global i32 0, align 4
@wmi_10_2_ops = common dso_local global i32 0, align 4
@wmi_10x_vdev_param_map = common dso_local global i32 0, align 4
@wmi_10x_pdev_param_map = common dso_local global i32 0, align 4
@wmi_10x_cmd_map = common dso_local global i32 0, align 4
@wmi_10_1_ops = common dso_local global i32 0, align 4
@wmi_10x_peer_flags_map = common dso_local global i32 0, align 4
@wmi_cmd_map = common dso_local global i32 0, align 4
@wmi_ops = common dso_local global i32 0, align 4
@wmi_vdev_param_map = common dso_local global i32 0, align 4
@wmi_pdev_param_map = common dso_local global i32 0, align 4
@wmi_peer_flags_map = common dso_local global i32 0, align 4
@wmi_tlv_key_cipher_suites = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"unsupported WMI op version: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ath10k_wmi_event_service_ready_work = common dso_local global i32 0, align 4
@ath10k_radar_confirmation_work = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_MGMT_TX_BY_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_attach(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %122 [
    i32 132, label %10
    i32 133, label %29
    i32 134, label %48
    i32 135, label %67
    i32 131, label %86
    i32 129, label %105
    i32 128, label %111
    i32 130, label %111
  ]

10:                                               ; preds = %1
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 8
  store i32* @wmi_10_4_ops, i32** %13, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  store i32* @wmi_10_4_cmd_map, i32** %16, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 7
  store i32* @wmi_10_4_vdev_param_map, i32** %19, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  store i32* @wmi_10_4_pdev_param_map, i32** %22, align 8
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  store i32* @wmi_10_2_peer_flags_map, i32** %25, align 8
  %26 = load i8*, i8** @wmi_key_cipher_suites, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %122

29:                                               ; preds = %1
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 9
  store i32* @wmi_10_2_4_cmd_map, i32** %32, align 8
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 8
  store i32* @wmi_10_2_4_ops, i32** %35, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  store i32* @wmi_10_2_4_vdev_param_map, i32** %38, align 8
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  store i32* @wmi_10_2_4_pdev_param_map, i32** %41, align 8
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  store i32* @wmi_10_2_peer_flags_map, i32** %44, align 8
  %45 = load i8*, i8** @wmi_key_cipher_suites, align 8
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %122

48:                                               ; preds = %1
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 9
  store i32* @wmi_10_2_cmd_map, i32** %51, align 8
  %52 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  store i32* @wmi_10_2_ops, i32** %54, align 8
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  store i32* @wmi_10x_vdev_param_map, i32** %57, align 8
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  store i32* @wmi_10x_pdev_param_map, i32** %60, align 8
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  store i32* @wmi_10_2_peer_flags_map, i32** %63, align 8
  %64 = load i8*, i8** @wmi_key_cipher_suites, align 8
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %122

67:                                               ; preds = %1
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 9
  store i32* @wmi_10x_cmd_map, i32** %70, align 8
  %71 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  store i32* @wmi_10_1_ops, i32** %73, align 8
  %74 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %75 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  store i32* @wmi_10x_vdev_param_map, i32** %76, align 8
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  store i32* @wmi_10x_pdev_param_map, i32** %79, align 8
  %80 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %81 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i32* @wmi_10x_peer_flags_map, i32** %82, align 8
  %83 = load i8*, i8** @wmi_key_cipher_suites, align 8
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %122

86:                                               ; preds = %1
  %87 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %88 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 9
  store i32* @wmi_cmd_map, i32** %89, align 8
  %90 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %91 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 8
  store i32* @wmi_ops, i32** %92, align 8
  %93 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %94 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 7
  store i32* @wmi_vdev_param_map, i32** %95, align 8
  %96 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %97 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  store i32* @wmi_pdev_param_map, i32** %98, align 8
  %99 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %100 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 5
  store i32* @wmi_peer_flags_map, i32** %101, align 8
  %102 = load i8*, i8** @wmi_key_cipher_suites, align 8
  %103 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %104 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  br label %122

105:                                              ; preds = %1
  %106 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %107 = call i32 @ath10k_wmi_tlv_attach(%struct.ath10k* %106)
  %108 = load i8*, i8** @wmi_tlv_key_cipher_suites, align 8
  %109 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %110 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  br label %122

111:                                              ; preds = %1, %1
  %112 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %113 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %114 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ath10k_err(%struct.ath10k* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %162

122:                                              ; preds = %1, %105, %86, %67, %48, %29, %10
  %123 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %124 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = call i32 @init_completion(i32* %125)
  %127 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %128 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = call i32 @init_completion(i32* %129)
  %131 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %132 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = call i32 @init_completion(i32* %133)
  %135 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %136 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = call i32 @init_completion(i32* %137)
  %139 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %140 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %139, i32 0, i32 3
  %141 = load i32, i32* @ath10k_wmi_event_service_ready_work, align 4
  %142 = call i32 @INIT_WORK(i32* %140, i32 %141)
  %143 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %144 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %143, i32 0, i32 2
  %145 = load i32, i32* @ath10k_radar_confirmation_work, align 4
  %146 = call i32 @INIT_WORK(i32* %144, i32 %145)
  %147 = load i32, i32* @ATH10K_FW_FEATURE_MGMT_TX_BY_REF, align 4
  %148 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %149 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @test_bit(i32 %147, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %122
  %157 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %158 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = call i32 @idr_init(i32* %159)
  br label %161

161:                                              ; preds = %156, %122
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %111
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @ath10k_wmi_tlv_attach(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @idr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
