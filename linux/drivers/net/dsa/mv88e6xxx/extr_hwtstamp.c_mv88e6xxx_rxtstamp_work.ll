; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_rxtstamp_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_rxtstamp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mv88e6xxx_ptp_ops* }
%struct.mv88e6xxx_ptp_ops = type { i32, i32 }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_port_hwtstamp*)* @mv88e6xxx_rxtstamp_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_rxtstamp_work(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_port_hwtstamp* %1) #0 {
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %5 = alloca %struct.mv88e6xxx_ptp_ops*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  store %struct.mv88e6xxx_port_hwtstamp* %1, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %7 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %12, align 8
  store %struct.mv88e6xxx_ptp_ops* %13, %struct.mv88e6xxx_ptp_ops** %5, align 8
  %14 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %14, i32 0, i32 1
  %16 = call %struct.sk_buff* @skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %21 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %5, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %27 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %26, i32 0, i32 1
  %28 = call i32 @mv88e6xxx_get_rxts(%struct.mv88e6xxx_chip* %20, %struct.mv88e6xxx_port_hwtstamp* %21, %struct.sk_buff* %22, i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %19, %2
  %30 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %30, i32 0, i32 0
  %32 = call %struct.sk_buff* @skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %37 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %5, align 8
  %40 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %4, align 8
  %43 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %42, i32 0, i32 0
  %44 = call i32 @mv88e6xxx_get_rxts(%struct.mv88e6xxx_chip* %36, %struct.mv88e6xxx_port_hwtstamp* %37, %struct.sk_buff* %38, i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %35, %29
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @mv88e6xxx_get_rxts(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_port_hwtstamp*, %struct.sk_buff*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
