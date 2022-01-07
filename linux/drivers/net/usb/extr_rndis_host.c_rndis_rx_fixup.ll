; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rndis_data_hdr = type { i32, i32, i32, i32 }

@RNDIS_MSG_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"bad rndis message %d/%d/%d/%d, len %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rndis_data_hdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %124, %22
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %135

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.rndis_data_hdr*
  store %struct.rndis_data_hdr* %35, %struct.rndis_data_hdr** %6, align 8
  %36 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le32_to_cpu(i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le32_to_cpu(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @RNDIS_MSG_PACKET, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %68, label %55

55:                                               ; preds = %30
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add nsw i64 %62, %63
  %65 = add nsw i64 %64, 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp sgt i64 %65, %66
  br label %68

68:                                               ; preds = %61, %55, %30
  %69 = phi i1 [ true, %55 ], [ true, %30 ], [ %67, %61 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %68
  %74 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %6, align 8
  %85 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @netdev_dbg(%struct.TYPE_4__* %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %88, i64 %89, i64 %90, i64 %93)
  store i32 0, i32* %3, align 4
  br label %136

95:                                               ; preds = %68
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 8, %97
  %99 = call i32 @skb_pull(%struct.sk_buff* %96, i64 %98)
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = icmp ule i64 %104, 16
  %106 = zext i1 %105 to i32
  %107 = call i64 @likely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %95
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @skb_trim(%struct.sk_buff* %110, i64 %111)
  br label %135

113:                                              ; preds = %95
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = load i32, i32* @GFP_ATOMIC, align 4
  %116 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %114, i32 %115)
  store %struct.sk_buff* %116, %struct.sk_buff** %7, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %135

124:                                              ; preds = %113
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %126, 16
  %128 = call i32 @skb_pull(%struct.sk_buff* %125, i64 %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @skb_trim(%struct.sk_buff* %129, i64 %130)
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = call i32 @usbnet_skb_return(%struct.usbnet* %132, %struct.sk_buff* %133)
  br label %23

135:                                              ; preds = %123, %109, %23
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %73, %21
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
