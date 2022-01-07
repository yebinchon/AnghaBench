; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_msi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_msi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_msi_context = type { i64, %struct.efx_nic* }
%struct.efx_nic = type { i64, i32*, i32, i32, i32 }

@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IRQ %d on CPU %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @efx_ef10_msi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_msi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.efx_msi_context*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.efx_msi_context*
  store %struct.efx_msi_context* %8, %struct.efx_msi_context** %5, align 8
  %9 = load %struct.efx_msi_context*, %struct.efx_msi_context** %5, align 8
  %10 = getelementptr inbounds %struct.efx_msi_context, %struct.efx_msi_context* %9, i32 0, i32 1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  store %struct.efx_nic* %11, %struct.efx_nic** %6, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %13 = load i32, i32* @intr, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (...) @raw_smp_processor_id()
  %19 = call i32 @netif_vdbg(%struct.efx_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load %struct.efx_msi_context*, %struct.efx_msi_context** %5, align 8
  %28 = getelementptr inbounds %struct.efx_msi_context, %struct.efx_msi_context* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = call i32 (...) @raw_smp_processor_id()
  %36 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.efx_msi_context*, %struct.efx_msi_context** %5, align 8
  %43 = getelementptr inbounds %struct.efx_msi_context, %struct.efx_msi_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @efx_schedule_channel_irq(i32 %46)
  br label %48

48:                                               ; preds = %38, %2
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @efx_schedule_channel_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
