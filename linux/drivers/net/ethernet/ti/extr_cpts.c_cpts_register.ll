; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpts = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CPTS_MAX_EVENTS = common dso_local global i32 0, align 4
@CPTS_EN = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@TS_PEND_EN = common dso_local global i32 0, align 4
@int_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpts_register(%struct.cpts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cpts* %0, %struct.cpts** %3, align 8
  %6 = load %struct.cpts*, %struct.cpts** %3, align 8
  %7 = getelementptr inbounds %struct.cpts, %struct.cpts* %6, i32 0, i32 11
  %8 = call i32 @skb_queue_head_init(i32* %7)
  %9 = load %struct.cpts*, %struct.cpts** %3, align 8
  %10 = getelementptr inbounds %struct.cpts, %struct.cpts* %9, i32 0, i32 10
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.cpts*, %struct.cpts** %3, align 8
  %13 = getelementptr inbounds %struct.cpts, %struct.cpts* %12, i32 0, i32 8
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CPTS_MAX_EVENTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.cpts*, %struct.cpts** %3, align 8
  %21 = getelementptr inbounds %struct.cpts, %struct.cpts* %20, i32 0, i32 9
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.cpts*, %struct.cpts** %3, align 8
  %28 = getelementptr inbounds %struct.cpts, %struct.cpts* %27, i32 0, i32 8
  %29 = call i32 @list_add(i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.cpts*, %struct.cpts** %3, align 8
  %35 = getelementptr inbounds %struct.cpts, %struct.cpts* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_enable(i32 %36)
  %38 = load %struct.cpts*, %struct.cpts** %3, align 8
  %39 = load i32, i32* @CPTS_EN, align 4
  %40 = load i32, i32* @control, align 4
  %41 = call i32 @cpts_write32(%struct.cpts* %38, i32 %39, i32 %40)
  %42 = load %struct.cpts*, %struct.cpts** %3, align 8
  %43 = load i32, i32* @TS_PEND_EN, align 4
  %44 = load i32, i32* @int_enable, align 4
  %45 = call i32 @cpts_write32(%struct.cpts* %42, i32 %43, i32 %44)
  %46 = load %struct.cpts*, %struct.cpts** %3, align 8
  %47 = getelementptr inbounds %struct.cpts, %struct.cpts* %46, i32 0, i32 7
  %48 = load %struct.cpts*, %struct.cpts** %3, align 8
  %49 = getelementptr inbounds %struct.cpts, %struct.cpts* %48, i32 0, i32 6
  %50 = call i32 (...) @ktime_get_real()
  %51 = call i32 @ktime_to_ns(i32 %50)
  %52 = call i32 @timecounter_init(i32* %47, i32* %49, i32 %51)
  %53 = load %struct.cpts*, %struct.cpts** %3, align 8
  %54 = getelementptr inbounds %struct.cpts, %struct.cpts* %53, i32 0, i32 5
  %55 = load %struct.cpts*, %struct.cpts** %3, align 8
  %56 = getelementptr inbounds %struct.cpts, %struct.cpts* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @ptp_clock_register(i32* %54, i32 %57)
  %59 = load %struct.cpts*, %struct.cpts** %3, align 8
  %60 = getelementptr inbounds %struct.cpts, %struct.cpts* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load %struct.cpts*, %struct.cpts** %3, align 8
  %62 = getelementptr inbounds %struct.cpts, %struct.cpts* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %33
  %67 = load %struct.cpts*, %struct.cpts** %3, align 8
  %68 = getelementptr inbounds %struct.cpts, %struct.cpts* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.cpts*, %struct.cpts** %3, align 8
  %72 = getelementptr inbounds %struct.cpts, %struct.cpts* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %87

73:                                               ; preds = %33
  %74 = load %struct.cpts*, %struct.cpts** %3, align 8
  %75 = getelementptr inbounds %struct.cpts, %struct.cpts* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @ptp_clock_index(i32* %76)
  %78 = load %struct.cpts*, %struct.cpts** %3, align 8
  %79 = getelementptr inbounds %struct.cpts, %struct.cpts* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cpts*, %struct.cpts** %3, align 8
  %81 = getelementptr inbounds %struct.cpts, %struct.cpts* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.cpts*, %struct.cpts** %3, align 8
  %84 = getelementptr inbounds %struct.cpts, %struct.cpts* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ptp_schedule_worker(i32* %82, i32 %85)
  store i32 0, i32* %2, align 4
  br label %93

87:                                               ; preds = %66
  %88 = load %struct.cpts*, %struct.cpts** %3, align 8
  %89 = getelementptr inbounds %struct.cpts, %struct.cpts* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @clk_disable(i32 %90)
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %87, %73
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @cpts_write32(%struct.cpts*, i32, i32) #1

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32* @ptp_clock_register(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ptp_clock_index(i32*) #1

declare dso_local i32 @ptp_schedule_worker(i32*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
