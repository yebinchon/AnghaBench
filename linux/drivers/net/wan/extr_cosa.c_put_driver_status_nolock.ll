; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_put_driver_status_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_put_driver_status_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32 }

@DRIVER_RX_READY = common dso_local global i32 0, align 4
@DRIVER_TX_READY = common dso_local global i32 0, align 4
@DRIVER_TXMAP_SHIFT = common dso_local global i32 0, align 4
@DRIVER_TXMAP_MASK = common dso_local global i32 0, align 4
@SR_RX_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosa_data*)* @put_driver_status_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_driver_status_nolock(%struct.cosa_data* %0) #0 {
  %2 = alloca %struct.cosa_data*, align 8
  %3 = alloca i32, align 4
  store %struct.cosa_data* %0, %struct.cosa_data** %2, align 8
  %4 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %5 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @DRIVER_RX_READY, align 4
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  %13 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %14 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @DRIVER_TX_READY, align 4
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = or i32 %12, %21
  %23 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %24 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %29 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRIVER_TXMAP_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @DRIVER_TXMAP_MASK, align 4
  %35 = and i32 %33, %34
  br label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ %35, %27 ], [ 0, %36 ]
  %39 = or i32 %22, %38
  store i32 %39, i32* %3, align 4
  %40 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %41 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %44 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %50 = load i32, i32* @SR_RX_INT_ENA, align 4
  %51 = call i32 @cosa_putstatus(%struct.cosa_data* %49, i32 %50)
  %52 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %53 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  br label %59

54:                                               ; preds = %37
  %55 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %56 = call i32 @cosa_putstatus(%struct.cosa_data* %55, i32 0)
  %57 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %58 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @cosa_putdata8(%struct.cosa_data* %60, i32 %61)
  ret void
}

declare dso_local i32 @cosa_putstatus(%struct.cosa_data*, i32) #1

declare dso_local i32 @cosa_putdata8(%struct.cosa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
