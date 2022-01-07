; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_reset_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_reset_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32**, i32**, %struct.igb_q_vector** }
%struct.igb_q_vector = type { i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_reset_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_reset_q_vector(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_q_vector*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 2
  %8 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %8, i64 %10
  %12 = load %struct.igb_q_vector*, %struct.igb_q_vector** %11, align 8
  store %struct.igb_q_vector* %12, %struct.igb_q_vector** %5, align 8
  %13 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %14 = icmp ne %struct.igb_q_vector* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %54

16:                                               ; preds = %2
  %17 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %18 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %27 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %25, i64 %31
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %22, %16
  %34 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %35 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %44 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %42, i64 %48
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %39, %33
  %51 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %52 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %51, i32 0, i32 0
  %53 = call i32 @netif_napi_del(i32* %52)
  br label %54

54:                                               ; preds = %50, %15
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
