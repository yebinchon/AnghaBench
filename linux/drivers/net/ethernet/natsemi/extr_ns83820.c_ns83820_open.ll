; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ns83820 = type { i32, i64, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [14 x i8] c"ns83820_open\0A\00", align 1
@PQCR = common dso_local global i64 0, align 8
@NR_TX_DESC = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@DESC_LINK = common dso_local global i32 0, align 4
@TXDP_HI = common dso_local global i64 0, align 8
@TXDP = common dso_local global i64 0, align 8
@ns83820_tx_watch = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ns83820_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ns83820*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ns83820* @PRIV(%struct.net_device* %8)
  store %struct.ns83820* %9, %struct.ns83820** %4, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %12 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PQCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i64 0, i64 %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @ns83820_setup_rx(%struct.net_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %97

22:                                               ; preds = %1
  %23 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %24 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @NR_TX_DESC, align 4
  %27 = mul nsw i32 4, %26
  %28 = load i32, i32* @DESC_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @memset(i32* %25, i32 0, i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %59, %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NR_TX_DESC, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %37 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  %41 = load i32, i32* @NR_TX_DESC, align 4
  %42 = urem i32 %40, %41
  %43 = load i32, i32* @DESC_SIZE, align 4
  %44 = mul i32 %42, %43
  %45 = mul i32 %44, 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %38, %46
  %48 = call i32 @cpu_to_le32(i64 %47)
  %49 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %50 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DESC_SIZE, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* @DESC_LINK, align 4
  %56 = add i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  store i32 %48, i32* %58, align 4
  br label %59

59:                                               ; preds = %35
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %64 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %66 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %68 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  %70 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %71 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TXDP_HI, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i64 0, i64 %74)
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %78 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TXDP, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i64 %76, i64 %81)
  %83 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %84 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %83, i32 0, i32 0
  %85 = load i32, i32* @ns83820_tx_watch, align 4
  %86 = call i32 @timer_setup(i32* %84, i32 %85, i32 0)
  %87 = load %struct.ns83820*, %struct.ns83820** %4, align 8
  %88 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %87, i32 0, i32 0
  %89 = load i64, i64* @jiffies, align 8
  %90 = load i32, i32* @HZ, align 4
  %91 = mul nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = call i32 @mod_timer(i32* %88, i64 %93)
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = call i32 @netif_start_queue(%struct.net_device* %95)
  store i32 0, i32* %2, align 4
  br label %101

97:                                               ; preds = %21
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = call i32 @ns83820_stop(%struct.net_device* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %62
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @ns83820_setup_rx(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @ns83820_stop(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
