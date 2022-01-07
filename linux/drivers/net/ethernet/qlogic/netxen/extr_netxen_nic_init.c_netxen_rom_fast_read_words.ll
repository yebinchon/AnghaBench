; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_rom_fast_read_words.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_rom_fast_read_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_rom_fast_read_words(%struct.netxen_adapter* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %12 = call i32 @netxen_rom_lock(%struct.netxen_adapter* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %5, align 4
  br label %26

17:                                               ; preds = %4
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @do_rom_fast_read_words(%struct.netxen_adapter* %18, i32 %19, i32* %20, i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %24 = call i32 @netxen_rom_unlock(%struct.netxen_adapter* %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @netxen_rom_lock(%struct.netxen_adapter*) #1

declare dso_local i32 @do_rom_fast_read_words(%struct.netxen_adapter*, i32, i32*, i64) #1

declare dso_local i32 @netxen_rom_unlock(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
