; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_ssram_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_ssram_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32*, i32, %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32 }

@EMCR_BUFSIZ = common dso_local global i32 0, align 4
@EMCR_RAMPAR = common dso_local global i32 0, align 4
@IOC3_SSRAM_DM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_ssram_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_ssram_disc(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.ioc3_ethregs*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 2
  %9 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %8, align 8
  store %struct.ioc3_ethregs* %9, %struct.ioc3_ethregs** %3, align 8
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32* %13, i32** %4, align 8
  %14 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %15 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 16384
  store i32* %17, i32** %5, align 8
  store i32 21845, i32* %6, align 4
  %18 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %19 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %18, i32 0, i32 0
  %20 = call i32 @readl(i32* %19)
  %21 = load i32, i32* @EMCR_BUFSIZ, align 4
  %22 = load i32, i32* @EMCR_RAMPAR, align 4
  %23 = or i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %26 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %25, i32 0, i32 0
  %27 = call i32 @writel(i32 %24, i32* %26)
  %28 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %29 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %28, i32 0, i32 0
  %30 = call i32 @readl(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @writel(i32 %31, i32* %32)
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @IOC3_SSRAM_DM, align 4
  %37 = and i32 %35, %36
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @writel(i32 %37, i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @readl(i32* %40)
  %42 = load i32, i32* @IOC3_SSRAM_DM, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %1
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @readl(i32* %47)
  %49 = load i32, i32* @IOC3_SSRAM_DM, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* @IOC3_SSRAM_DM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %46, %1
  %57 = load i32, i32* @EMCR_RAMPAR, align 4
  %58 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %59 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %63 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %62, i32 0, i32 0
  %64 = call i32 @readl(i32* %63)
  %65 = load i32, i32* @EMCR_BUFSIZ, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %69 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %68, i32 0, i32 0
  %70 = call i32 @writel(i32 %67, i32* %69)
  br label %79

71:                                               ; preds = %46
  %72 = load i32, i32* @EMCR_BUFSIZ, align 4
  %73 = load i32, i32* @EMCR_RAMPAR, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %76 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %71, %56
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
