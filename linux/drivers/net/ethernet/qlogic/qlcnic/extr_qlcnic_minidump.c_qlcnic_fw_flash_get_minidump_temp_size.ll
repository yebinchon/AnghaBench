; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_fw_flash_get_minidump_temp_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_fw_flash_get_minidump_temp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.qlcnic_83xx_dump_template_hdr = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_MINIDUMP_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*)* @qlcnic_fw_flash_get_minidump_temp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_fw_flash_get_minidump_temp_size(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_83xx_dump_template_hdr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %15
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %24 = load i32, i32* @QLC_83XX_MINIDUMP_FLASH, align 4
  %25 = bitcast %struct.qlcnic_83xx_dump_template_hdr* %6 to i32*
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter* %23, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %29 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %28)
  %30 = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, %struct.qlcnic_83xx_dump_template_hdr* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %33 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %31, i32* %36, align 4
  %37 = getelementptr inbounds %struct.qlcnic_83xx_dump_template_hdr, %struct.qlcnic_83xx_dump_template_hdr* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %22, %19, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter*, i32, i32*, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
