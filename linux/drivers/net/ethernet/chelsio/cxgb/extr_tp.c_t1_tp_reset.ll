; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.petp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tp_params = type { i32 }

@F_TP_RESET = common dso_local global i32 0, align 4
@A_TP_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_tp_reset(%struct.petp* %0, %struct.tp_params* %1, i32 %2) #0 {
  %4 = alloca %struct.petp*, align 8
  %5 = alloca %struct.tp_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.petp* %0, %struct.petp** %4, align 8
  store %struct.tp_params* %1, %struct.tp_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.petp*, %struct.petp** %4, align 8
  %9 = getelementptr inbounds %struct.petp, %struct.petp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.tp_params*, %struct.tp_params** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @tp_init(%struct.TYPE_3__* %11, %struct.tp_params* %12, i32 %13)
  %15 = load i32, i32* @F_TP_RESET, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @A_TP_RESET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  ret i32 0
}

declare dso_local i32 @tp_init(%struct.TYPE_3__*, %struct.tp_params*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
