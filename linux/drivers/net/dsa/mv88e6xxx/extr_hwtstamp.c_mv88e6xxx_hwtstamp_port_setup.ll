; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_hwtstamp_port_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_hwtstamp_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.mv88e6xxx_port_hwtstamp*, %struct.TYPE_4__* }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mv88e6xxx_ptp_ops* }
%struct.mv88e6xxx_ptp_ops = type { i32 (%struct.mv88e6xxx_chip.0*, i32)* }
%struct.mv88e6xxx_chip.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32)* @mv88e6xxx_hwtstamp_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_hwtstamp_port_setup(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_ptp_ops*, align 8
  %7 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %9 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %13, align 8
  store %struct.mv88e6xxx_ptp_ops* %14, %struct.mv88e6xxx_ptp_ops** %6, align 8
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %15, i32 0, i32 0
  %17 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %17, i64 %19
  store %struct.mv88e6xxx_port_hwtstamp* %20, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  %23 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  %25 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %24, i32 0, i32 2
  %26 = call i32 @skb_queue_head_init(i32* %25)
  %27 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %7, align 8
  %28 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %27, i32 0, i32 1
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %6, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.mv88e6xxx_chip.0*, i32)*, i32 (%struct.mv88e6xxx_chip.0*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.mv88e6xxx_chip.0*, i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %6, align 8
  %36 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.mv88e6xxx_chip.0*, i32)*, i32 (%struct.mv88e6xxx_chip.0*, i32)** %36, align 8
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %39 = bitcast %struct.mv88e6xxx_chip* %38 to %struct.mv88e6xxx_chip.0*
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %37(%struct.mv88e6xxx_chip.0* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
