; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_grp = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IEVENT_FGPI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IMASK_RX_DISABLED = common dso_local global i32 0, align 4
@IEVENT_RX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gfar_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_receive(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gfar_priv_grp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gfar_priv_grp*
  store %struct.gfar_priv_grp* %11, %struct.gfar_priv_grp** %6, align 8
  %12 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %13 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @gfar_read(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IEVENT_FGPI, align 4
  %19 = and i32 %17, %18
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %24 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @IEVENT_FGPI, align 4
  %28 = call i32 @gfar_write(i32* %26, i32 %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %2
  %31 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %32 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %31, i32 0, i32 1
  %33 = call i32 @napi_schedule_prep(i32* %32)
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %30
  %37 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %38 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %37, i32 0, i32 2
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %42 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @gfar_read(i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @IMASK_RX_DISABLED, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %50 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @gfar_write(i32* %52, i32 %53)
  %55 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %56 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %55, i32 0, i32 2
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %60 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %59, i32 0, i32 1
  %61 = call i32 @__napi_schedule(i32* %60)
  br label %69

62:                                               ; preds = %30
  %63 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %6, align 8
  %64 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* @IEVENT_RX_MASK, align 4
  %68 = call i32 @gfar_write(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %36
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
