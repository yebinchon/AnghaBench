; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_find_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_find_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx_counter = type { i64 }
%struct.vsc73xx = type { i32 }

@vsc73xx_tx_counters = common dso_local global %struct.vsc73xx_counter* null, align 8
@vsc73xx_rx_counters = common dso_local global %struct.vsc73xx_counter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vsc73xx_counter* (%struct.vsc73xx*, i64, i32)* @vsc73xx_find_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vsc73xx_counter* @vsc73xx_find_counter(%struct.vsc73xx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vsc73xx_counter*, align 8
  %5 = alloca %struct.vsc73xx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vsc73xx_counter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vsc73xx_counter*, align 8
  store %struct.vsc73xx* %0, %struct.vsc73xx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** @vsc73xx_tx_counters, align 8
  store %struct.vsc73xx_counter* %15, %struct.vsc73xx_counter** %8, align 8
  %16 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** @vsc73xx_tx_counters, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.vsc73xx_counter* %16)
  store i32 %17, i32* %9, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** @vsc73xx_rx_counters, align 8
  store %struct.vsc73xx_counter* %19, %struct.vsc73xx_counter** %8, align 8
  %20 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** @vsc73xx_rx_counters, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.vsc73xx_counter* %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %18, %14
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vsc73xx_counter, %struct.vsc73xx_counter* %28, i64 %30
  store %struct.vsc73xx_counter* %31, %struct.vsc73xx_counter** %11, align 8
  %32 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %11, align 8
  %33 = getelementptr inbounds %struct.vsc73xx_counter, %struct.vsc73xx_counter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %11, align 8
  store %struct.vsc73xx_counter* %38, %struct.vsc73xx_counter** %4, align 8
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %23

43:                                               ; preds = %23
  store %struct.vsc73xx_counter* null, %struct.vsc73xx_counter** %4, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.vsc73xx_counter*, %struct.vsc73xx_counter** %4, align 8
  ret %struct.vsc73xx_counter* %45
}

declare dso_local i32 @ARRAY_SIZE(%struct.vsc73xx_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
