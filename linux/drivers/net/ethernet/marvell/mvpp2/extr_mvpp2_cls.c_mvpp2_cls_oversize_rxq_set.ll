; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_oversize_rxq_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_oversize_rxq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32 }

@MVPP2_CLS_OVERSIZE_RXQ_LOW_MASK = common dso_local global i32 0, align 4
@MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS = common dso_local global i32 0, align 4
@MVPP2_CLS_SWFWD_PCTRL_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_cls_oversize_rxq_set(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MVPP2_CLS_OVERSIZE_RXQ_LOW_REG(i32 %9)
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MVPP2_CLS_OVERSIZE_RXQ_LOW_MASK, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @mvpp2_write(i32 %6, i32 %10, i32 %15)
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MVPP2_CLS_SWFWD_P2HQ_REG(i32 %22)
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %25 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS, align 4
  %28 = ashr i32 %26, %27
  %29 = call i32 @mvpp2_write(i32 %19, i32 %23, i32 %28)
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MVPP2_CLS_SWFWD_PCTRL_REG, align 4
  %34 = call i32 @mvpp2_read(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %36 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MVPP2_CLS_SWFWD_PCTRL_MASK(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %42 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MVPP2_CLS_SWFWD_PCTRL_REG, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @mvpp2_write(i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

declare dso_local i32 @MVPP2_CLS_OVERSIZE_RXQ_LOW_REG(i32) #1

declare dso_local i32 @MVPP2_CLS_SWFWD_P2HQ_REG(i32) #1

declare dso_local i32 @mvpp2_read(i32, i32) #1

declare dso_local i32 @MVPP2_CLS_SWFWD_PCTRL_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
