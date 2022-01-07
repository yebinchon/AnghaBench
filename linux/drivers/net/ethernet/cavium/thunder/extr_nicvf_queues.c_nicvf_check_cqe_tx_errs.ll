; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_check_cqe_tx_errs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_check_cqe_tx_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cqe_send_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_check_cqe_tx_errs(%struct.nicvf* %0, %struct.cqe_send_t* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.cqe_send_t*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.cqe_send_t* %1, %struct.cqe_send_t** %4, align 8
  %5 = load %struct.cqe_send_t*, %struct.cqe_send_t** %4, align 8
  %6 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %106 [
    i32 137, label %8
    i32 136, label %15
    i32 130, label %22
    i32 133, label %29
    i32 135, label %36
    i32 138, label %43
    i32 131, label %50
    i32 134, label %57
    i32 139, label %64
    i32 129, label %71
    i32 128, label %78
    i32 132, label %85
    i32 140, label %92
    i32 141, label %99
  ]

8:                                                ; preds = %2
  %9 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @this_cpu_inc(i32 %13)
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %17 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @this_cpu_inc(i32 %20)
  br label %106

22:                                               ; preds = %2
  %23 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %24 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @this_cpu_inc(i32 %27)
  br label %106

29:                                               ; preds = %2
  %30 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %31 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @this_cpu_inc(i32 %34)
  br label %106

36:                                               ; preds = %2
  %37 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %38 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @this_cpu_inc(i32 %41)
  br label %106

43:                                               ; preds = %2
  %44 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @this_cpu_inc(i32 %48)
  br label %106

50:                                               ; preds = %2
  %51 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %52 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @this_cpu_inc(i32 %55)
  br label %106

57:                                               ; preds = %2
  %58 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %59 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @this_cpu_inc(i32 %62)
  br label %106

64:                                               ; preds = %2
  %65 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %66 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @this_cpu_inc(i32 %69)
  br label %106

71:                                               ; preds = %2
  %72 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %73 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @this_cpu_inc(i32 %76)
  br label %106

78:                                               ; preds = %2
  %79 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %80 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @this_cpu_inc(i32 %83)
  br label %106

85:                                               ; preds = %2
  %86 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %87 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @this_cpu_inc(i32 %90)
  br label %106

92:                                               ; preds = %2
  %93 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %94 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @this_cpu_inc(i32 %97)
  br label %106

99:                                               ; preds = %2
  %100 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %101 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @this_cpu_inc(i32 %104)
  br label %106

106:                                              ; preds = %2, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  ret i32 1
}

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
