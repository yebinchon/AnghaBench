; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { %struct.ath10k_htc_ep* }
%struct.ath10k_htc_ep = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ath10k.0*, %struct.sk_buff*)* }
%struct.ath10k.0 = type opaque
%struct.sk_buff = type { i32, i32 }
%struct.ath10k_htc_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ep %d is not connected\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"zero length frame received, firmware crashed?\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"malformed frame received, firmware crashed?\0A\00", align 1
@ATH10K_HTC_FLAG_TRAILER_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_usb_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_usb_rx_complete(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k_htc*, align 8
  %6 = alloca %struct.ath10k_htc_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_htc_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  store %struct.ath10k_htc* %13, %struct.ath10k_htc** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.ath10k_htc_hdr*
  store %struct.ath10k_htc_hdr* %18, %struct.ath10k_htc_hdr** %6, align 8
  %19 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %20 = call i32 @eid_from_htc_hdr(%struct.ath10k_htc_hdr* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %22, i32 0, i32 0
  %24 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %24, i64 %26
  store %struct.ath10k_htc_ep* %27, %struct.ath10k_htc_ep** %8, align 8
  %28 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %8, align 8
  %29 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %113

36:                                               ; preds = %2
  %37 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %113

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %54 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %113

55:                                               ; preds = %46
  %56 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATH10K_HTC_FLAG_TRAILER_PRESENT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 12
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %70, %74
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %10, align 8
  %77 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ath10k_htc_process_trailer(%struct.ath10k_htc* %77, i32* %78, i32 %81, i32 %82, i32* null, i32* null)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %62
  br label %113

87:                                               ; preds = %62
  %88 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %89 = call i64 @is_trailer_only_msg(%struct.ath10k_htc_hdr* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %113

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %6, align 8
  %98 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = call i32 @skb_trim(%struct.sk_buff* %93, i32 %100)
  br label %102

102:                                              ; preds = %92, %55
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call i32 @skb_pull(%struct.sk_buff* %103, i32 12)
  %105 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %8, align 8
  %106 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.ath10k.0*, %struct.sk_buff*)*, i32 (%struct.ath10k.0*, %struct.sk_buff*)** %107, align 8
  %109 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %110 = bitcast %struct.ath10k* %109 to %struct.ath10k.0*
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 %108(%struct.ath10k.0* %110, %struct.sk_buff* %111)
  br label %116

113:                                              ; preds = %91, %86, %52, %43, %32
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @dev_kfree_skb(%struct.sk_buff* %114)
  br label %116

116:                                              ; preds = %113, %102
  ret void
}

declare dso_local i32 @eid_from_htc_hdr(%struct.ath10k_htc_hdr*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_htc_process_trailer(%struct.ath10k_htc*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @is_trailer_only_msg(%struct.ath10k_htc_hdr*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
