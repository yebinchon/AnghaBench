; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc5000_assign_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc5000_assign_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_fw_cfg = type { i32 }

@xc5000a_1_6_114 = common dso_local global %struct.xc5000_fw_cfg zeroinitializer, align 4
@xc5000c_41_024_5 = common dso_local global %struct.xc5000_fw_cfg zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xc5000_fw_cfg* (i32)* @xc5000_assign_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xc5000_fw_cfg* @xc5000_assign_firmware(i32 %0) #0 {
  %2 = alloca %struct.xc5000_fw_cfg*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %5 [
    i32 129, label %6
    i32 128, label %7
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %5
  store %struct.xc5000_fw_cfg* @xc5000a_1_6_114, %struct.xc5000_fw_cfg** %2, align 8
  br label %8

7:                                                ; preds = %1
  store %struct.xc5000_fw_cfg* @xc5000c_41_024_5, %struct.xc5000_fw_cfg** %2, align 8
  br label %8

8:                                                ; preds = %7, %6
  %9 = load %struct.xc5000_fw_cfg*, %struct.xc5000_fw_cfg** %2, align 8
  ret %struct.xc5000_fw_cfg* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
