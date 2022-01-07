; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.p54_common = type { i32, i32 }
%struct.p54_hdr = type { i64, i64, i8*, i8*, i8* }

@P54_MAX_CTRL_FRAME_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.p54_common*, i32, i32, i32, i32)* @p54_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.p54_common*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.p54_hdr*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  store %struct.p54_common* %0, %struct.p54_common** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 40, %16
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @P54_MAX_CTRL_FRAME_LEN, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %69

22:                                               ; preds = %5
  %23 = load %struct.p54_common*, %struct.p54_common** %7, align 8
  %24 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %23, i32 0, i32 1
  %25 = call i32 @skb_queue_len(i32* %24)
  %26 = icmp sgt i32 %25, 64
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.p54_common*, %struct.p54_common** %7, align 8
  %33 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %14, align 8
  %37 = add i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.sk_buff* @__dev_alloc_skb(i32 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %13, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %69

44:                                               ; preds = %31
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = load %struct.p54_common*, %struct.p54_common** %7, align 8
  %47 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @skb_reserve(%struct.sk_buff* %45, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = call %struct.p54_hdr* @skb_put(%struct.sk_buff* %50, i32 40)
  store %struct.p54_hdr* %51, %struct.p54_hdr** %12, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.p54_hdr*, %struct.p54_hdr** %12, align 8
  %55 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.p54_hdr*, %struct.p54_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i8* @cpu_to_le16(i32 %60)
  %62 = load %struct.p54_hdr*, %struct.p54_hdr** %12, align 8
  %63 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.p54_hdr*, %struct.p54_hdr** %12, align 8
  %65 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.p54_hdr*, %struct.p54_hdr** %12, align 8
  %67 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %6, align 8
  br label %69

69:                                               ; preds = %44, %43, %30, %21
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.p54_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
