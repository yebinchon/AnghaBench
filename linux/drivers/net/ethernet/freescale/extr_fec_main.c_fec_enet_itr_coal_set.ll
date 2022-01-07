; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_itr_coal_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_itr_coal_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i64, i32, i32, i32, i32 }

@FEC_ITR_CLK_SEL = common dso_local global i32 0, align 4
@FEC_ITR_EN = common dso_local global i32 0, align 4
@FEC_TXIC0 = common dso_local global i64 0, align 8
@FEC_RXIC0 = common dso_local global i64 0, align 8
@FEC_QUIRK_HAS_AVB = common dso_local global i32 0, align 4
@FEC_TXIC1 = common dso_local global i64 0, align 8
@FEC_RXIC1 = common dso_local global i64 0, align 8
@FEC_TXIC2 = common dso_local global i64 0, align 8
@FEC_RXIC2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_itr_coal_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_itr_coal_set(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fec_enet_private* %7, %struct.fec_enet_private** %3, align 8
  %8 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %9 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %14 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %19 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %24 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %12, %1
  br label %114

28:                                               ; preds = %22
  %29 = load i32, i32* @FEC_ITR_CLK_SEL, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @FEC_ITR_CLK_SEL, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FEC_ITR_ICFT(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %39 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @fec_enet_us_to_itr_clock(%struct.net_device* %37, i32 %40)
  %42 = call i32 @FEC_ITR_ICTT(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %46 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FEC_ITR_ICFT(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %53 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fec_enet_us_to_itr_clock(%struct.net_device* %51, i32 %54)
  %56 = call i32 @FEC_ITR_ICTT(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @FEC_ITR_EN, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @FEC_ITR_EN, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %67 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FEC_TXIC0, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %74 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FEC_RXIC0, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %80 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FEC_QUIRK_HAS_AVB, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %28
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %88 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FEC_TXIC1, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %95 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FEC_RXIC1, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %102 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FEC_TXIC2, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %109 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @FEC_RXIC2, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 %107, i64 %112)
  br label %114

114:                                              ; preds = %27, %85, %28
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @FEC_ITR_ICFT(i32) #1

declare dso_local i32 @FEC_ITR_ICTT(i32) #1

declare dso_local i32 @fec_enet_us_to_itr_clock(%struct.net_device*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
