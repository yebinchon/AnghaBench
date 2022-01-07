; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_cs_card = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, %struct.if_cs_card*, i32, i32*, i32* }
%struct.sk_buff = type { i32 }

@IF_CS_CARD_INT_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cause 0x%04x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IF_CS_BIT_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rx packet\0A\00", align 1
@IF_CS_BIT_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tx done\0A\00", align 1
@IF_CS_BIT_RESP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cmd resp\0A\00", align 1
@IF_CS_BIT_EVENT = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS_MASK = common dso_local global i32 0, align 4
@IF_CS_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @if_cs_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.if_cs_card*, align 8
  %7 = alloca %struct.lbs_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.if_cs_card*
  store %struct.if_cs_card* %14, %struct.if_cs_card** %6, align 8
  %15 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %16 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %15, i32 0, i32 0
  %17 = load %struct.lbs_private*, %struct.lbs_private** %16, align 8
  store %struct.lbs_private* %17, %struct.lbs_private** %7, align 8
  %18 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %19 = load i32, i32* @IF_CS_CARD_INT_CAUSE, align 4
  %20 = call i32 @if_cs_read16(%struct.if_cs_card* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %145

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %32 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %31, i32 0, i32 0
  %33 = load %struct.lbs_private*, %struct.lbs_private** %32, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %145

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @IF_CS_BIT_RX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %44 = call %struct.sk_buff* @if_cs_receive_data(%struct.lbs_private* %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %9, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @lbs_process_rxed_packet(%struct.lbs_private* %48, %struct.sk_buff* %49)
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IF_CS_BIT_TX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %60 = call i32 @lbs_host_to_card_done(%struct.lbs_private* %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IF_CS_BIT_RESP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %61
  %67 = call i32 (i8*, ...) @lbs_deb_cs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 3
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %73 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %11, align 8
  %79 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %80 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %79, i32 0, i32 3
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BUG_ON(i32 %88)
  %90 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %91 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %92 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %98 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @if_cs_receive_cmdres(%struct.lbs_private* %90, i32 %96, i32* %101)
  %103 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %104 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %103, i32 0, i32 3
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @lbs_notify_command_response(%struct.lbs_private* %107, i64 %108)
  %110 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %111 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %110, i32 0, i32 3
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  br label %114

114:                                              ; preds = %66, %61
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @IF_CS_BIT_EVENT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %121 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %120, i32 0, i32 2
  %122 = load %struct.if_cs_card*, %struct.if_cs_card** %121, align 8
  %123 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %124 = call i32 @if_cs_read16(%struct.if_cs_card* %122, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %126 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %125, i32 0, i32 2
  %127 = load %struct.if_cs_card*, %struct.if_cs_card** %126, align 8
  %128 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %129 = load i32, i32* @IF_CS_BIT_EVENT, align 4
  %130 = call i32 @if_cs_write16(%struct.if_cs_card* %127, i32 %128, i32 %129)
  %131 = load %struct.lbs_private*, %struct.lbs_private** %7, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @IF_CS_CARD_STATUS_MASK, align 4
  %134 = and i32 %132, %133
  %135 = ashr i32 %134, 8
  %136 = call i32 @lbs_queue_event(%struct.lbs_private* %131, i32 %135)
  br label %137

137:                                              ; preds = %119, %114
  %138 = load %struct.if_cs_card*, %struct.if_cs_card** %6, align 8
  %139 = load i32, i32* @IF_CS_CARD_INT_CAUSE, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @IF_CS_BIT_MASK, align 4
  %142 = and i32 %140, %141
  %143 = call i32 @if_cs_write16(%struct.if_cs_card* %138, i32 %139, i32 %142)
  %144 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %137, %30, %25
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @lbs_deb_cs(i8*, ...) #1

declare dso_local %struct.sk_buff* @if_cs_receive_data(%struct.lbs_private*) #1

declare dso_local i32 @lbs_process_rxed_packet(%struct.lbs_private*, %struct.sk_buff*) #1

declare dso_local i32 @lbs_host_to_card_done(%struct.lbs_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @if_cs_receive_cmdres(%struct.lbs_private*, i32, i32*) #1

declare dso_local i32 @lbs_notify_command_response(%struct.lbs_private*, i64) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @lbs_queue_event(%struct.lbs_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
