; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_grp_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_grp_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_grp = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TX = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@ER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_priv_grp*)* @free_grp_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_grp_irqs(%struct.gfar_priv_grp* %0) #0 {
  %2 = alloca %struct.gfar_priv_grp*, align 8
  store %struct.gfar_priv_grp* %0, %struct.gfar_priv_grp** %2, align 8
  %3 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %2, align 8
  %4 = load i32, i32* @TX, align 4
  %5 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %3, i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %2, align 8
  %9 = call i32 @free_irq(i32 %7, %struct.gfar_priv_grp* %8)
  %10 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %2, align 8
  %11 = load i32, i32* @RX, align 4
  %12 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %10, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %2, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.gfar_priv_grp* %15)
  %17 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %2, align 8
  %18 = load i32, i32* @ER, align 4
  %19 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.gfar_priv_grp* %22)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.gfar_priv_grp*) #1

declare dso_local %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
