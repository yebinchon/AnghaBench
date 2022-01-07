; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr9700_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr9700_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32*, i32 }

@SR_RX_OVERHEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unexpected tiny rx frame\0A\00", align 1
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @sr9700_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr9700_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SR_RX_OVERHEAD, align 4
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %84, %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SR_RX_OVERHEAD, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 64
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %112

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %41, %47
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ETH_FRAME_LEN, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %112

54:                                               ; preds = %36
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SR_RX_OVERHEAD, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @skb_pull(%struct.sk_buff* %63, i32 3)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 24
  %74 = trunc i64 %73 to i32
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  store i32 2, i32* %3, align 4
  br label %112

77:                                               ; preds = %54
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %6, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %112

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 24
  %100 = trunc i64 %99 to i32
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i32 @usbnet_skb_return(%struct.usbnet* %103, %struct.sk_buff* %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SR_RX_OVERHEAD, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @skb_pull(%struct.sk_buff* %106, i32 %109)
  br label %22

111:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %83, %62, %53, %35, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
