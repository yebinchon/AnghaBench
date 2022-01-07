; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_tp.c_t1_tp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.petp = type { i32* }
%struct.tp_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.petp* @t1_tp_create(i32* %0, %struct.tp_params* %1) #0 {
  %3 = alloca %struct.petp*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tp_params*, align 8
  %6 = alloca %struct.petp*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tp_params* %1, %struct.tp_params** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.petp* @kzalloc(i32 8, i32 %7)
  store %struct.petp* %8, %struct.petp** %6, align 8
  %9 = load %struct.petp*, %struct.petp** %6, align 8
  %10 = icmp ne %struct.petp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.petp* null, %struct.petp** %3, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.petp*, %struct.petp** %6, align 8
  %15 = getelementptr inbounds %struct.petp, %struct.petp* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.petp*, %struct.petp** %6, align 8
  store %struct.petp* %16, %struct.petp** %3, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.petp*, %struct.petp** %3, align 8
  ret %struct.petp* %18
}

declare dso_local %struct.petp* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
