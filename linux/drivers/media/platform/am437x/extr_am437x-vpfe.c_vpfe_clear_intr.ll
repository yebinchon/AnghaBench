; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_clear_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_clear_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }

@VPFE_IRQ_STS = common dso_local global i32 0, align 4
@VPFE_IRQ_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*, i32)* @vpfe_clear_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_clear_intr(%struct.vpfe_ccdc* %0, i32 %1) #0 {
  %3 = alloca %struct.vpfe_ccdc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %7 = load i32, i32* @VPFE_IRQ_STS, align 4
  %8 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %25 [
    i32 130, label %10
    i32 129, label %15
    i32 128, label %20
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, -131
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, 130
  store i32 %14, i32* %5, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -130
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, 129
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, -129
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, 128
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, -132
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 131
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20, %15, %10
  %31 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VPFE_IRQ_STS, align 4
  %34 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %31, i32 %32, i32 %33)
  %35 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %36 = load i32, i32* @VPFE_IRQ_STS, align 4
  %37 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %39 = load i32, i32* @VPFE_IRQ_EOI, align 4
  %40 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %38, i32 1, i32 %39)
  ret void
}

declare dso_local i32 @vpfe_reg_read(%struct.vpfe_ccdc*, i32) #1

declare dso_local i32 @vpfe_reg_write(%struct.vpfe_ccdc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
