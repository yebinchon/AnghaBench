; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_host_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_host_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@MO_GPHST_SOFT_RST = common dso_local global i32 0, align 4
@MO_GPHST_WSC = common dso_local global i32 0, align 4
@MO_GPHST_XFR = common dso_local global i32 0, align 4
@MO_GPHST_WDTH = common dso_local global i32 0, align 4
@MO_GPHST_HDSHK = common dso_local global i32 0, align 4
@MO_GPHST_MUX16 = common dso_local global i32 0, align 4
@MO_GPHST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*)* @host_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_setup(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %3 = load i32, i32* @MO_GPHST_SOFT_RST, align 4
  %4 = call i32 @cx_write(i32 %3, i32 1)
  %5 = call i32 @udelay(i32 100)
  %6 = load i32, i32* @MO_GPHST_SOFT_RST, align 4
  %7 = call i32 @cx_write(i32 %6, i32 0)
  %8 = call i32 @udelay(i32 100)
  %9 = load i32, i32* @MO_GPHST_WSC, align 4
  %10 = call i32 @cx_write(i32 %9, i32 1145324612)
  %11 = load i32, i32* @MO_GPHST_XFR, align 4
  %12 = call i32 @cx_write(i32 %11, i32 0)
  %13 = load i32, i32* @MO_GPHST_WDTH, align 4
  %14 = call i32 @cx_write(i32 %13, i32 15)
  %15 = load i32, i32* @MO_GPHST_HDSHK, align 4
  %16 = call i32 @cx_write(i32 %15, i32 0)
  %17 = load i32, i32* @MO_GPHST_MUX16, align 4
  %18 = call i32 @cx_write(i32 %17, i32 1145342088)
  %19 = load i32, i32* @MO_GPHST_MODE, align 4
  %20 = call i32 @cx_write(i32 %19, i32 0)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
