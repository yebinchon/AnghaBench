; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @sr_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sr_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
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
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @skb_tailroom(%struct.sk_buff* %17)
  store i32 %18, i32* %9, align 4
  store i32 -65536, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 4
  %23 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = srem i32 %22, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_cloned(%struct.sk_buff* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 4, %38
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44, %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memmove(i64 %52, i32 %55, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %62, i32 %65)
  br label %67

67:                                               ; preds = %48, %44
  br label %80

68:                                               ; preds = %34, %3
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %69, i32 4, i32 %70, i32 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %14, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %110

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %67
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call i8* @skb_push(%struct.sk_buff* %81, i32 4)
  store i8* %82, i8** %13, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 4
  %87 = xor i32 %86, 65535
  %88 = shl i32 %87, 16
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 4
  %93 = add nsw i32 %88, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @put_unaligned_le32(i32 %94, i8* %95)
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %80
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i8* @skb_tail_pointer(%struct.sk_buff* %101)
  %103 = call i32 @put_unaligned_le32(i32 %100, i8* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i32 @skb_put(%struct.sk_buff* %104, i32 4)
  br label %106

106:                                              ; preds = %99, %80
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @usbnet_set_skb_tx_stats(%struct.sk_buff* %107, i32 1, i32 0)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %109, %struct.sk_buff** %4, align 8
  br label %110

110:                                              ; preds = %106, %78
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %111
}

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

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
