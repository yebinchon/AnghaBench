; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.h_cobalt_s_bit_sysctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.h_cobalt_s_bit_sysctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32 }

@COBALT_SYS_CTRL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*, i32, i32)* @cobalt_s_bit_sysctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_s_bit_sysctrl(%struct.cobalt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cobalt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cobalt* %0, %struct.cobalt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %9 = load i32, i32* @COBALT_SYS_CTRL_BASE, align 4
  %10 = call i64 @cobalt_read_bar1(%struct.cobalt* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %12 = load i32, i32* @COBALT_SYS_CTRL_BASE, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = xor i64 %16, -1
  %18 = and i64 %13, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = or i64 %18, %22
  %24 = call i32 @cobalt_write_bar1(%struct.cobalt* %11, i32 %12, i64 %23)
  ret void
}

declare dso_local i64 @cobalt_read_bar1(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_write_bar1(%struct.cobalt*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
