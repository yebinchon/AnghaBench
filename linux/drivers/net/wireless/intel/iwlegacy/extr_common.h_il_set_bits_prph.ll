; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.h_il_set_bits_prph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.h_il_set_bits_prph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32, i32)* @il_set_bits_prph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_set_bits_prph(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %13 = call i32 @_il_grab_nic_access(%struct.il_priv* %12)
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @_il_rd_prph(%struct.il_priv* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @_il_wr_prph(%struct.il_priv* %17, i32 %18, i32 %23)
  %25 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %26 = call i32 @_il_release_nic_access(%struct.il_priv* %25)
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @_il_grab_nic_access(%struct.il_priv*) #1

declare dso_local i32 @_il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_rd_prph(%struct.il_priv*, i32) #1

declare dso_local i32 @_il_release_nic_access(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
