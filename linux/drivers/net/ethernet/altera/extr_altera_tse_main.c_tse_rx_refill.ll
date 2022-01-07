; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 (%struct.altera_tse_private*, %struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_tse_private*)* @tse_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_rx_refill(%struct.altera_tse_private* %0) #0 {
  %2 = alloca %struct.altera_tse_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %2, align 8
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %70, %1
  %10 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %11 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %14 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = sub nsw i64 %12, %16
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %9
  %20 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %21 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %26 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %19
  %38 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %39 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %40 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %46 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tse_init_rx_buffer(%struct.altera_tse_private* %38, %struct.TYPE_5__* %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %75

55:                                               ; preds = %37
  %56 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %57 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.altera_tse_private*, %struct.TYPE_5__*)*, i32 (%struct.altera_tse_private*, %struct.TYPE_5__*)** %59, align 8
  %61 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %62 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %63 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = call i32 %60(%struct.altera_tse_private* %61, %struct.TYPE_5__* %67)
  br label %69

69:                                               ; preds = %55, %19
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %72 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %9

75:                                               ; preds = %54, %9
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tse_init_rx_buffer(%struct.altera_tse_private*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
