; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ns83820 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"rx_refill(%p)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i64 0, align 8
@NR_RX_DESC = common dso_local global i32 0, align 4
@REAL_RX_BUF_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_refill(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ns83820*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ns83820* @PRIV(%struct.net_device* %11)
  store %struct.ns83820* %12, %struct.ns83820** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %14 = call i32 @nr_rx_empty(%struct.ns83820* %13)
  %15 = icmp sle i32 %14, 2
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.net_device* %21)
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @GFP_ATOMIC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %28 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %26, %20
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %88, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NR_RX_DESC, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i64, i64* @REAL_RX_BUF_SIZE, align 8
  %40 = add nsw i64 %39, 16
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %38, i64 %40, i64 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %91

50:                                               ; preds = %37
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @PTR_ALIGN(i64 %57, i32 16)
  %59 = sub nsw i64 %54, %58
  %60 = call i32 @skb_reserve(%struct.sk_buff* %51, i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @GFP_ATOMIC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %50
  %65 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %66 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %64, %50
  %71 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = call i64 @ns83820_add_rx_skb(%struct.ns83820* %71, %struct.sk_buff* %72)
  store i64 %73, i64* %10, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @GFP_ATOMIC, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %79 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %70
  %84 = load i64, i64* %10, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %91

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %33

91:                                               ; preds = %86, %49, %33
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @GFP_ATOMIC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %97 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %91
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i32 [ 0, %104 ], [ %107, %105 ]
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nr_rx_empty(%struct.ns83820*) #1

declare dso_local i32 @dprintk(i8*, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device*, i64, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @PTR_ALIGN(i64, i32) #1

declare dso_local i64 @ns83820_add_rx_skb(%struct.ns83820*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
