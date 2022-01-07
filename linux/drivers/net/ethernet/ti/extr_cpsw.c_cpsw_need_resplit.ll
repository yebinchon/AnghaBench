; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_need_resplit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_need_resplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_common = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_common*)* @cpsw_need_resplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_need_resplit(%struct.cpsw_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpsw_common* %0, %struct.cpsw_common** %3, align 8
  %8 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %9 = call i32 @cpsw_get_common_speed(%struct.cpsw_common* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %59

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %22 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %45, %19
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %31 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpdma_chan_get_rate(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %48

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %23

48:                                               ; preds = %41, %23
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %54 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %48
  store i32 0, i32* %2, align 4
  br label %59

58:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %57, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @cpsw_get_common_speed(%struct.cpsw_common*) #1

declare dso_local i32 @cpdma_chan_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
