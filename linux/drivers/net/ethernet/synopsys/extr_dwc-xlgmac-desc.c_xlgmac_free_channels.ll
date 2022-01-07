; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_free_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_free_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_free_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_free_channels(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %3 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %4 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @kfree(%struct.TYPE_2__* %13)
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %16 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @kfree(%struct.TYPE_2__* %23)
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %30 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @kfree(%struct.TYPE_2__* %31)
  %33 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %34 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %33, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %36 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
