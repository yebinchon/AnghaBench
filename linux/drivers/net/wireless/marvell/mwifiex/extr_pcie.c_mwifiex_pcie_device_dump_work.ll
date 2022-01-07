; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_device_dump_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_device_dump_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32 }

@MWIFIEX_FW_DUMP_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vzalloc devdump data failure!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_pcie_device_dump_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_pcie_device_dump_work(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %3 = load i32, i32* @MWIFIEX_FW_DUMP_SIZE, align 4
  %4 = call i32 @vzalloc(i32 %3)
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = load i32, i32* @ERROR, align 4
  %14 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %12, i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %17 = call i32 @mwifiex_drv_info_dump(%struct.mwifiex_adapter* %16)
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %19 = call i32 @mwifiex_pcie_fw_dump(%struct.mwifiex_adapter* %18)
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %21 = call i32 @mwifiex_prepare_fw_dump_info(%struct.mwifiex_adapter* %20)
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = call i32 @mwifiex_upload_device_dump(%struct.mwifiex_adapter* %22)
  br label %24

24:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_drv_info_dump(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_fw_dump(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_prepare_fw_dump_info(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_upload_device_dump(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
