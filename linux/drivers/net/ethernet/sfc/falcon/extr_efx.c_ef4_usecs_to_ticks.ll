; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_usecs_to_ticks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_usecs_to_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_usecs_to_ticks(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = mul i32 %10, 1000
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %24

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = mul i32 %18, 1000
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %21 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = udiv i32 %19, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %16, %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
