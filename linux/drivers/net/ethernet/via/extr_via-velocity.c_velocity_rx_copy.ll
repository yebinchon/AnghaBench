; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_rx_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_rx_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.velocity_info = type { i32 }

@rx_copybreak = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, i32, %struct.velocity_info*)* @velocity_rx_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_rx_copy(%struct.sk_buff** %0, i32 %1, %struct.velocity_info* %2) #0 {
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.velocity_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.velocity_info* %2, %struct.velocity_info** %6, align 8
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @rx_copybreak, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  %13 = load %struct.velocity_info*, %struct.velocity_info** %6, align 8
  %14 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %21, i64 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %29, i32 %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %20, %12
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
