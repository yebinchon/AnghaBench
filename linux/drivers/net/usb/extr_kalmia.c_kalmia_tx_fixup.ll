; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }

@KALMIA_ALIGN_SIZE = common dso_local global i32 0, align 4
@KALMIA_HEADER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Sending etherType: %02x%02x\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Sending package with length %i and padding %i. Header: %6phC.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @kalmia_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @kalmia_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @skb_cloned(%struct.sk_buff* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_headroom(%struct.sk_buff* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_tailroom(%struct.sk_buff* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @KALMIA_ALIGN_SIZE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %76

33:                                               ; preds = %28, %20
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %38 = load i32, i32* @KALMIA_ALIGN_SIZE, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memmove(i64 %47, i32 %50, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %57, i32 %60)
  br label %76

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %66 = load i32, i32* @KALMIA_ALIGN_SIZE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %64, i32 %65, i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %8, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %142

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %6, align 8
  br label %76

76:                                               ; preds = %72, %41, %32
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %79 = call i8* @skb_push(%struct.sk_buff* %77, i32 %78)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %82 = add nsw i32 %81, 12
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %11, align 1
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %88 = add nsw i32 %87, 13
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %12, align 1
  %92 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %93 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8, i8* %11, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = call i32 (i32, i8*, i32, i32, ...) @netdev_dbg(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 87, i8* %101, align 1
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 68, i8* %103, align 1
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = call i32 @put_unaligned_le16(i32 %109, i8* %111)
  %113 = load i8, i8* %11, align 1
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  store i8 %113, i8* %115, align 1
  %116 = load i8, i8* %12, align 1
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 5
  store i8 %116, i8* %118, align 1
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @KALMIA_ALIGN_SIZE, align 4
  %123 = srem i32 %121, %122
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %76
  %127 = load i32, i32* @KALMIA_ALIGN_SIZE, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %14, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @skb_put_zero(%struct.sk_buff* %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %76
  %134 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %135 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 (i32, i8*, i32, i32, ...) @netdev_dbg(i32 %136, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138, i8* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %141, %struct.sk_buff** %4, align 8
  br label %142

142:                                              ; preds = %133, %71
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %143
}

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @put_unaligned_le16(i32, i8*) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
