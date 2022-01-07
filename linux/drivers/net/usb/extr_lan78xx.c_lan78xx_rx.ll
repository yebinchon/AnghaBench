; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64, i8*, i32 }

@RX_CMD_A_LEN_MASK_ = common dso_local global i32 0, align 4
@RXW_PADDING = common dso_local global i32 0, align 4
@RX_CMD_A_RED_ = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error rx_cmd_a=0x%08x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error allocating skb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, %struct.sk_buff*)* @lan78xx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_rx(%struct.lan78xx_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan78xx_net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %17 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %170

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %168, %23
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %169

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @get_unaligned_le32(i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @skb_pull(%struct.sk_buff* %34, i32 4)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @get_unaligned_le32(i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_pull(%struct.sk_buff* %40, i32 4)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @get_unaligned_le16(i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @skb_pull(%struct.sk_buff* %46, i32 4)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %12, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @RX_CMD_A_LEN_MASK_, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @RXW_PADDING, align 4
  %56 = add nsw i32 %54, %55
  %57 = srem i32 %56, 4
  %58 = sub nsw i32 4, %57
  %59 = srem i32 %58, 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RX_CMD_A_RED_, align 4
  %62 = and i32 %60, %61
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %29
  %66 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %67 = load i32, i32* @rx_err, align 4
  %68 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %69 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @netif_dbg(%struct.lan78xx_net* %66, i32 %67, %struct.TYPE_3__* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %156

73:                                               ; preds = %29
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %73
  %81 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @lan78xx_rx_csum_offload(%struct.lan78xx_net* %81, %struct.sk_buff* %82, i32 %83, i32 %84)
  %86 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @lan78xx_rx_vlan_offload(%struct.lan78xx_net* %86, %struct.sk_buff* %87, i32 %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @skb_trim(%struct.sk_buff* %91, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, 24
  %101 = trunc i64 %100 to i32
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  store i32 1, i32* %3, align 4
  br label %170

104:                                              ; preds = %73
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = load i32, i32* @GFP_ATOMIC, align 4
  %107 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %105, i32 %106)
  store %struct.sk_buff* %107, %struct.sk_buff** %11, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %116 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = call i32 @netdev_warn(%struct.TYPE_3__* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %170

119:                                              ; preds = %104
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %127, i32 %128)
  %130 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @lan78xx_rx_csum_offload(%struct.lan78xx_net* %130, %struct.sk_buff* %131, i32 %132, i32 %133)
  %135 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @lan78xx_rx_vlan_offload(%struct.lan78xx_net* %135, %struct.sk_buff* %136, i32 %137, i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @skb_trim(%struct.sk_buff* %140, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %148, 24
  %150 = trunc i64 %149 to i32
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.lan78xx_net*, %struct.lan78xx_net** %4, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %155 = call i32 @lan78xx_skb_return(%struct.lan78xx_net* %153, %struct.sk_buff* %154)
  br label %156

156:                                              ; preds = %119, %65
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @skb_pull(%struct.sk_buff* %157, i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @skb_pull(%struct.sk_buff* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %156
  br label %24

169:                                              ; preds = %24
  store i32 1, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %114, %80, %22
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, %struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @lan78xx_rx_csum_offload(%struct.lan78xx_net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @lan78xx_rx_vlan_offload(%struct.lan78xx_net*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @lan78xx_skb_return(%struct.lan78xx_net*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
