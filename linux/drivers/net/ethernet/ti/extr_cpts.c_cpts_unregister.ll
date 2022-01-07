; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpts = type { i32, i32, i32* }

@int_enable = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpts_unregister(%struct.cpts* %0) #0 {
  %2 = alloca %struct.cpts*, align 8
  store %struct.cpts* %0, %struct.cpts** %2, align 8
  %3 = load %struct.cpts*, %struct.cpts** %2, align 8
  %4 = getelementptr inbounds %struct.cpts, %struct.cpts* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.cpts*, %struct.cpts** %2, align 8
  %14 = getelementptr inbounds %struct.cpts, %struct.cpts* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ptp_clock_unregister(i32* %15)
  %17 = load %struct.cpts*, %struct.cpts** %2, align 8
  %18 = getelementptr inbounds %struct.cpts, %struct.cpts* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.cpts*, %struct.cpts** %2, align 8
  %20 = load i32, i32* @int_enable, align 4
  %21 = call i32 @cpts_write32(%struct.cpts* %19, i32 0, i32 %20)
  %22 = load %struct.cpts*, %struct.cpts** %2, align 8
  %23 = load i32, i32* @control, align 4
  %24 = call i32 @cpts_write32(%struct.cpts* %22, i32 0, i32 %23)
  %25 = load %struct.cpts*, %struct.cpts** %2, align 8
  %26 = getelementptr inbounds %struct.cpts, %struct.cpts* %25, i32 0, i32 1
  %27 = call i32 @skb_queue_purge(i32* %26)
  %28 = load %struct.cpts*, %struct.cpts** %2, align 8
  %29 = getelementptr inbounds %struct.cpts, %struct.cpts* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_disable(i32 %30)
  br label %32

32:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ptp_clock_unregister(i32*) #1

declare dso_local i32 @cpts_write32(%struct.cpts*, i32, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
