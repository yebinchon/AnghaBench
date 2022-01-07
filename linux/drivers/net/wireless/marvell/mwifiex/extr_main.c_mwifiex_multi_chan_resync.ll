; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_multi_chan_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_multi_chan_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.usb_card_rec* }
%struct.usb_card_rec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_private = type { i32 }

@MWIFIEX_TX_DATA_PORT = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pending data urb in sys\0A\00", align 1
@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@HostCmd_CMD_RECONFIGURE_TX_BUFF = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"send reconfig tx buf size cmd err\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_multi_chan_resync(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.usb_card_rec*, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load %struct.usb_card_rec*, %struct.usb_card_rec** %9, align 8
  store %struct.usb_card_rec* %10, %struct.usb_card_rec** %3, align 8
  %11 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %12 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MWIFIEX_TX_DATA_PORT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %19 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %29 = load i32, i32* @WARN, align 4
  %30 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %28, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %51

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %37 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 65535, i32* %5, align 4
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %39 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %40 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %38, i32 %39)
  store %struct.mwifiex_private* %40, %struct.mwifiex_private** %4, align 8
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %42 = load i32, i32* @HostCmd_CMD_RECONFIGURE_TX_BUFF, align 4
  %43 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %44 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %41, i32 %42, i32 %43, i32 0, i32* %5, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %48, i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %27, %47, %35
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
