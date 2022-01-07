; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.if_sdio_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IF_SDIO_H_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"interrupt: 0x%X\0A\00", align 1
@IF_SDIO_H_INT_DNLD = common dso_local global i32 0, align 4
@IF_SDIO_H_INT_UPLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @if_sdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_sdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = call %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %6)
  store %struct.if_sdio_card* %7, %struct.if_sdio_card** %4, align 8
  %8 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %9 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IF_SDIO_H_INT_STATUS, align 4
  %12 = call i32 @sdio_readb(i32 %10, i32 %11, i32* %3)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %1
  br label %58

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %23 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @IF_SDIO_H_INT_STATUS, align 4
  %28 = call i32 @sdio_writeb(i32 %24, i32 %26, i32 %27, i32* %3)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %58

32:                                               ; preds = %19
  %33 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %34 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IF_SDIO_H_INT_DNLD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %43 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = call i32 @lbs_host_to_card_done(%struct.TYPE_2__* %44)
  br label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IF_SDIO_H_INT_UPLD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %53 = call i32 @if_sdio_card_to_host(%struct.if_sdio_card* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %18, %31, %56, %57, %46
  ret void
}

declare dso_local %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @lbs_host_to_card_done(%struct.TYPE_2__*) #1

declare dso_local i32 @if_sdio_card_to_host(%struct.if_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
