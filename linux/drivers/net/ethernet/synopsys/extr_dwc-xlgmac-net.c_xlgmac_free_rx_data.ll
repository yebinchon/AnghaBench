; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_free_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_free_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, %struct.xlgmac_channel*, %struct.xlgmac_desc_ops }
%struct.xlgmac_channel = type { %struct.xlgmac_ring* }
%struct.xlgmac_ring = type { i32 }
%struct.xlgmac_desc_ops = type { i32 (%struct.xlgmac_pdata.0*, %struct.xlgmac_desc_data*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_desc_data = type opaque
%struct.xlgmac_desc_data.1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_free_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_free_rx_data(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_desc_ops*, align 8
  %4 = alloca %struct.xlgmac_desc_data.1*, align 8
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca %struct.xlgmac_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 2
  store %struct.xlgmac_desc_ops* %10, %struct.xlgmac_desc_ops** %3, align 8
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 1
  %13 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %12, align 8
  store %struct.xlgmac_channel* %13, %struct.xlgmac_channel** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %50, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %22 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %21, i32 0, i32 0
  %23 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %22, align 8
  store %struct.xlgmac_ring* %23, %struct.xlgmac_ring** %6, align 8
  %24 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %25 = icmp ne %struct.xlgmac_ring* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %55

27:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %31 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.xlgmac_desc_data.1* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %35, i32 %36)
  store %struct.xlgmac_desc_data.1* %37, %struct.xlgmac_desc_data.1** %4, align 8
  %38 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %3, align 8
  %39 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.xlgmac_pdata.0*, %struct.xlgmac_desc_data*)*, i32 (%struct.xlgmac_pdata.0*, %struct.xlgmac_desc_data*)** %39, align 8
  %41 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %42 = bitcast %struct.xlgmac_pdata* %41 to %struct.xlgmac_pdata.0*
  %43 = load %struct.xlgmac_desc_data.1*, %struct.xlgmac_desc_data.1** %4, align 8
  %44 = bitcast %struct.xlgmac_desc_data.1* %43 to %struct.xlgmac_desc_data*
  %45 = call i32 %40(%struct.xlgmac_pdata.0* %42, %struct.xlgmac_desc_data* %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %28

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %54 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %53, i32 1
  store %struct.xlgmac_channel* %54, %struct.xlgmac_channel** %5, align 8
  br label %14

55:                                               ; preds = %26, %14
  ret void
}

declare dso_local %struct.xlgmac_desc_data.1* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
