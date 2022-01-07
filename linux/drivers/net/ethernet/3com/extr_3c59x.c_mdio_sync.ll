; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_mdio_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_mdio_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vortex_private = type { i32 }

@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@Wn4_PhysicalMgmt = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vortex_private*, i32)* @mdio_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_sync(%struct.vortex_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vortex_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vortex_private* %0, %struct.vortex_private** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %11 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  %12 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %13 = call i32 @window_write16(%struct.vortex_private* %10, i32 %11, i32 4, i32 %12)
  %14 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %15 = call i32 @mdio_delay(%struct.vortex_private* %14)
  %16 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %17 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  %18 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %21 = call i32 @window_write16(%struct.vortex_private* %16, i32 %19, i32 4, i32 %20)
  %22 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %23 = call i32 @mdio_delay(%struct.vortex_private* %22)
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i32 @window_write16(%struct.vortex_private*, i32, i32, i32) #1

declare dso_local i32 @mdio_delay(%struct.vortex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
