; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PCI64_ATTR_PREC = common dso_local global i32 0, align 4
@ERPIR_ARM = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@EMCR_RXOFF_SHIFT = common dso_local global i32 0, align 4
@EMCR_TXDMAEN = common dso_local global i32 0, align 4
@EMCR_TXEN = common dso_local global i32 0, align 4
@EMCR_RXDMAEN = common dso_local global i32 0, align 4
@EMCR_RXEN = common dso_local global i32 0, align 4
@EMCR_PADEN = common dso_local global i32 0, align 4
@EISR_RXTIMERINT = common dso_local global i32 0, align 4
@EISR_RXOFLO = common dso_local global i32 0, align 4
@EISR_RXBUFOFLO = common dso_local global i32 0, align 4
@EISR_RXMEMERR = common dso_local global i32 0, align 4
@EISR_RXPARERR = common dso_local global i32 0, align 4
@EISR_TXBUFUFLO = common dso_local global i32 0, align 4
@EISR_TXEXPLICIT = common dso_local global i32 0, align 4
@EISR_TXMEMERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_start(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.ioc3_ethregs*, align 8
  %4 = alloca i64, align 8
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %5 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %6 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %5, i32 0, i32 8
  %7 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %6, align 8
  store %struct.ioc3_ethregs* %7, %struct.ioc3_ethregs** %3, align 8
  %8 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %9 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI64_ATTR_PREC, align 4
  %12 = call i64 @ioc3_map(i32 %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  %16 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %17 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %16, i32 0, i32 9
  %18 = call i32 @writel(i32 %15, i32* %17)
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 4294967295
  %21 = trunc i64 %20 to i32
  %22 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %23 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %22, i32 0, i32 8
  %24 = call i32 @writel(i32 %21, i32* %23)
  %25 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %26 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 3
  %29 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %30 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %29, i32 0, i32 7
  %31 = call i32 @writel(i32 %28, i32* %30)
  %32 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %33 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 3
  %36 = load i32, i32* @ERPIR_ARM, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %39 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %38, i32 0, i32 6
  %40 = call i32 @writel(i32 %37, i32* %39)
  %41 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %42 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PCI64_ATTR_PREC, align 4
  %45 = call i64 @ioc3_map(i32 %43, i32 %44)
  store i64 %45, i64* %4, align 8
  %46 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %47 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* %4, align 8
  %49 = lshr i64 %48, 32
  %50 = trunc i64 %49 to i32
  %51 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %52 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %51, i32 0, i32 5
  %53 = call i32 @writel(i32 %50, i32* %52)
  %54 = load i64, i64* %4, align 8
  %55 = and i64 %54, 4294967295
  %56 = trunc i64 %55 to i32
  %57 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %58 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %57, i32 0, i32 4
  %59 = call i32 @writel(i32 %56, i32* %58)
  %60 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %61 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 7
  %64 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %65 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %64, i32 0, i32 3
  %66 = call i32 @writel(i32 %63, i32* %65)
  %67 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %68 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 7
  %71 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %72 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %71, i32 0, i32 2
  %73 = call i32 @writel(i32 %70, i32* %72)
  %74 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %75 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %74, i32 0, i32 2
  %76 = call i32 @readl(i32* %75)
  %77 = load i32, i32* @RX_OFFSET, align 4
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* @EMCR_RXOFF_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* @EMCR_TXDMAEN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @EMCR_TXEN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @EMCR_RXDMAEN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @EMCR_RXEN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @EMCR_PADEN, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %92 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %96 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %99 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %98, i32 0, i32 1
  %100 = call i32 @writel(i32 %97, i32* %99)
  %101 = load i32, i32* @EISR_RXTIMERINT, align 4
  %102 = load i32, i32* @EISR_RXOFLO, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @EISR_RXBUFOFLO, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @EISR_RXMEMERR, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @EISR_RXPARERR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @EISR_TXBUFUFLO, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @EISR_TXEXPLICIT, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @EISR_TXMEMERR, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %117 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %116, i32 0, i32 0
  %118 = call i32 @writel(i32 %115, i32* %117)
  %119 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %120 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %119, i32 0, i32 0
  %121 = call i32 @readl(i32* %120)
  ret void
}

declare dso_local i64 @ioc3_map(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
