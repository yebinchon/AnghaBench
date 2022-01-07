; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_load_bin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_load_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.iwl_trans = type { i32 }
%struct.firmware = type { i32, i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"iwl-dbg-tlv.ini\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_dbg_tlv_load_bin(%struct.device* %0, %struct.iwl_trans* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.iwl_trans* %1, %struct.iwl_trans** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @request_firmware(%struct.firmware** %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %27

16:                                               ; preds = %10
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %18 = load %struct.firmware*, %struct.firmware** %5, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.firmware*, %struct.firmware** %5, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iwl_dbg_tlv_parse_bin(%struct.iwl_trans* %17, i32 %20, i32 %23)
  %25 = load %struct.firmware*, %struct.firmware** %5, align 8
  %26 = call i32 @release_firmware(%struct.firmware* %25)
  br label %27

27:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @iwl_dbg_tlv_parse_bin(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
