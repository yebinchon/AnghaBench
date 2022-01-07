; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_total_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_total_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_q_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_q_data*)* @total_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @total_frame_size(%struct.vicodec_q_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vicodec_q_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vicodec_q_data* %0, %struct.vicodec_q_data** %3, align 8
  %6 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %7 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %14 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %17 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %21 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %26 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %24, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %32 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %45

37:                                               ; preds = %12
  %38 = load i32, i32* %4, align 4
  %39 = mul i32 2, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = udiv i32 %40, %41
  %43 = mul i32 2, %42
  %44 = add i32 %39, %43
  store i32 %44, i32* %2, align 4
  br label %62

45:                                               ; preds = %12
  %46 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %47 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = udiv i32 %54, %55
  %57 = mul i32 2, %56
  %58 = add i32 %53, %57
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %52, %37, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
