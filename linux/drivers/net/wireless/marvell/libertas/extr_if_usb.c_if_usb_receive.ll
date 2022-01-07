; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.if_usb_card* }
%struct.if_usb_card = type { %struct.TYPE_2__*, %struct.lbs_private*, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }
%struct.lbs_private = type { i32 }
%struct.sk_buff = type { i32* }

@IPFIELD_ALIGN_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RX URB failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Recv length = 0x%x, Recv type = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"**EVENT** 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unknown command type 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @if_usb_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_receive(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %13, align 8
  store %struct.if_usb_card* %14, %struct.if_usb_card** %3, align 8
  %15 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %16 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %15, i32 0, i32 2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %19 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %18, i32 0, i32 1
  %20 = load %struct.lbs_private*, %struct.lbs_private** %19, align 8
  store %struct.lbs_private* %20, %struct.lbs_private** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @IPFIELD_ALIGN_OFFSET, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %1
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %39 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.urb*, %struct.urb** %2, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %129

48:                                               ; preds = %32
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @IPFIELD_ALIGN_OFFSET, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %60 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  br label %75

66:                                               ; preds = %1
  %67 = load %struct.urb*, %struct.urb** %2, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %132

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %119 [
    i32 130, label %77
    i32 128, label %83
    i32 129, label %90
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %81 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %82 = call i32 @process_cmdtypedata(i32 %78, %struct.sk_buff* %79, %struct.if_usb_card* %80, %struct.lbs_private* %81)
  br label %128

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %88 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %89 = call i32 @process_cmdrequest(i32 %84, i32* %85, %struct.sk_buff* %86, %struct.if_usb_card* %87, %struct.lbs_private* %88)
  br label %128

90:                                               ; preds = %75
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %96 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, -65536
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %90
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, -65536
  %109 = lshr i32 %108, 16
  store i32 %109, i32* %11, align 4
  %110 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @lbs_send_tx_feedback(%struct.lbs_private* %110, i32 %111)
  br label %118

113:                                              ; preds = %90
  %114 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = and i32 %115, 255
  %117 = call i32 @lbs_queue_event(%struct.lbs_private* %114, i32 %116)
  br label %118

118:                                              ; preds = %113, %106
  br label %128

119:                                              ; preds = %75
  %120 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %121 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %8, align 4
  %125 = call i32 (i32*, i8*, i32, ...) @lbs_deb_usbd(i32* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i32 @kfree_skb(%struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %119, %118, %83, %77
  br label %129

129:                                              ; preds = %128, %37
  %130 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %131 = call i32 @if_usb_submit_rx_urb(%struct.if_usb_card* %130)
  br label %132

132:                                              ; preds = %129, %71
  ret void
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @process_cmdtypedata(i32, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbs_private*) #1

declare dso_local i32 @process_cmdrequest(i32, i32*, %struct.sk_buff*, %struct.if_usb_card*, %struct.lbs_private*) #1

declare dso_local i32 @lbs_send_tx_feedback(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_queue_event(%struct.lbs_private*, i32) #1

declare dso_local i32 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
