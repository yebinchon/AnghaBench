; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_make_entry_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_alr_make_entry_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32 }

@LAN9303_SWE_ALR_WR_DAT_0 = common dso_local global i32 0, align 4
@LAN9303_SWE_ALR_WR_DAT_1 = common dso_local global i32 0, align 4
@LAN9303_SWE_ALR_CMD = common dso_local global i32 0, align 4
@LAN9303_ALR_CMD_MAKE_ENTRY = common dso_local global i32 0, align 4
@LAN9303_SWE_ALR_CMD_STS = common dso_local global i32 0, align 4
@ALR_STS_MAKE_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*, i32, i32)* @lan9303_alr_make_entry_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_alr_make_entry_raw(%struct.lan9303* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %8 = load i32, i32* @LAN9303_SWE_ALR_WR_DAT_0, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @lan9303_write_switch_reg(%struct.lan9303* %7, i32 %8, i32 %9)
  %11 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %12 = load i32, i32* @LAN9303_SWE_ALR_WR_DAT_1, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lan9303_write_switch_reg(%struct.lan9303* %11, i32 %12, i32 %13)
  %15 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %16 = load i32, i32* @LAN9303_SWE_ALR_CMD, align 4
  %17 = load i32, i32* @LAN9303_ALR_CMD_MAKE_ENTRY, align 4
  %18 = call i32 @lan9303_write_switch_reg(%struct.lan9303* %15, i32 %16, i32 %17)
  %19 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %20 = load i32, i32* @LAN9303_SWE_ALR_CMD_STS, align 4
  %21 = load i32, i32* @ALR_STS_MAKE_PEND, align 4
  %22 = call i32 @lan9303_csr_reg_wait(%struct.lan9303* %19, i32 %20, i32 %21)
  %23 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %24 = load i32, i32* @LAN9303_SWE_ALR_CMD, align 4
  %25 = call i32 @lan9303_write_switch_reg(%struct.lan9303* %23, i32 %24, i32 0)
  ret i32 0
}

declare dso_local i32 @lan9303_write_switch_reg(%struct.lan9303*, i32, i32) #1

declare dso_local i32 @lan9303_csr_reg_wait(%struct.lan9303*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
