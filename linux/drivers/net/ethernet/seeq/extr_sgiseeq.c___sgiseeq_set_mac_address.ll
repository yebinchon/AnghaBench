; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c___sgiseeq_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c___sgiseeq_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.sgiseeq_private = type { %struct.sgiseeq_regs* }
%struct.sgiseeq_regs = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@SEEQ_TCMD_RB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__sgiseeq_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sgiseeq_set_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sgiseeq_private*, align 8
  %4 = alloca %struct.sgiseeq_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sgiseeq_private* %7, %struct.sgiseeq_private** %3, align 8
  %8 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %9 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %8, i32 0, i32 0
  %10 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %9, align 8
  store %struct.sgiseeq_regs* %10, %struct.sgiseeq_regs** %4, align 8
  %11 = load i32, i32* @SEEQ_TCMD_RB0, align 4
  %12 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %4, align 8
  %13 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %4, align 8
  %26 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %24, i32* %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %14

35:                                               ; preds = %14
  ret void
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
