; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_drv_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_drv_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32 }

@MWIFIEX_802_11_POWER_MODE_PSP = common dso_local global i32 0, align 4
@MWIFIEX_802_11_POWER_MODE_CAM = common dso_local global i32 0, align 4
@EN_AUTO_PS = common dso_local global i64 0, align 8
@DIS_AUTO_PS = common dso_local global i64 0, align 8
@HostCmd_CMD_802_11_PS_MODE_ENH = common dso_local global i32 0, align 4
@BITMAP_STA_PS = common dso_local global i32 0, align 4
@GET_PS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_drv_set_power(%struct.mwifiex_private* %0, i64* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 0
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  store %struct.mwifiex_adapter* %10, %struct.mwifiex_adapter** %6, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @MWIFIEX_802_11_POWER_MODE_PSP, align 4
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @MWIFIEX_802_11_POWER_MODE_CAM, align 4
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @EN_AUTO_PS, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @DIS_AUTO_PS, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %7, align 8
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %33 = load i32, i32* @HostCmd_CMD_802_11_PS_MODE_ENH, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @BITMAP_STA_PS, align 4
  %36 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %32, i32 %33, i64 %34, i32 %35, i32* null, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @DIS_AUTO_PS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %45 = load i32, i32* @HostCmd_CMD_802_11_PS_MODE_ENH, align 4
  %46 = load i64, i64* @GET_PS, align 8
  %47 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %44, i32 %45, i64 %46, i32 0, i32* null, i32 0)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %39, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
