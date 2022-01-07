; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_grp = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IMASK_TX_DISABLED = common dso_local global i32 0, align 4
@IEVENT_TX_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gfar_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_transmit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfar_priv_grp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.gfar_priv_grp*
  store %struct.gfar_priv_grp* %9, %struct.gfar_priv_grp** %5, align 8
  %10 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %11 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %10, i32 0, i32 1
  %12 = call i32 @napi_schedule_prep(i32* %11)
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %17 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %16, i32 0, i32 2
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %21 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @gfar_read(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @IMASK_TX_DISABLED, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %29 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @gfar_write(i32* %31, i32 %32)
  %34 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %35 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %34, i32 0, i32 2
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %39 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %38, i32 0, i32 1
  %40 = call i32 @__napi_schedule(i32* %39)
  br label %48

41:                                               ; preds = %2
  %42 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %5, align 8
  %43 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* @IEVENT_TX_MASK, align 4
  %47 = call i32 @gfar_write(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %15
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
