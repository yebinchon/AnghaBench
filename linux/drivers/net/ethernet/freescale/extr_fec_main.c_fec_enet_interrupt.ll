; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i64, i64, i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@FEC_IEVENT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@FEC_NAPI_IMASK = common dso_local global i32 0, align 4
@FEC_IMASK = common dso_local global i64 0, align 8
@FEC_ENET_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fec_enet_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %11)
  store %struct.fec_enet_private* %12, %struct.fec_enet_private** %6, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FEC_IEVENT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %22 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FEC_IEVENT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @fec_enet_collect_events(%struct.fec_enet_private* %27, i32 %28)
  %30 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %31 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34, %2
  %40 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %41 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %47 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %46, i32 0, i32 1
  %48 = call i64 @napi_schedule_prep(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* @FEC_NAPI_IMASK, align 4
  %52 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %53 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FEC_IMASK, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %59 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %58, i32 0, i32 1
  %60 = call i32 @__napi_schedule(i32* %59)
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61, %39, %34
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FEC_ENET_MII, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %70 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %69, i32 0, i32 0
  %71 = call i32 @complete(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fec_enet_collect_events(%struct.fec_enet_private*, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
