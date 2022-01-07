; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_map_channel_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_map_channel_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.kvaser_usb_dev_card_data_hydra }
%struct.kvaser_usb_dev_card_data_hydra = type { i64*, i64 }
%struct.kvaser_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"CMD_MAP_CHANNEL_RESP, invalid transid: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unknown CMD_MAP_CHANNEL_RESP transid=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_map_channel_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_map_channel_resp(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvaser_usb*, align 8
  %5 = alloca %struct.kvaser_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvaser_usb_dev_card_data_hydra*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %4, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %5, align 8
  %10 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %11 = call i32 @kvaser_usb_hydra_get_cmd_transid(%struct.kvaser_cmd* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %13 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.kvaser_usb_dev_card_data_hydra* %14, %struct.kvaser_usb_dev_card_data_hydra** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 127
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 64
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %2
  %21 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %52 [
    i32 129, label %31
    i32 130, label %31
    i32 131, label %31
    i32 132, label %31
    i32 133, label %31
    i32 128, label %45
  ]

31:                                               ; preds = %29, %29, %29, %29, %29
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %9, align 8
  %41 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %39, i64* %44, align 8
  br label %59

45:                                               ; preds = %29
  %46 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %9, align 8
  %51 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %59

52:                                               ; preds = %29
  %53 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %54 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %52, %45, %31
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @kvaser_usb_hydra_get_cmd_transid(%struct.kvaser_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
