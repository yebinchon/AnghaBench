; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, %struct.xlgmac_channel* }
%struct.xlgmac_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_free_rings(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %5 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %5, i32 0, i32 1
  %7 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %6, align 8
  %8 = icmp ne %struct.xlgmac_channel* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 1
  %13 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %12, align 8
  store %struct.xlgmac_channel* %13, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %10
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %22 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %23 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @xlgmac_free_ring(%struct.xlgmac_pdata* %21, i32 %24)
  %26 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %27 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %28 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xlgmac_free_ring(%struct.xlgmac_pdata* %26, i32 %29)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %35 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %34, i32 1
  store %struct.xlgmac_channel* %35, %struct.xlgmac_channel** %3, align 8
  br label %14

36:                                               ; preds = %9, %14
  ret void
}

declare dso_local i32 @xlgmac_free_ring(%struct.xlgmac_pdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
