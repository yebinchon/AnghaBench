; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_img.h_iwl_get_ucode_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_img.h_iwl_get_ucode_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_img = type { i32 }
%struct.iwl_fw = type { %struct.fw_img* }

@IWL_UCODE_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_img* (%struct.iwl_fw*, i32)* @iwl_get_ucode_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_img* @iwl_get_ucode_image(%struct.iwl_fw* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_img*, align 8
  %4 = alloca %struct.iwl_fw*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_fw* %0, %struct.iwl_fw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IWL_UCODE_TYPE_MAX, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.fw_img* null, %struct.fw_img** %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.iwl_fw*, %struct.iwl_fw** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %11, i32 0, i32 0
  %13 = load %struct.fw_img*, %struct.fw_img** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %13, i64 %15
  store %struct.fw_img* %16, %struct.fw_img** %3, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.fw_img*, %struct.fw_img** %3, align 8
  ret %struct.fw_img* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
