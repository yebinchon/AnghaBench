; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_do_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_do_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { %struct.if_sdio_card* }
%struct.if_sdio_card = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to find firmware (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Helper firmware loaded\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Firmware loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)* @if_sdio_do_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_sdio_do_prog_firmware(%struct.lbs_private* %0, i32 %1, %struct.firmware* %2, %struct.firmware* %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.if_sdio_card*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  store %struct.firmware* %3, %struct.firmware** %8, align 8
  %10 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 0
  %12 = load %struct.if_sdio_card*, %struct.if_sdio_card** %11, align 8
  store %struct.if_sdio_card* %12, %struct.if_sdio_card** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %37

18:                                               ; preds = %4
  %19 = load %struct.if_sdio_card*, %struct.if_sdio_card** %9, align 8
  %20 = load %struct.firmware*, %struct.firmware** %7, align 8
  %21 = call i32 @if_sdio_prog_helper(%struct.if_sdio_card* %19, %struct.firmware* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %37

25:                                               ; preds = %18
  %26 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.if_sdio_card*, %struct.if_sdio_card** %9, align 8
  %28 = load %struct.firmware*, %struct.firmware** %8, align 8
  %29 = call i32 @if_sdio_prog_real(%struct.if_sdio_card* %27, %struct.firmware* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %37

33:                                               ; preds = %25
  %34 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.if_sdio_card*, %struct.if_sdio_card** %9, align 8
  %36 = call i32 @if_sdio_finish_power_on(%struct.if_sdio_card* %35)
  br label %37

37:                                               ; preds = %33, %32, %24, %15
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @if_sdio_prog_helper(%struct.if_sdio_card*, %struct.firmware*) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

declare dso_local i32 @if_sdio_prog_real(%struct.if_sdio_card*, %struct.firmware*) #1

declare dso_local i32 @if_sdio_finish_power_on(%struct.if_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
