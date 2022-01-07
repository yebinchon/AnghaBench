; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_reg_mem_ioctl_reg_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_reg_mem_ioctl_reg_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_reg_rw = type { i32 }

@HostCmd_CMD_MAC_REG_ACCESS = common dso_local global i32 0, align 4
@HostCmd_CMD_BBP_REG_ACCESS = common dso_local global i32 0, align 4
@HostCmd_CMD_RF_REG_ACCESS = common dso_local global i32 0, align 4
@HostCmd_CMD_PMIC_REG_ACCESS = common dso_local global i32 0, align 4
@HostCmd_CMD_CAU_REG_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ds_reg_rw*, i32)* @mwifiex_reg_mem_ioctl_reg_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_reg_mem_ioctl_reg_rw(%struct.mwifiex_private* %0, %struct.mwifiex_ds_reg_rw* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_ds_reg_rw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_ds_reg_rw* %1, %struct.mwifiex_ds_reg_rw** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mwifiex_ds_reg_rw*, %struct.mwifiex_ds_reg_rw** %6, align 8
  %10 = getelementptr inbounds %struct.mwifiex_ds_reg_rw, %struct.mwifiex_ds_reg_rw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %22 [
    i32 130, label %12
    i32 132, label %14
    i32 128, label %16
    i32 129, label %18
    i32 131, label %20
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @HostCmd_CMD_MAC_REG_ACCESS, align 4
  store i32 %13, i32* %8, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i32, i32* @HostCmd_CMD_BBP_REG_ACCESS, align 4
  store i32 %15, i32* %8, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @HostCmd_CMD_RF_REG_ACCESS, align 4
  store i32 %17, i32* %8, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @HostCmd_CMD_PMIC_REG_ACCESS, align 4
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @HostCmd_CMD_CAU_REG_ACCESS, align 4
  store i32 %21, i32* %8, align 4
  br label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

23:                                               ; preds = %20, %18, %16, %14, %12
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.mwifiex_ds_reg_rw*, %struct.mwifiex_ds_reg_rw** %6, align 8
  %28 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %24, i32 %25, i32 %26, i32 0, %struct.mwifiex_ds_reg_rw* %27, i32 1)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_reg_rw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
