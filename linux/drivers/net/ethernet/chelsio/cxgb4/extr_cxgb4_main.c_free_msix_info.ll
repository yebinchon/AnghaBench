; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_free_msix_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_free_msix_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @free_msix_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_msix_info(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = getelementptr inbounds %struct.adapter, %struct.adapter* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %23

13:                                               ; preds = %7
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @kfree(i32 %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
