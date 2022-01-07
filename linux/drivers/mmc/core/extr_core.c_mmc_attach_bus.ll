; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_attach_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_attach_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i64, i32 }
%struct.mmc_bus_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_attach_bus(%struct.mmc_host* %0, %struct.mmc_bus_ops* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_bus_ops*, align 8
  %5 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_bus_ops* %1, %struct.mmc_bus_ops** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.mmc_bus_ops*, %struct.mmc_bus_ops** %4, align 8
  %26 = ptrtoint %struct.mmc_bus_ops* %25 to i32
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 2
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
