; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RxDisable = common dso_local global i32 0, align 4
@TxDisable = common dso_local global i32 0, align 4
@StopCoax = common dso_local global i32 0, align 4
@WN4_MEDIA = common dso_local global i64 0, align 8
@MEDIA_TP = common dso_local global i32 0, align 4
@SetIntrEnb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @el3_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @el3_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load i32, i32* @StatsDisable, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @EL3_CMD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outw(i32 %9, i64 %13)
  %15 = load i32, i32* @RxDisable, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @EL3_CMD, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outw(i32 %15, i64 %19)
  %21 = load i32, i32* @TxDisable, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @EL3_CMD, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i32 %21, i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @StopCoax, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @EL3_CMD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outw(i32 %32, i64 %36)
  br label %59

38:                                               ; preds = %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = call i32 @EL3WINDOW(i32 4)
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @WN4_MEDIA, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inw(i64 %48)
  %50 = load i32, i32* @MEDIA_TP, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @WN4_MEDIA, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %43, %38
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* @SetIntrEnb, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @EL3_CMD, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outw(i32 %60, i64 %64)
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @update_stats(%struct.net_device* %66)
  ret void
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @update_stats(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
