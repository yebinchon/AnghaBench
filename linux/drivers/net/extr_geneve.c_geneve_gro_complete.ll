; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.genevehdr = type { i32 }
%struct.packet_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @geneve_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_gro_complete(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.genevehdr*, align 8
  %8 = alloca %struct.packet_offload*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to %struct.genevehdr*
  store %struct.genevehdr* %20, %struct.genevehdr** %7, align 8
  %21 = load %struct.genevehdr*, %struct.genevehdr** %7, align 8
  %22 = call i32 @geneve_hlen(%struct.genevehdr* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.genevehdr*, %struct.genevehdr** %7, align 8
  %24 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.packet_offload* @gro_find_complete_by_type(i32 %27)
  store %struct.packet_offload* %28, %struct.packet_offload** %8, align 8
  %29 = load %struct.packet_offload*, %struct.packet_offload** %8, align 8
  %30 = icmp ne %struct.packet_offload* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load %struct.packet_offload*, %struct.packet_offload** %8, align 8
  %33 = getelementptr inbounds %struct.packet_offload, %struct.packet_offload* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 %35(%struct.sk_buff* %36, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %31, %3
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @skb_set_inner_mac_header(%struct.sk_buff* %43, i32 %46)
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @geneve_hlen(%struct.genevehdr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.packet_offload* @gro_find_complete_by_type(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @skb_set_inner_mac_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
