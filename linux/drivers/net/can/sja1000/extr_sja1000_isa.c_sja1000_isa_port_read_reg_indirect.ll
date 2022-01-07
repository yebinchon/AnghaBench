; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000_isa.c_sja1000_isa_port_read_reg_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000_isa.c_sja1000_isa_port_read_reg_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@indirect_lock = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1000_priv*, i32)* @sja1000_isa_port_read_reg_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_isa_port_read_reg_indirect(%struct.sja1000_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.sja1000_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i32*, i32** @indirect_lock, align 8
  %12 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @outb(i32 %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  %25 = call i32 @inb(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** @indirect_lock, align 8
  %27 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
