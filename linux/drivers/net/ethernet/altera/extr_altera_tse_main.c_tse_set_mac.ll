; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32 }

@command_config = common dso_local global i32 0, align 4
@MAC_CMDCFG_TX_ENA = common dso_local global i32 0, align 4
@MAC_CMDCFG_RX_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_tse_private*, i32)* @tse_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_set_mac(%struct.altera_tse_private* %0, i32 %1) #0 {
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @command_config, align 4
  %10 = call i32 @tse_csroffs(i32 %9)
  %11 = call i32 @csrrd32(i32 %8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @MAC_CMDCFG_TX_ENA, align 4
  %16 = load i32, i32* @MAC_CMDCFG_RX_ENA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @MAC_CMDCFG_TX_ENA, align 4
  %22 = load i32, i32* @MAC_CMDCFG_RX_ENA, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %30 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @command_config, align 4
  %33 = call i32 @tse_csroffs(i32 %32)
  %34 = call i32 @csrwr32(i32 %28, i32 %31, i32 %33)
  ret void
}

declare dso_local i32 @csrrd32(i32, i32) #1

declare dso_local i32 @tse_csroffs(i32) #1

declare dso_local i32 @csrwr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
