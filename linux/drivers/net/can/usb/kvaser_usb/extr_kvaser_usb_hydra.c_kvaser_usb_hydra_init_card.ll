; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.kvaser_usb_dev_card_data_hydra }
%struct.kvaser_usb_dev_card_data_hydra = type { i64, i32, i32, i64, i32, i32, i32 }

@KVASER_USB_HYDRA_MIN_TRANSID = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_MAX_CMD_LEN = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL = common dso_local global i32 0, align 4
@KVASER_USB_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_TRANSID_CANHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CAN\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"CMD_MAP_CHANNEL_REQ failed for CAN%u\0A\00", align 1
@KVASER_USB_HYDRA_TRANSID_SYSDBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SYSDBG\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"CMD_MAP_CHANNEL_REQ failed for SYSDBG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_hydra_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_init_card(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvaser_usb_dev_card_data_hydra*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %7 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %8 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.kvaser_usb_dev_card_data_hydra* %9, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %10 = load i32, i32* @KVASER_USB_HYDRA_MIN_TRANSID, align 4
  %11 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %12 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %14 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %13, i32 0, i32 5
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %17 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @KVASER_USB_HYDRA_MAX_CMD_LEN, align 4
  %20 = call i32 @memset(i32 %18, i32 0, i32 %19)
  %21 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %24 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %27 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL, align 4
  %30 = call i32 @memset(i32 %28, i32 %29, i32 4)
  %31 = load %struct.kvaser_usb_dev_card_data_hydra*, %struct.kvaser_usb_dev_card_data_hydra** %6, align 8
  %32 = getelementptr inbounds %struct.kvaser_usb_dev_card_data_hydra, %struct.kvaser_usb_dev_card_data_hydra* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %55, %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @KVASER_USB_MAX_NET_DEVICES, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %39 = load i32, i32* @KVASER_USB_HYDRA_TRANSID_CANHE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @kvaser_usb_hydra_map_channel(%struct.kvaser_usb* %38, i32 %41, i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %48 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %60 = load i32, i32* @KVASER_USB_HYDRA_TRANSID_SYSDBG, align 4
  %61 = call i32 @kvaser_usb_hydra_map_channel(%struct.kvaser_usb* %59, i32 %60, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %66 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %64, %46
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_map_channel(%struct.kvaser_usb*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
