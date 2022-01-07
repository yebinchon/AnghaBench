; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_eem.c_eem_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_eem.c_eem_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }

@EEM_HEAD = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @eem_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @eem_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @EEM_HEAD, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @ETH_FCS_LEN, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %23 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_cloned(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %30
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_headroom(%struct.sk_buff* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_tailroom(%struct.sk_buff* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ETH_FCS_LEN, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp sge i32 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @EEM_HEAD, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %94

49:                                               ; preds = %44, %34
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @EEM_HEAD, align 4
  %54 = load i32, i32* @ETH_FCS_LEN, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp sgt i32 %52, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %49
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @EEM_HEAD, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memmove(i64 %65, i32 %68, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %75, i32 %76)
  br label %94

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78, %30
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @EEM_HEAD, align 4
  %82 = load i32, i32* @ETH_FCS_LEN, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %80, i32 %81, i32 %84, i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %8, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %125

90:                                               ; preds = %79
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %93, %struct.sk_buff** %6, align 8
  br label %94

94:                                               ; preds = %90, %59, %48
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @crc32_le(i32 -1, i32 %97, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = xor i32 %102, -1
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i32 @skb_put(%struct.sk_buff* %105, i32 4)
  %107 = call i32 @put_unaligned_le32(i32 %104, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %9, align 4
  %111 = call i32 @BIT(i32 14)
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call i32 @skb_push(%struct.sk_buff* %114, i32 2)
  %116 = call i32 @put_unaligned_le16(i32 %113, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %94
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = call i32 @skb_put(%struct.sk_buff* %120, i32 2)
  %122 = call i32 @put_unaligned_le16(i32 0, i32 %121)
  br label %123

123:                                              ; preds = %119, %94
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %124, %struct.sk_buff** %4, align 8
  br label %125

125:                                              ; preds = %123, %89
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %126
}

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
