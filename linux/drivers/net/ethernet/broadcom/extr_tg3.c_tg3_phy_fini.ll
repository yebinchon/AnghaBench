; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32 }

@TG3_PHYFLG_IS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_fini(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %3 = load %struct.tg3*, %struct.tg3** %2, align 8
  %4 = getelementptr inbounds %struct.tg3, %struct.tg3* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.tg3*, %struct.tg3** %2, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mdiobus_get_phy(i32 %12, i32 %15)
  %17 = call i32 @phy_disconnect(i32 %16)
  %18 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @mdiobus_get_phy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
