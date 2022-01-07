; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_put_driver_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_put_driver_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32, i32, i32 }

@DRIVER_RX_READY = common dso_local global i32 0, align 4
@DRIVER_TX_READY = common dso_local global i32 0, align 4
@DRIVER_TXMAP_SHIFT = common dso_local global i32 0, align 4
@DRIVER_TXMAP_MASK = common dso_local global i32 0, align 4
@SR_RX_INT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosa_data*)* @put_driver_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_driver_status(%struct.cosa_data* %0) #0 {
  %2 = alloca %struct.cosa_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.cosa_data* %0, %struct.cosa_data** %2, align 8
  %5 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %6 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %5, i32 0, i32 3
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %10 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @DRIVER_RX_READY, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %19 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @DRIVER_TX_READY, align 4
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %17, %26
  %28 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %29 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %34 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRIVER_TXMAP_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @DRIVER_TXMAP_MASK, align 4
  %40 = and i32 %38, %39
  br label %42

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %32
  %43 = phi i32 [ %40, %32 ], [ 0, %41 ]
  %44 = or i32 %27, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %46 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %42
  %50 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %51 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %54 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %60 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %65 = load i32, i32* @SR_RX_INT_ENA, align 4
  %66 = call i32 @cosa_putstatus(%struct.cosa_data* %64, i32 %65)
  %67 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %68 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %58
  br label %81

70:                                               ; preds = %49
  %71 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %72 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %77 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %79 = call i32 @cosa_putstatus(%struct.cosa_data* %78, i32 0)
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %69
  %82 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @cosa_putdata8(%struct.cosa_data* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %42
  %86 = load %struct.cosa_data*, %struct.cosa_data** %2, align 8
  %87 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %86, i32 0, i32 3
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cosa_putstatus(%struct.cosa_data*, i32) #1

declare dso_local i32 @cosa_putdata8(%struct.cosa_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
