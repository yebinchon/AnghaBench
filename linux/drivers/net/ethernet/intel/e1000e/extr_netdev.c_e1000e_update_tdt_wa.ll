; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_update_tdt_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_update_tdt_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, %struct.e1000_adapter* }
%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ME firmware caused invalid TDT - resetting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*, i32)* @e1000e_update_tdt_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_update_tdt_wa(%struct.e1000_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %9, i32 0, i32 1
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %10, align 8
  store %struct.e1000_adapter* %11, %struct.e1000_adapter** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = call i32 @__ew32_prepare(%struct.e1000_hw* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @writel(i32 %16, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @readl(i32 %27)
  %29 = icmp ne i32 %24, %28
  br label %30

30:                                               ; preds = %23, %2
  %31 = phi i1 [ false, %2 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32, i32* @TCTL, align 4
  %37 = call i32 @er32(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @TCTL, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @E1000_TCTL_EN, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @ew32(i32 %38, i32 %42)
  %44 = call i32 @e_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %45, i32 0, i32 0
  %47 = call i32 @schedule_work(i32* %46)
  br label %48

48:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @__ew32_prepare(%struct.e1000_hw*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
