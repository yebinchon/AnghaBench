; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_dlci.c_dlci_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_dlci.c_dlci_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.net_device*, i64 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.frhdr = type { i64, i32, i32, i32, i32, i64* }

@.str = private unnamed_addr constant [24 x i8] c"invalid data no header\0A\00", align 1
@FRAD_I_UI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid header flag 0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported NLPID 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Unsupported organizationally unique identifier 0x%02X-%02X-%02X\0A\00", align 1
@ETH_P_IP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid pad byte 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*)* @dlci_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlci_receive(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.frhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @pskb_may_pull(%struct.sk_buff* %8, i32 32)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call i32 @kfree_skb(%struct.sk_buff* %19)
  br label %170

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.frhdr*
  store %struct.frhdr* %25, %struct.frhdr** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  store %struct.net_device* %26, %struct.net_device** %28, align 8
  %29 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %30 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FRAD_I_UI, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %21
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %37 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %141

45:                                               ; preds = %21
  %46 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %47 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %129 [
    i32 130, label %49
    i32 131, label %113
    i32 128, label %118
    i32 129, label %118
    i32 132, label %118
  ]

49:                                               ; preds = %45
  %50 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %51 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 128
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %57 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %140

65:                                               ; preds = %49
  %66 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %67 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %66, i32 0, i32 5
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %72 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %71, i32 0, i32 5
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %70, %75
  %77 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %78 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %77, i32 0, i32 5
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %76, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %65
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %87 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %86, i32 0, i32 5
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %92 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %91, i32 0, i32 5
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %97 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %96, i32 0, i32 5
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %85, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %90, i64 %95, i64 %100)
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %140

107:                                              ; preds = %65
  store i32 32, i32* %7, align 4
  %108 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %109 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  store i32 1, i32* %6, align 4
  br label %140

113:                                              ; preds = %45
  store i32 12, i32* %7, align 4
  %114 = load i32, i32* @ETH_P_IP, align 4
  %115 = call i32 @htons(i32 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  store i32 1, i32* %6, align 4
  br label %140

118:                                              ; preds = %45, %45, %45
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %121 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %140

129:                                              ; preds = %45
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = load %struct.frhdr*, %struct.frhdr** %5, align 8
  %132 = getelementptr inbounds %struct.frhdr, %struct.frhdr* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.net_device*, i8*, ...) @netdev_notice(%struct.net_device* %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %129, %118, %113, %107, %84, %54
  br label %141

141:                                              ; preds = %140, %34
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %141
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = call i32 @skb_reset_mac_header(%struct.sk_buff* %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @skb_pull(%struct.sk_buff* %147, i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %152
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %161 = call i32 @netif_rx(%struct.sk_buff* %160)
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %170

167:                                              ; preds = %141
  %168 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %169 = call i32 @dev_kfree_skb(%struct.sk_buff* %168)
  br label %170

170:                                              ; preds = %11, %167, %144
  ret void
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
