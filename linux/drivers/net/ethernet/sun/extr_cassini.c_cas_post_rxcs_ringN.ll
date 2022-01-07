; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_post_rxcs_ringN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_post_rxcs_ringN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32*, i32*, i32, i64, %struct.cas_rx_comp** }
%struct.cas_rx_comp = type { i32 }

@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rxc[%d] interrupt, done: %d/%d\0A\00", align 1
@REG_RX_COMP_HEAD = common dso_local global i64 0, align 8
@REG_RX_COMP_TAIL = common dso_local global i64 0, align 8
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cas*, i32)* @cas_post_rxcs_ringN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_post_rxcs_ringN(%struct.net_device* %0, %struct.cas* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cas_rx_comp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cas* %1, %struct.cas** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cas*, %struct.cas** %5, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 4
  %12 = load %struct.cas_rx_comp**, %struct.cas_rx_comp*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cas_rx_comp*, %struct.cas_rx_comp** %12, i64 %14
  %16 = load %struct.cas_rx_comp*, %struct.cas_rx_comp** %15, align 8
  store %struct.cas_rx_comp* %16, %struct.cas_rx_comp** %7, align 8
  %17 = load %struct.cas*, %struct.cas** %5, align 8
  %18 = getelementptr inbounds %struct.cas, %struct.cas* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.cas*, %struct.cas** %5, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.cas*, %struct.cas** %5, align 8
  %32 = load i32, i32* @intr, align 4
  %33 = load i32, i32* @KERN_DEBUG, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.cas*, %struct.cas** %5, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_RX_COMP_HEAD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @netif_printk(%struct.cas* %31, i32 %32, i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %48, %3
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.cas_rx_comp*, %struct.cas_rx_comp** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cas_rx_comp, %struct.cas_rx_comp* %49, i64 %51
  %53 = call i32 @cas_rxc_init(%struct.cas_rx_comp* %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @RX_COMP_ENTRY(i32 %54, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.cas*, %struct.cas** %5, align 8
  %61 = getelementptr inbounds %struct.cas, %struct.cas* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.cas*, %struct.cas** %5, align 8
  %71 = getelementptr inbounds %struct.cas, %struct.cas* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @REG_RX_COMP_TAIL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  br label %93

76:                                               ; preds = %58
  %77 = load %struct.cas*, %struct.cas** %5, align 8
  %78 = getelementptr inbounds %struct.cas, %struct.cas* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.cas*, %struct.cas** %5, align 8
  %86 = getelementptr inbounds %struct.cas, %struct.cas* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @REG_PLUS_RX_COMPN_TAIL(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @writel(i32 %84, i64 %90)
  br label %92

92:                                               ; preds = %83, %76
  br label %93

93:                                               ; preds = %92, %68
  ret void
}

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, %struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_rxc_init(%struct.cas_rx_comp*) #1

declare dso_local i32 @RX_COMP_ENTRY(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REG_PLUS_RX_COMPN_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
