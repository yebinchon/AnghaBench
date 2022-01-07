; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_free_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_free_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.tx_ring_info*, %struct.tx_ring_info* }
%struct.tx_ring_info = type { i32 }
%struct.rx_ring_info = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_free_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_free_channels(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca %struct.tx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %6 = load %struct.niu*, %struct.niu** %2, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 3
  %8 = load %struct.tx_ring_info*, %struct.tx_ring_info** %7, align 8
  %9 = icmp ne %struct.tx_ring_info* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.niu*, %struct.niu** %2, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.niu*, %struct.niu** %2, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 3
  %20 = load %struct.tx_ring_info*, %struct.tx_ring_info** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %20, i64 %22
  %24 = bitcast %struct.tx_ring_info* %23 to %struct.rx_ring_info*
  store %struct.rx_ring_info* %24, %struct.rx_ring_info** %4, align 8
  %25 = load %struct.niu*, %struct.niu** %2, align 8
  %26 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %27 = bitcast %struct.rx_ring_info* %26 to %struct.tx_ring_info*
  %28 = call i32 @niu_free_rx_ring_info(%struct.niu* %25, %struct.tx_ring_info* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.niu*, %struct.niu** %2, align 8
  %34 = getelementptr inbounds %struct.niu, %struct.niu* %33, i32 0, i32 3
  %35 = load %struct.tx_ring_info*, %struct.tx_ring_info** %34, align 8
  %36 = call i32 @kfree(%struct.tx_ring_info* %35)
  %37 = load %struct.niu*, %struct.niu** %2, align 8
  %38 = getelementptr inbounds %struct.niu, %struct.niu* %37, i32 0, i32 3
  store %struct.tx_ring_info* null, %struct.tx_ring_info** %38, align 8
  %39 = load %struct.niu*, %struct.niu** %2, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %32, %1
  %42 = load %struct.niu*, %struct.niu** %2, align 8
  %43 = getelementptr inbounds %struct.niu, %struct.niu* %42, i32 0, i32 2
  %44 = load %struct.tx_ring_info*, %struct.tx_ring_info** %43, align 8
  %45 = icmp ne %struct.tx_ring_info* %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.niu*, %struct.niu** %2, align 8
  %50 = getelementptr inbounds %struct.niu, %struct.niu* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.niu*, %struct.niu** %2, align 8
  %55 = getelementptr inbounds %struct.niu, %struct.niu* %54, i32 0, i32 2
  %56 = load %struct.tx_ring_info*, %struct.tx_ring_info** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %56, i64 %58
  store %struct.tx_ring_info* %59, %struct.tx_ring_info** %5, align 8
  %60 = load %struct.niu*, %struct.niu** %2, align 8
  %61 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %62 = call i32 @niu_free_tx_ring_info(%struct.niu* %60, %struct.tx_ring_info* %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.niu*, %struct.niu** %2, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 2
  %69 = load %struct.tx_ring_info*, %struct.tx_ring_info** %68, align 8
  %70 = call i32 @kfree(%struct.tx_ring_info* %69)
  %71 = load %struct.niu*, %struct.niu** %2, align 8
  %72 = getelementptr inbounds %struct.niu, %struct.niu* %71, i32 0, i32 2
  store %struct.tx_ring_info* null, %struct.tx_ring_info** %72, align 8
  %73 = load %struct.niu*, %struct.niu** %2, align 8
  %74 = getelementptr inbounds %struct.niu, %struct.niu* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %41
  ret void
}

declare dso_local i32 @niu_free_rx_ring_info(%struct.niu*, %struct.tx_ring_info*) #1

declare dso_local i32 @kfree(%struct.tx_ring_info*) #1

declare dso_local i32 @niu_free_tx_ring_info(%struct.niu*, %struct.tx_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
