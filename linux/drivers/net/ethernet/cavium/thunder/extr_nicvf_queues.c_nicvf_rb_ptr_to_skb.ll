; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_rb_ptr_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_rb_ptr_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nicvf = type { i32 }

@RCV_FRAG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nicvf*, i32, i32)* @nicvf_rb_ptr_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nicvf_rb_ptr_to_skb(%struct.nicvf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @phys_to_virt(i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* @RCV_FRAG_LEN, align 4
  %14 = call %struct.sk_buff* @build_skb(i8* %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @virt_to_page(i8* %18)
  %20 = call i32 @put_page(i32 %19)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @prefetch(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %4, align 8
  br label %27

27:                                               ; preds = %21, %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %28
}

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @prefetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
