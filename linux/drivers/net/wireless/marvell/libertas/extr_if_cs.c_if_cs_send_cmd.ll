; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i64 }
%struct.if_cs_card = type { i32 }

@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"card not ready for commands\0A\00", align 1
@IF_CS_CMD_LEN = common dso_local global i32 0, align 4
@IF_CS_CMD = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32*, i32)* @if_cs_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_send_cmd(%struct.lbs_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_cs_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.if_cs_card*
  store %struct.if_cs_card* %14, %struct.if_cs_card** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %16 = call i32 @if_cs_disable_ints(%struct.if_cs_card* %15)
  br label %17

17:                                               ; preds = %3, %35
  %18 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %19 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %20 = call i32 @if_cs_read16(%struct.if_cs_card* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %37

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = icmp sgt i32 %28, 100
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %70

35:                                               ; preds = %26
  %36 = call i32 @mdelay(i32 1)
  br label %17

37:                                               ; preds = %25
  %38 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %39 = load i32, i32* @IF_CS_CMD_LEN, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @if_cs_write16(%struct.if_cs_card* %38, i32 %39, i32 %40)
  %42 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %43 = load i32, i32* @IF_CS_CMD, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 2
  %47 = call i32 @if_cs_write16_rep(%struct.if_cs_card* %42, i32 %43, i32* %44, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %37
  %52 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %53 = load i32, i32* @IF_CS_CMD, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @if_cs_write8(%struct.if_cs_card* %52, i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %51, %37
  %62 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %63 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %64 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %65 = call i32 @if_cs_write16(%struct.if_cs_card* %62, i32 %63, i32 %64)
  %66 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %67 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %68 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %69 = call i32 @if_cs_write16(%struct.if_cs_card* %66, i32 %67, i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %61, %30
  %71 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %72 = call i32 @if_cs_enable_ints(%struct.if_cs_card* %71)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @if_cs_disable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_write16_rep(%struct.if_cs_card*, i32, i32*, i32) #1

declare dso_local i32 @if_cs_write8(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_enable_ints(%struct.if_cs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
