; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_sp_xmit_on_air.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_6pack.c_sp_xmit_on_air.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sixpack = type { i32, i32, i8, i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32)* }
%struct.timer_list = type { i32 }

@tx_t = common dso_local global i32 0, align 4
@sp_xmit_on_air.random = internal global i8 0, align 1
@SIXP_DCD_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@sp = common dso_local global %struct.sixpack* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sp_xmit_on_air to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_xmit_on_air(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sixpack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %7 = ptrtoint %struct.sixpack* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_t, align 4
  %10 = call %struct.sixpack* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.sixpack* %10, %struct.sixpack** %3, align 8
  %11 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %12 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i8, i8* @sp_xmit_on_air.random, align 1
  %15 = zext i8 %14 to i32
  %16 = mul nsw i32 %15, 17
  %17 = add nsw i32 %16, 41
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* @sp_xmit_on_air.random, align 1
  %19 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %20 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SIXP_DCD_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %1
  %26 = load i8, i8* @sp_xmit_on_air.random, align 1
  %27 = zext i8 %26 to i32
  %28 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %29 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %28, i32 0, i32 2
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %95

33:                                               ; preds = %25
  %34 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %35 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %34, i32 0, i32 3
  store i32 112, i32* %35, align 4
  %36 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %37 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %36, i32 0, i32 10
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %41, align 8
  %43 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %44 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %43, i32 0, i32 10
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %47 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %46, i32 0, i32 3
  %48 = call i32 %42(%struct.TYPE_6__* %45, i32* %47, i32 1)
  %49 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %50 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  %51 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %52 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %51, i32 0, i32 10
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %56, align 8
  %58 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %59 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %58, i32 0, i32 10
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %62 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %65 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %57(%struct.TYPE_6__* %60, i32* %63, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %70 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %75 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %79 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %78, i32 0, i32 3
  store i32 96, i32* %79, align 4
  %80 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %81 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %80, i32 0, i32 10
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %85, align 8
  %87 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %88 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %87, i32 0, i32 10
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %91 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %90, i32 0, i32 3
  %92 = call i32 %86(%struct.TYPE_6__* %89, i32* %91, i32 1)
  %93 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %94 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %93, i32 0, i32 6
  store i32 0, i32* %94, align 8
  br label %107

95:                                               ; preds = %25, %1
  %96 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %97 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %96, i32 0, i32 9
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* @HZ, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sdiv i32 %102, 100
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %98, %104
  %106 = call i32 @mod_timer(i32* %97, i64 %105)
  br label %107

107:                                              ; preds = %95, %33
  ret void
}

declare dso_local %struct.sixpack* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
