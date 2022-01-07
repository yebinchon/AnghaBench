; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32 }
%struct.sk_buff = type { i32 }
%struct.p54_led = type { i8**, i8**, i8* }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_LED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_set_leds(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_led*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %6 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %7 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %8 = load i32, i32* @P54_CONTROL_TYPE_LED, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %6, i32 %7, i32 24, i32 %8, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.p54_led* @skb_put(%struct.sk_buff* %21, i32 24)
  store %struct.p54_led* %22, %struct.p54_led** %5, align 8
  %23 = call i8* @cpu_to_le16(i32 3)
  %24 = load %struct.p54_led*, %struct.p54_led** %5, align 8
  %25 = getelementptr inbounds %struct.p54_led, %struct.p54_led* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %27 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.p54_led*, %struct.p54_led** %5, align 8
  %31 = getelementptr inbounds %struct.p54_led, %struct.p54_led* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %29, i8** %33, align 8
  %34 = load %struct.p54_led*, %struct.p54_led** %5, align 8
  %35 = getelementptr inbounds %struct.p54_led, %struct.p54_led* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  store i8* %29, i8** %37, align 8
  %38 = call i8* @cpu_to_le16(i32 1)
  %39 = load %struct.p54_led*, %struct.p54_led** %5, align 8
  %40 = getelementptr inbounds %struct.p54_led, %struct.p54_led* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = call i8* @cpu_to_le16(i32 0)
  %44 = load %struct.p54_led*, %struct.p54_led** %5, align 8
  %45 = getelementptr inbounds %struct.p54_led, %struct.p54_led* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @p54_tx(%struct.p54_common* %48, %struct.sk_buff* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %20, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.p54_led* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
