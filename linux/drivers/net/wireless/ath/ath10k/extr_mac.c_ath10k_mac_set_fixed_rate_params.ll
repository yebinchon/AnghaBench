; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_fixed_rate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_fixed_rate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"mac set fixed rate params vdev %i rate 0x%02hhx nss %hhu sgi %hhu\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to set fixed rate param 0x%02x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to set nss param %d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to set sgi param %d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to set ldpc param %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*, i32, i32, i32, i32)* @ath10k_mac_set_fixed_rate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_set_fixed_rate_params(%struct.ath10k_vif* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath10k*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %16 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %15, i32 0, i32 1
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %12, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %22 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %23 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %24 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ath10k_dbg(%struct.ath10k* %21, i32 %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %37 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %38 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %5
  %46 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @ath10k_warn(%struct.ath10k* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %118

51:                                               ; preds = %5
  %52 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %53 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %59 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %60 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %51
  %68 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ath10k_warn(%struct.ath10k* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %118

73:                                               ; preds = %51
  %74 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %75 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %81 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %82 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %80, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ath10k_warn(%struct.ath10k* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %6, align 4
  br label %118

95:                                               ; preds = %73
  %96 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %97 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %103 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %104 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %102, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @ath10k_warn(%struct.ath10k* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %118

117:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %111, %89, %67, %45
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
