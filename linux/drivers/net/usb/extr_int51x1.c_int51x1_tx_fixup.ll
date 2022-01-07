; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_int51x1.c_int51x1_tx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_int51x1.c_int51x1_tx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }

@INT51X1_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.usbnet*, %struct.sk_buff*, i32)* @int51x1_tx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @int51x1_tx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @INT51X1_HEADER_SIZE, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_headroom(%struct.sk_buff* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_tailroom(%struct.sk_buff* %23)
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %32 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %46

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %40 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = srem i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @skb_cloned(%struct.sk_buff* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %88, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @INT51X1_HEADER_SIZE, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @INT51X1_HEADER_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62, %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @INT51X1_HEADER_SIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memmove(i64 %72, i32 %75, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %82, i32 %85)
  br label %87

87:                                               ; preds = %66, %62
  br label %101

88:                                               ; preds = %50, %46
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load i32, i32* @INT51X1_HEADER_SIZE, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %89, i32 %90, i32 %91, i32 %92)
  store %struct.sk_buff* %93, %struct.sk_buff** %14, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %121

99:                                               ; preds = %88
  %100 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %6, align 8
  br label %101

101:                                              ; preds = %99, %87
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 2047
  store i32 %106, i32* %8, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = load i32, i32* @INT51X1_HEADER_SIZE, align 4
  %109 = call i32* @__skb_push(%struct.sk_buff* %107, i32 %108)
  store i32* %109, i32** %13, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @cpu_to_le16(i32 %110)
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %101
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @__skb_put_zero(%struct.sk_buff* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %101
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %120, %struct.sk_buff** %4, align 8
  br label %121

121:                                              ; preds = %119, %98
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %122
}

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i32, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @__skb_put_zero(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
