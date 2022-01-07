; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_halt_axi_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_halt_axi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@AHB_AXI_BUS_HALT_REQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ATH10K_AHB_AXI_BUS_HALT_TIMEOUT = common dso_local global i32 0, align 4
@AHB_AXI_BUS_HALT_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to halt axi bus: %d\0A\00", align 1
@ATH10K_DBG_AHB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"axi bus halted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i32, i32)* @ath10k_ahb_halt_axi_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ahb_halt_axi_bus(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ath10k_ahb_tcsr_read32(%struct.ath10k* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @AHB_AXI_BUS_HALT_REQ, align 4
  %13 = load i32, i32* %8, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ath10k_ahb_tcsr_write32(%struct.ath10k* %15, i32 %16, i32 %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @ATH10K_AHB_AXI_BUS_HALT_TIMEOUT, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add i64 %19, %21
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %34, %3
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ath10k_ahb_tcsr_read32(%struct.ath10k* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AHB_AXI_BUS_HALT_ACK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %39

32:                                               ; preds = %23
  %33 = call i32 @mdelay(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @time_before(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AHB_AXI_BUS_HALT_ACK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ath10k_err(%struct.ath10k* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %50 = load i32, i32* @ATH10K_DBG_AHB, align 4
  %51 = call i32 @ath10k_dbg(%struct.ath10k* %49, i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %44
  ret void
}

declare dso_local i32 @ath10k_ahb_tcsr_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ahb_tcsr_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
