; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mib_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_REG_MIB = common dso_local global i32 0, align 4
@QCA8K_MIB_FLUSH = common dso_local global i32 0, align 4
@QCA8K_MIB_BUSY = common dso_local global i32 0, align 4
@QCA8K_MIB_CPU_KEEP = common dso_local global i32 0, align 4
@QCA8K_REG_MODULE_EN = common dso_local global i32 0, align 4
@QCA8K_MODULE_EN_MIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qca8k_priv*)* @qca8k_mib_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_mib_init(%struct.qca8k_priv* %0) #0 {
  %2 = alloca %struct.qca8k_priv*, align 8
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %2, align 8
  %3 = load %struct.qca8k_priv*, %struct.qca8k_priv** %2, align 8
  %4 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.qca8k_priv*, %struct.qca8k_priv** %2, align 8
  %7 = load i32, i32* @QCA8K_REG_MIB, align 4
  %8 = load i32, i32* @QCA8K_MIB_FLUSH, align 4
  %9 = load i32, i32* @QCA8K_MIB_BUSY, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @qca8k_reg_set(%struct.qca8k_priv* %6, i32 %7, i32 %10)
  %12 = load %struct.qca8k_priv*, %struct.qca8k_priv** %2, align 8
  %13 = load i32, i32* @QCA8K_REG_MIB, align 4
  %14 = load i32, i32* @QCA8K_MIB_BUSY, align 4
  %15 = call i32 @qca8k_busy_wait(%struct.qca8k_priv* %12, i32 %13, i32 %14)
  %16 = load %struct.qca8k_priv*, %struct.qca8k_priv** %2, align 8
  %17 = load i32, i32* @QCA8K_REG_MIB, align 4
  %18 = load i32, i32* @QCA8K_MIB_CPU_KEEP, align 4
  %19 = call i32 @qca8k_reg_set(%struct.qca8k_priv* %16, i32 %17, i32 %18)
  %20 = load %struct.qca8k_priv*, %struct.qca8k_priv** %2, align 8
  %21 = load i32, i32* @QCA8K_REG_MODULE_EN, align 4
  %22 = load i32, i32* @QCA8K_MODULE_EN_MIB, align 4
  %23 = call i32 @qca8k_write(%struct.qca8k_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.qca8k_priv*, %struct.qca8k_priv** %2, align 8
  %25 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qca8k_reg_set(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @qca8k_busy_wait(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
