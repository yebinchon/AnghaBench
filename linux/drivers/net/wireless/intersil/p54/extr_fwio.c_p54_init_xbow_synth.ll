; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_init_xbow_synth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_init_xbow_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32 }
%struct.sk_buff = type { i32 }
%struct.p54_xbow_synth = type { i32, i8*, i8*, i8* }

@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_XBOW_SYNTH_CFG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_init_xbow_synth(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_xbow_synth*, align 8
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %6 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %7 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %8 = load i32, i32* @P54_CONTROL_TYPE_XBOW_SYNTH_CFG, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %6, i32 %7, i32 32, i32 %8, i32 %9)
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
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.p54_xbow_synth* @skb_put(%struct.sk_buff* %21, i32 32)
  store %struct.p54_xbow_synth* %22, %struct.p54_xbow_synth** %5, align 8
  %23 = call i8* @cpu_to_le16(i32 1)
  %24 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %25 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = call i8* @cpu_to_le16(i32 2)
  %27 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %28 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = call i8* @cpu_to_le16(i32 5390)
  %30 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %31 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.p54_xbow_synth*, %struct.p54_xbow_synth** %5, align 8
  %33 = getelementptr inbounds %struct.p54_xbow_synth, %struct.p54_xbow_synth* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @p54_tx(%struct.p54_common* %36, %struct.sk_buff* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %20, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.p54_xbow_synth* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
