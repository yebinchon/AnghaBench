; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_mac_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_mac_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_mac_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_mac_info = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@e1000_media_type_copper = common dso_local global i32 0, align 4
@E1000_ICH_RAR_ENTRIES = common dso_local global i64 0, align 8
@e1000_check_mng_mode_ich8lan = common dso_local global i32 0, align 4
@e1000e_id_led_init_generic = common dso_local global i32 0, align 4
@e1000e_blink_led_generic = common dso_local global i32 0, align 4
@e1000e_setup_led_generic = common dso_local global i32 0, align 4
@e1000_cleanup_led_ich8lan = common dso_local global i32 0, align 4
@e1000_led_on_ich8lan = common dso_local global i32 0, align 4
@e1000_led_off_ich8lan = common dso_local global i32 0, align 4
@E1000_PCH2_RAR_ENTRIES = common dso_local global i64 0, align 8
@e1000_rar_set_pch2lan = common dso_local global i32 0, align 4
@e1000_check_mng_mode_pchlan = common dso_local global i32 0, align 4
@e1000_id_led_init_pchlan = common dso_local global i32 0, align 4
@e1000_setup_led_pchlan = common dso_local global i32 0, align 4
@e1000_cleanup_led_pchlan = common dso_local global i32 0, align 4
@e1000_led_on_pchlan = common dso_local global i32 0, align 4
@e1000_led_off_pchlan = common dso_local global i32 0, align 4
@E1000_PCH_LPT_RAR_ENTRIES = common dso_local global i64 0, align 8
@e1000_rar_set_pch_lpt = common dso_local global i32 0, align 4
@e1000_setup_copper_link_pch_lpt = common dso_local global i32 0, align 4
@e1000_rar_get_count_pch_lpt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 1
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = load i32, i32* @e1000_media_type_copper, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %10, i32 0, i32 0
  store i32 32, i32* %11, align 8
  %12 = load i64, i64* @E1000_ICH_RAR_ENTRIES, align 8
  %13 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 6
  store i64 %12, i64* %14, align 8
  %15 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 134
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 4
  store i32 1, i32* %30, align 8
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %96 [
    i32 134, label %34
    i32 133, label %34
    i32 135, label %34
    i32 132, label %63
    i32 130, label %71
    i32 129, label %71
    i32 131, label %71
    i32 128, label %71
  ]

34:                                               ; preds = %24, %24, %24
  %35 = load i32, i32* @e1000_check_mng_mode_ich8lan, align 4
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 8
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @e1000e_id_led_init_generic, align 4
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @e1000e_blink_led_generic, align 4
  %44 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 9
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @e1000e_setup_led_generic, align 4
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @e1000_cleanup_led_ich8lan, align 4
  %52 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @e1000_led_on_ich8lan, align 4
  %56 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @e1000_led_off_ich8lan, align 4
  %60 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %61 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  br label %97

63:                                               ; preds = %24
  %64 = load i64, i64* @E1000_PCH2_RAR_ENTRIES, align 8
  %65 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %65, i32 0, i32 6
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @e1000_rar_set_pch2lan, align 4
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %24, %24, %24, %24, %63
  %72 = load i32, i32* @e1000_check_mng_mode_pchlan, align 4
  %73 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 8
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @e1000_id_led_init_pchlan, align 4
  %77 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 7
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @e1000_setup_led_pchlan, align 4
  %81 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @e1000_cleanup_led_pchlan, align 4
  %85 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @e1000_led_on_pchlan, align 4
  %89 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @e1000_led_off_pchlan, align 4
  %93 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  br label %97

96:                                               ; preds = %24
  br label %97

97:                                               ; preds = %96, %71, %34
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 130
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load i64, i64* @E1000_PCH_LPT_RAR_ENTRIES, align 8
  %104 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %104, i32 0, i32 6
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @e1000_rar_set_pch_lpt, align 4
  %107 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @e1000_setup_copper_link_pch_lpt, align 4
  %111 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @e1000_rar_get_count_pch_lpt, align 4
  %115 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %116 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %102, %97
  %119 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 134
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %125 = call i32 @e1000e_set_kmrn_lock_loss_workaround_ich8lan(%struct.e1000_hw* %124, i32 1)
  br label %126

126:                                              ; preds = %123, %118
  ret i32 0
}

declare dso_local i32 @e1000e_set_kmrn_lock_loss_workaround_ich8lan(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
