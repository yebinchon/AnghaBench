; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ds_read_eeprom = type { i8*, i32, i8* }

@HostCmd_CMD_802_11_EEPROM_ACCESS = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i32 0, align 4
@MAX_EEPROM_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_eeprom_read(%struct.mwifiex_private* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_ds_read_eeprom, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, %struct.mwifiex_ds_read_eeprom* %10, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, %struct.mwifiex_ds_read_eeprom* %10, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %16 = load i32, i32* @HostCmd_CMD_802_11_EEPROM_ACCESS, align 4
  %17 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %18 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %15, i32 %16, i32 %17, i32 0, %struct.mwifiex_ds_read_eeprom* %10, i32 1)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, %struct.mwifiex_ds_read_eeprom* %10, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @MAX_EEPROM_DATA, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds %struct.mwifiex_ds_read_eeprom, %struct.mwifiex_ds_read_eeprom* %10, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @min(i8* %26, i8* %28)
  %30 = call i32 @memcpy(i32* %22, i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %21, %4
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_read_eeprom*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @min(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
