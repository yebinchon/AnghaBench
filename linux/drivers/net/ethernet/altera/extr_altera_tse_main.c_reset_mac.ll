; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_reset_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32 }

@command_config = common dso_local global i32 0, align 4
@MAC_CMDCFG_TX_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_RX_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_SW_RESET = common dso_local global i32 0, align 4
@MAC_CMDCFG_CNT_RESET = common dso_local global i32 0, align 4
@ALTERA_TSE_SW_RESET_WATCHDOG_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_tse_private*)* @reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_mac(%struct.altera_tse_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @command_config, align 4
  %10 = call i32 @tse_csroffs(i32 %9)
  %11 = call i32 @csrrd32(i32 %8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MAC_CMDCFG_TX_ENA, align 4
  %13 = load i32, i32* @MAC_CMDCFG_RX_ENA, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MAC_CMDCFG_SW_RESET, align 4
  %19 = load i32, i32* @MAC_CMDCFG_CNT_RESET, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %25 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @command_config, align 4
  %28 = call i32 @tse_csroffs(i32 %27)
  %29 = call i32 @csrwr32(i32 %23, i32 %26, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %45, %1
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @ALTERA_TSE_SW_RESET_WATCHDOG_CNTR, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %37 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @command_config, align 4
  %40 = call i32 @tse_csroffs(i32 %39)
  %41 = load i32, i32* @MAC_CMDCFG_SW_RESET, align 4
  %42 = call i64 @tse_bit_is_clear(i32 %38, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %47

45:                                               ; preds = %35
  %46 = call i32 @udelay(i32 1)
  br label %30

47:                                               ; preds = %44, %30
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ALTERA_TSE_SW_RESET_WATCHDOG_CNTR, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %53 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @command_config, align 4
  %56 = call i32 @tse_csroffs(i32 %55)
  %57 = call i32 @csrrd32(i32 %54, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @MAC_CMDCFG_SW_RESET, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %64 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @command_config, align 4
  %67 = call i32 @tse_csroffs(i32 %66)
  %68 = call i32 @csrwr32(i32 %62, i32 %65, i32 %67)
  store i32 -1, i32* %2, align 4
  br label %70

69:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @csrrd32(i32, i32) #1

declare dso_local i32 @tse_csroffs(i32) #1

declare dso_local i32 @csrwr32(i32, i32, i32) #1

declare dso_local i64 @tse_bit_is_clear(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
