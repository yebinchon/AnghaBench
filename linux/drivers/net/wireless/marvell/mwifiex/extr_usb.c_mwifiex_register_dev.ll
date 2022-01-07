; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i32, i32, i8*, i64 }
%struct.usb_card_rec = type { %struct.TYPE_4__*, %struct.mwifiex_adapter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MWIFIEX_TX_DATA_BUF_SIZE_4K = common dso_local global i8* null, align 8
@USB8997_DEFAULT_FW_NAME = common dso_local global i32 0, align 4
@MWIFIEX_TX_DATA_BUF_SIZE_2K = common dso_local global i8* null, align 8
@USB8766_DEFAULT_FW_NAME = common dso_local global i32 0, align 4
@USB8801_DEFAULT_FW_NAME = common dso_local global i32 0, align 4
@USB8797_DEFAULT_FW_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_register_dev(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.usb_card_rec*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %7, %struct.usb_card_rec** %3, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %9 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %10 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %9, i32 0, i32 1
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %10, align 8
  %11 = load %struct.usb_card_rec*, %struct.usb_card_rec** %3, align 8
  %12 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  switch i32 %17, label %52 [
    i32 129, label %18
    i32 128, label %18
    i32 135, label %29
    i32 134, label %29
    i32 131, label %40
    i32 130, label %40
    i32 133, label %51
    i32 132, label %51
  ]

18:                                               ; preds = %1, %1
  %19 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_4K, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @USB8997_DEFAULT_FW_NAME, align 4
  %26 = call i32 @strcpy(i32 %24, i32 %25)
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %61

29:                                               ; preds = %1, %1
  %30 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_2K, align 8
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB8766_DEFAULT_FW_NAME, align 4
  %37 = call i32 @strcpy(i32 %35, i32 %36)
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %61

40:                                               ; preds = %1, %1
  %41 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_2K, align 8
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @USB8801_DEFAULT_FW_NAME, align 4
  %48 = call i32 @strcpy(i32 %46, i32 %47)
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %61

51:                                               ; preds = %1, %1
  br label %52

52:                                               ; preds = %1, %51
  %53 = load i8*, i8** @MWIFIEX_TX_DATA_BUF_SIZE_2K, align 8
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @USB8797_DEFAULT_FW_NAME, align 4
  %60 = call i32 @strcpy(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %40, %29, %18
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
