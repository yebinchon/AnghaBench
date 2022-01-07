; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_eeprom_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_eeprom_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32, i32)* @eeprom_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_op(%struct.ipw_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %9 = call i32 @eeprom_cs(%struct.ipw_priv* %8)
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %11 = call i32 @eeprom_write_bit(%struct.ipw_priv* %10, i32 1)
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 2
  %15 = call i32 @eeprom_write_bit(%struct.ipw_priv* %12, i32 %14)
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = call i32 @eeprom_write_bit(%struct.ipw_priv* %16, i32 %18)
  store i32 7, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = call i32 @eeprom_write_bit(%struct.ipw_priv* %24, i32 %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %7, align 4
  br label %20

33:                                               ; preds = %20
  ret void
}

declare dso_local i32 @eeprom_cs(%struct.ipw_priv*) #1

declare dso_local i32 @eeprom_write_bit(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
