; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_needs_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_needs_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ring_info = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@copybreak = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_ring_info*, i32)* @needs_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_copy(%struct.rx_ring_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rx_ring_info* %0, %struct.rx_ring_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %7 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ETH_HLEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @IS_ALIGNED(i64 %10, i32 4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @copybreak, align 4
  %17 = icmp ult i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
