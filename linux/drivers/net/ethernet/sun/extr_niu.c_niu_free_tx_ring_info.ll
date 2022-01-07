; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_free_tx_ring_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_free_tx_ring_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32*, i32)* }
%struct.tx_ring_info = type { i64, i64, i64, i64, i32*, i32, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i64 }

@MAX_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.tx_ring_info*)* @niu_free_tx_ring_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_free_tx_ring_info(%struct.niu* %0, %struct.tx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.tx_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.tx_ring_info* %1, %struct.tx_ring_info** %4, align 8
  %6 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %7 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %6, i32 0, i32 7
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.niu*, %struct.niu** %3, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %14, align 8
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %20 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %23 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %15(i32 %18, i32 4, i32* %21, i32 %24)
  %26 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %27 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %26, i32 0, i32 7
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %10, %2
  %29 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %30 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %87

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MAX_TX_RING_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %40 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %39, i32 0, i32 6
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.niu*, %struct.niu** %3, align 8
  %50 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @release_tx_packet(%struct.niu* %49, %struct.tx_ring_info* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.niu*, %struct.niu** %3, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %61, align 8
  %63 = load %struct.niu*, %struct.niu** %3, align 8
  %64 = getelementptr inbounds %struct.niu, %struct.niu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MAX_TX_RING_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %71 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %74 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %62(i32 %65, i32 %69, i32* %72, i32 %75)
  %77 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %78 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %77, i32 0, i32 4
  store i32* null, i32** %78, align 8
  %79 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %80 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %82 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %84 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.tx_ring_info*, %struct.tx_ring_info** %4, align 8
  %86 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %57, %28
  ret void
}

declare dso_local i32 @release_tx_packet(%struct.niu*, %struct.tx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
