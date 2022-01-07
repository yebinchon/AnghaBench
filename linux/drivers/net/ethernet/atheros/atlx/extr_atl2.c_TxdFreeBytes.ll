; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_TxdFreeBytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_TxdFreeBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_adapter*)* @TxdFreeBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TxdFreeBytes(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %4 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %4, i32 0, i32 2
  %6 = call i32 @atomic_read(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  br label %30

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  br label %30

30:                                               ; preds = %23, %12
  %31 = phi i32 [ %22, %12 ], [ %29, %23 ]
  ret i32 %31
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
