; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_enable_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_enable_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32 }

@B53_MGMT_PAGE = common dso_local global i32 0, align 4
@B53_GLOBAL_CONFIG = common dso_local global i32 0, align 4
@GC_RESET_MIB = common dso_local global i32 0, align 4
@GC_MIB_AC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*)* @b53_enable_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_enable_mib(%struct.b53_device* %0) #0 {
  %2 = alloca %struct.b53_device*, align 8
  %3 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %2, align 8
  %4 = load %struct.b53_device*, %struct.b53_device** %2, align 8
  %5 = load i32, i32* @B53_MGMT_PAGE, align 4
  %6 = load i32, i32* @B53_GLOBAL_CONFIG, align 4
  %7 = call i32 @b53_read8(%struct.b53_device* %4, i32 %5, i32 %6, i32* %3)
  %8 = load i32, i32* @GC_RESET_MIB, align 4
  %9 = load i32, i32* @GC_MIB_AC_EN, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.b53_device*, %struct.b53_device** %2, align 8
  %15 = load i32, i32* @B53_MGMT_PAGE, align 4
  %16 = load i32, i32* @B53_GLOBAL_CONFIG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @b53_write8(%struct.b53_device* %14, i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
