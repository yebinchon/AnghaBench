; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.if_cs_card* }
%struct.if_cs_card = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to find firmware (%d)\0A\00", align 1
@MODEL_8305 = common dso_local global i64 0, align 8
@if_cs_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error in request_irq\0A\00", align 1
@IF_CS_CARD_INT_CAUSE = common dso_local global i32 0, align 4
@IF_CS_BIT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"could not activate card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32, %struct.firmware*, %struct.firmware*)* @if_cs_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_cs_prog_firmware(%struct.lbs_private* %0, i32 %1, %struct.firmware* %2, %struct.firmware* %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.if_cs_card*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  store %struct.firmware* %3, %struct.firmware** %8, align 8
  %10 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 1
  %12 = load %struct.if_cs_card*, %struct.if_cs_card** %11, align 8
  store %struct.if_cs_card* %12, %struct.if_cs_card** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %74

18:                                               ; preds = %4
  %19 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %20 = load %struct.firmware*, %struct.firmware** %7, align 8
  %21 = call i32 @if_cs_prog_helper(%struct.if_cs_card* %19, %struct.firmware* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %26 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MODEL_8305, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %32 = load %struct.firmware*, %struct.firmware** %8, align 8
  %33 = call i32 @if_cs_prog_real(%struct.if_cs_card* %31, %struct.firmware* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %24, %18
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %74

38:                                               ; preds = %34
  %39 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %40 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @if_cs_interrupt, align 4
  %45 = load i32, i32* @IRQF_SHARED, align 4
  %46 = load i32, i32* @DRV_NAME, align 4
  %47 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %48 = call i32 @request_irq(i32 %43, i32 %44, i32 %45, i32 %46, %struct.if_cs_card* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %74

53:                                               ; preds = %38
  %54 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %55 = load i32, i32* @IF_CS_CARD_INT_CAUSE, align 4
  %56 = load i32, i32* @IF_CS_BIT_MASK, align 4
  %57 = call i32 @if_cs_write16(%struct.if_cs_card* %54, i32 %55, i32 %56)
  %58 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %59 = call i32 @if_cs_enable_ints(%struct.if_cs_card* %58)
  %60 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %63 = call i64 @lbs_start_card(%struct.lbs_private* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %53
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %68 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.if_cs_card*, %struct.if_cs_card** %9, align 8
  %73 = call i32 @free_irq(i32 %71, %struct.if_cs_card* %72)
  br label %74

74:                                               ; preds = %15, %37, %51, %65, %53
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @if_cs_prog_helper(%struct.if_cs_card*, %struct.firmware*) #1

declare dso_local i32 @if_cs_prog_real(%struct.if_cs_card*, %struct.firmware*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.if_cs_card*) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_enable_ints(%struct.if_cs_card*) #1

declare dso_local i64 @lbs_start_card(%struct.lbs_private*) #1

declare dso_local i32 @free_irq(i32, %struct.if_cs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
