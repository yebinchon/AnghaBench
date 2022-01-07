; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.rndis_data_hdr = type { i8*, i8*, i8*, i8* }

@RNDIS_MSG_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rndis_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rndis_data_hdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @skb_cloned(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_headroom(%struct.sk_buff* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 32, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %77

32:                                               ; preds = %22
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i64 @skb_tailroom(%struct.sk_buff* %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ule i64 32, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %32
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 32
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memmove(i64 %49, i32 %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %57, i32 %58)
  br label %77

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60, %3
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %62, i32 32, i32 1, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %9, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  br label %100

75:                                               ; preds = %61
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %76, %struct.sk_buff** %6, align 8
  br label %77

77:                                               ; preds = %75, %45, %31
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call %struct.rndis_data_hdr* @__skb_push(%struct.sk_buff* %78, i32 32)
  store %struct.rndis_data_hdr* %79, %struct.rndis_data_hdr** %8, align 8
  %80 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %8, align 8
  %81 = call i32 @memset(%struct.rndis_data_hdr* %80, i32 0, i32 32)
  %82 = load i32, i32* @RNDIS_MSG_PACKET, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %8, align 8
  %85 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %8, align 8
  %91 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = call i8* @cpu_to_le32(i32 24)
  %93 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.rndis_data_hdr*, %struct.rndis_data_hdr** %8, align 8
  %98 = getelementptr inbounds %struct.rndis_data_hdr, %struct.rndis_data_hdr* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %4, align 8
  br label %100

100:                                              ; preds = %77, %73
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %101
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.rndis_data_hdr* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.rndis_data_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
