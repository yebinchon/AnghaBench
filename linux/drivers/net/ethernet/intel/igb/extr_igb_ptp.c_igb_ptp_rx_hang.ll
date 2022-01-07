; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_rx_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_rx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, i64, %struct.TYPE_3__*, i32, %struct.e1000_hw }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@E1000_TSYNCRXCTL = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_TSYNCRXCTL_VALID = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@E1000_RXSTMPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"clearing Rx timestamp hang\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_ptp_rx_hang(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 4
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_82576, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %65

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @E1000_TSYNCRXCTL_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** @jiffies, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %65

27:                                               ; preds = %17
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 5, %43
  %45 = sext i32 %44 to i64
  %46 = add i64 %42, %45
  %47 = call i64 @time_is_before_jiffies(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %41
  %50 = load i32, i32* @E1000_RXSTMPH, align 4
  %51 = call i32 @rd32(i32 %50)
  %52 = load i8*, i8** @jiffies, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(i32* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %16, %22, %49, %41
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
