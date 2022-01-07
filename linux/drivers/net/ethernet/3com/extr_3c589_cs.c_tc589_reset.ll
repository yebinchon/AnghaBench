; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_tc589_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_tc589_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32* }

@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i32 0, align 4
@StatsEnable = common dso_local global i32 0, align 4
@RxEnable = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@SetStatusEnb = common dso_local global i32 0, align 4
@AckIntr = common dso_local global i32 0, align 4
@IntLatch = common dso_local global i32 0, align 4
@TxAvailable = common dso_local global i32 0, align 4
@RxEarly = common dso_local global i32 0, align 4
@IntReq = common dso_local global i32 0, align 4
@SetIntrEnb = common dso_local global i32 0, align 4
@RxComplete = common dso_local global i32 0, align 4
@StatsFull = common dso_local global i32 0, align 4
@AdapterFailure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tc589_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc589_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = call i32 @EL3WINDOW(i32 0)
  %9 = load i32, i32* %3, align 4
  %10 = add i32 %9, 4
  %11 = call i32 @outw(i32 1, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, 8
  %14 = call i32 @outw(i32 16128, i32 %13)
  %15 = call i32 @EL3WINDOW(i32 2)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %27, %28
  %30 = call i32 @outb(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @tc589_set_xcvr(%struct.net_device* %35, i32 %38)
  %40 = load i32, i32* @StatsDisable, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @EL3_CMD, align 4
  %43 = add i32 %41, %42
  %44 = call i32 @outw(i32 %40, i32 %43)
  %45 = call i32 @EL3WINDOW(i32 6)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %54, %34
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 9
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %50, %51
  %53 = call i32 @inb(i32 %52)
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %46

57:                                               ; preds = %46
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 10
  %60 = call i32 @inw(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 12
  %63 = call i32 @inw(i32 %62)
  %64 = call i32 @EL3WINDOW(i32 1)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @set_rx_mode(%struct.net_device* %65)
  %67 = load i32, i32* @StatsEnable, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @EL3_CMD, align 4
  %70 = add i32 %68, %69
  %71 = call i32 @outw(i32 %67, i32 %70)
  %72 = load i32, i32* @RxEnable, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @EL3_CMD, align 4
  %75 = add i32 %73, %74
  %76 = call i32 @outw(i32 %72, i32 %75)
  %77 = load i32, i32* @TxEnable, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @EL3_CMD, align 4
  %80 = add i32 %78, %79
  %81 = call i32 @outw(i32 %77, i32 %80)
  %82 = load i32, i32* @SetStatusEnb, align 4
  %83 = or i32 %82, 255
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @EL3_CMD, align 4
  %86 = add i32 %84, %85
  %87 = call i32 @outw(i32 %83, i32 %86)
  %88 = load i32, i32* @AckIntr, align 4
  %89 = load i32, i32* @IntLatch, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @TxAvailable, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RxEarly, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IntReq, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @EL3_CMD, align 4
  %99 = add i32 %97, %98
  %100 = call i32 @outw(i32 %96, i32 %99)
  %101 = load i32, i32* @SetIntrEnb, align 4
  %102 = load i32, i32* @IntLatch, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @TxAvailable, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RxComplete, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @StatsFull, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @AdapterFailure, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @EL3_CMD, align 4
  %114 = add i32 %112, %113
  %115 = call i32 @outw(i32 %111, i32 %114)
  ret void
}

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @tc589_set_xcvr(%struct.net_device*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
