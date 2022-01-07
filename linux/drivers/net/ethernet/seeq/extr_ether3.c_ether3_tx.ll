; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@buffer_read = common dso_local global i32 0, align 4
@TXSTAT_DONE = common dso_local global i64 0, align 8
@TXHDR_TRANSMIT = common dso_local global i64 0, align 8
@TXSTAT_BABBLED = common dso_local global i64 0, align 8
@TXSTAT_16COLLISIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ether3_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether3_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.TYPE_4__* @priv(%struct.net_device* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 14, i32* %4, align 4
  br label %10

10:                                               ; preds = %73, %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @buffer_read, align 4
  %13 = load i32, i32* %3, align 4
  %14 = mul i32 %13, 1536
  %15 = call i32 @ether3_setbuffer(%struct.net_device* %11, i32 %12, i32 %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i64 @ether3_readlong(%struct.net_device* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @TXSTAT_DONE, align 8
  %20 = load i64, i64* @TXHDR_TRANSMIT, align 8
  %21 = or i64 %19, %20
  %22 = and i64 %18, %21
  %23 = load i64, i64* @TXSTAT_DONE, align 8
  %24 = load i64, i64* @TXHDR_TRANSMIT, align 8
  %25 = or i64 %23, %24
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  br label %77

28:                                               ; preds = %10
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @TXSTAT_BABBLED, align 8
  %31 = load i64, i64* @TXSTAT_16COLLISIONS, align 8
  %32 = or i64 %30, %31
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %69

41:                                               ; preds = %28
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @TXSTAT_16COLLISIONS, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 16
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @TXSTAT_BABBLED, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  %72 = and i32 %71, 15
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %10, label %77

77:                                               ; preds = %73, %27
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call %struct.TYPE_4__* @priv(%struct.net_device* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call %struct.TYPE_4__* @priv(%struct.net_device* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = call i32 @netif_wake_queue(%struct.net_device* %89)
  br label %91

91:                                               ; preds = %84, %77
  ret void
}

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_setbuffer(%struct.net_device*, i32, i32) #1

declare dso_local i64 @ether3_readlong(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
