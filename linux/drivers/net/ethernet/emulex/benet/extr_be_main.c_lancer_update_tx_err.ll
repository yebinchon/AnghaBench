; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_lancer_update_tx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_lancer_update_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_tx_obj = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_tx_obj*, i32)* @lancer_update_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lancer_update_tx_err(%struct.be_tx_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.be_tx_obj*, align 8
  %4 = alloca i32, align 4
  store %struct.be_tx_obj* %0, %struct.be_tx_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %42 [
    i32 131, label %6
    i32 133, label %12
    i32 132, label %12
    i32 129, label %18
    i32 130, label %24
    i32 134, label %30
    i32 128, label %36
  ]

6:                                                ; preds = %2
  %7 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %8 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %42

12:                                               ; preds = %2, %2
  %13 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %14 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %20 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %26 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %32 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.be_tx_obj*, %struct.be_tx_obj** %3, align 8
  %38 = call %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %2, %36, %30, %24, %18, %12, %6
  ret void
}

declare dso_local %struct.TYPE_2__* @tx_stats(%struct.be_tx_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
