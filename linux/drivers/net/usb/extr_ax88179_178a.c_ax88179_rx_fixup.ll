; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64, i32, i32 }

@AX_RXHDR_CRC_ERR = common dso_local global i32 0, align 4
@AX_RXHDR_DROP_ERR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @ax88179_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 4
  %28 = call i32 @skb_trim(%struct.sk_buff* %23, i64 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @skb_tail_pointer(%struct.sk_buff* %29)
  %31 = call i32 @get_unaligned_le32(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %10, align 8
  br label %42

42:                                               ; preds = %127, %64, %22
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %135

46:                                               ; preds = %42
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @le32_to_cpus(i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 8191
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AX_RXHDR_CRC_ERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %46
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AX_RXHDR_DROP_ERR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58, %46
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 7
  %68 = and i32 %67, 65528
  %69 = call i32 @skb_pull(%struct.sk_buff* %65, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %10, align 8
  br label %42

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i32 @skb_pull(%struct.sk_buff* %76, i32 2)
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 16
  %88 = trunc i64 %87 to i32
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @ax88179_rx_checksum(%struct.sk_buff* %91, i32* %92)
  store i32 1, i32* %3, align 4
  br label %136

94:                                               ; preds = %72
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %95, i32 %96)
  store %struct.sk_buff* %97, %struct.sk_buff** %6, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %100, label %126

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 2
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %111, i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 16
  %117 = trunc i64 %116 to i32
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @ax88179_rx_checksum(%struct.sk_buff* %120, i32* %121)
  %123 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i32 @usbnet_skb_return(%struct.usbnet* %123, %struct.sk_buff* %124)
  br label %127

126:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %136

127:                                              ; preds = %100
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 7
  %131 = and i32 %130, 65528
  %132 = call i32 @skb_pull(%struct.sk_buff* %128, i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %10, align 8
  br label %42

135:                                              ; preds = %42
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %126, %75, %21
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpus(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax88179_rx_checksum(%struct.sk_buff*, i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
