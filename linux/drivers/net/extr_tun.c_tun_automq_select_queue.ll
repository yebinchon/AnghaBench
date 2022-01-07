; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_automq_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_automq_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.tun_flow_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.sk_buff*)* @tun_automq_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_automq_select_queue(%struct.tun_struct* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tun_flow_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @READ_ONCE(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @__skb_get_hash_symmetric(%struct.sk_buff* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @tun_hashfn(i32 %17)
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.tun_flow_entry* @tun_flow_find(i32* %19, i32 %20)
  store %struct.tun_flow_entry* %21, %struct.tun_flow_entry** %5, align 8
  %22 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %5, align 8
  %23 = icmp ne %struct.tun_flow_entry* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tun_flow_save_rps_rxhash(%struct.tun_flow_entry* %25, i32 %26)
  %28 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %5, align 8
  %29 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = ashr i32 %34, 32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @__skb_get_hash_symmetric(%struct.sk_buff*) #1

declare dso_local %struct.tun_flow_entry* @tun_flow_find(i32*, i32) #1

declare dso_local i64 @tun_hashfn(i32) #1

declare dso_local i32 @tun_flow_save_rps_rxhash(%struct.tun_flow_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
