; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @asix_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @skb_headroom(%struct.sk_buff* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @skb_tailroom(%struct.sk_buff* %17)
  store i32 %18, i32* %10, align 4
  store i32 -65536, i32* %12, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 4
  %23 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_header_cloned(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %75, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i64 @skb_cloned(%struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 4, %45
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51, %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memmove(i64 %59, i32 %62, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %69, i32 %72)
  br label %74

74:                                               ; preds = %55, %51
  br label %87

75:                                               ; preds = %41, %37, %3
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %76, i32 4, i32 %77, i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %14, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %6, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %115

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %74
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = xor i32 %90, 65535
  %92 = shl i32 %91, 16
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %11, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i8* @skb_push(%struct.sk_buff* %97, i32 4)
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @put_unaligned_le32(i32 %99, i8* %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %87
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = call i8* @skb_tail_pointer(%struct.sk_buff* %106)
  %108 = call i32 @put_unaligned_le32(i32 %105, i8* %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @skb_put(%struct.sk_buff* %109, i32 4)
  br label %111

111:                                              ; preds = %104, %87
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = call i32 @usbnet_set_skb_tx_stats(%struct.sk_buff* %112, i32 1, i32 0)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %114, %struct.sk_buff** %4, align 8
  br label %115

115:                                              ; preds = %111, %85
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %116
}

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_header_cloned(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_set_skb_tx_stats(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
