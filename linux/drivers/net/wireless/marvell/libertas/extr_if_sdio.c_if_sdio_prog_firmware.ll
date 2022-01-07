; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@IF_SDIO_H_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"firmware status = %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"scratch ret = %d\0A\00", align 1
@IF_SDIO_FIRMWARE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"firmware already loaded\0A\00", align 1
@MODEL_8686 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"firmware may be running\0A\00", align 1
@fw_table = common dso_local global i32 0, align 4
@if_sdio_do_prog_firmware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_prog_firmware(%struct.if_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.if_sdio_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %3, align 8
  %6 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %7 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @sdio_claim_host(%struct.TYPE_4__* %8)
  %10 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %11 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* @IF_SDIO_H_INT_MASK, align 4
  %14 = call i32 @sdio_writeb(%struct.TYPE_4__* %12, i32 0, i32 %13, i32* %4)
  %15 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %16 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @sdio_release_host(%struct.TYPE_4__* %17)
  %19 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %20 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @sdio_claim_host(%struct.TYPE_4__* %21)
  %23 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %24 = call i32 @if_sdio_read_scratch(%struct.if_sdio_card* %23, i32* %4)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %26 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @sdio_release_host(%struct.TYPE_4__* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %73

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IF_SDIO_FIRMWARE_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %43 = call i32 @if_sdio_finish_power_on(%struct.if_sdio_card* %42)
  store i32 0, i32* %2, align 4
  br label %75

44:                                               ; preds = %36
  %45 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %46 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MODEL_8686, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 32767
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %57 = call i32 @if_sdio_finish_power_on(%struct.if_sdio_card* %56)
  store i32 0, i32* %2, align 4
  br label %75

58:                                               ; preds = %50, %44
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %61 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %64 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %68 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @fw_table, align 4
  %71 = load i32, i32* @if_sdio_do_prog_firmware, align 4
  %72 = call i32 @lbs_get_firmware_async(i32 %62, i32* %66, i64 %69, i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %59, %35
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %54, %40
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @sdio_claim_host(%struct.TYPE_4__*) #1

declare dso_local i32 @sdio_writeb(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_4__*) #1

declare dso_local i32 @if_sdio_read_scratch(%struct.if_sdio_card*, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, ...) #1

declare dso_local i32 @if_sdio_finish_power_on(%struct.if_sdio_card*) #1

declare dso_local i32 @lbs_get_firmware_async(i32, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
