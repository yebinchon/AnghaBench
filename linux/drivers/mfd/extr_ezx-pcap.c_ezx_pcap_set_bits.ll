; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_ezx_pcap_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i32 }

@PCAP_REGISTER_READ_OP_BIT = common dso_local global i32 0, align 4
@PCAP_REGISTER_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@PCAP_REGISTER_VALUE_MASK = common dso_local global i32 0, align 4
@PCAP_REGISTER_WRITE_OP_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ezx_pcap_set_bits(%struct.pcap_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pcap_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcap_chip* %0, %struct.pcap_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @PCAP_REGISTER_READ_OP_BIT, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PCAP_REGISTER_ADDRESS_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %18 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %22 = call i32 @ezx_pcap_putget(%struct.pcap_chip* %21, i32* %11)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %46

26:                                               ; preds = %4
  %27 = load i32, i32* @PCAP_REGISTER_VALUE_MASK, align 4
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @PCAP_REGISTER_WRITE_OP_BIT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PCAP_REGISTER_ADDRESS_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %45 = call i32 @ezx_pcap_putget(%struct.pcap_chip* %44, i32* %11)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %26, %25
  %47 = load %struct.pcap_chip*, %struct.pcap_chip** %5, align 8
  %48 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ezx_pcap_putget(%struct.pcap_chip*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
