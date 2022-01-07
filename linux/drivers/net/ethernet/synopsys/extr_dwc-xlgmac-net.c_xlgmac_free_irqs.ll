; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, i32, %struct.xlgmac_pdata*, i32, i32 }
%struct.xlgmac_channel = type { i32, i32, i32, %struct.xlgmac_channel*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_free_irqs(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %5 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %9 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = call i32 @devm_free_irq(i32 %7, i32 %10, %struct.xlgmac_pdata* %11)
  %13 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %14 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 3
  %21 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %20, align 8
  %22 = bitcast %struct.xlgmac_pdata* %21 to %struct.xlgmac_channel*
  store %struct.xlgmac_channel* %22, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %39, %18
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %31 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %34 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %37 = bitcast %struct.xlgmac_channel* %36 to %struct.xlgmac_pdata*
  %38 = call i32 @devm_free_irq(i32 %32, i32 %35, %struct.xlgmac_pdata* %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %43 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %42, i32 1
  store %struct.xlgmac_channel* %43, %struct.xlgmac_channel** %3, align 8
  br label %23

44:                                               ; preds = %17, %23
  ret void
}

declare dso_local i32 @devm_free_irq(i32, i32, %struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
