; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mii_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_mii_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fec_enet_private = type { i32 }

@mii_cnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fec_enet_private*)* @fec_enet_mii_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_mii_remove(%struct.fec_enet_private* %0) #0 {
  %2 = alloca %struct.fec_enet_private*, align 8
  store %struct.fec_enet_private* %0, %struct.fec_enet_private** %2, align 8
  %3 = load i64, i64* @mii_cnt, align 8
  %4 = add nsw i64 %3, -1
  store i64 %4, i64* @mii_cnt, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.fec_enet_private*, %struct.fec_enet_private** %2, align 8
  %8 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mdiobus_unregister(i32 %9)
  %11 = load %struct.fec_enet_private*, %struct.fec_enet_private** %2, align 8
  %12 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mdiobus_free(i32 %13)
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
