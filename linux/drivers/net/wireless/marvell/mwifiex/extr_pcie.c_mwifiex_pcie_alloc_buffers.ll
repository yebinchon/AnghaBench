; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to create txbd ring\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to create rxbd ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to create evtbd ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to allocate cmdbuf buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to allocate sleep_cookie buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_alloc_buffers(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %7 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %7, i32 0, i32 0
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %8, align 8
  store %struct.pcie_service_card* %9, %struct.pcie_service_card** %4, align 8
  %10 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %11 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %12, align 8
  store %struct.mwifiex_pcie_card_reg* %13, %struct.mwifiex_pcie_card_reg** %5, align 8
  %14 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %15 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = call i32 @mwifiex_pcie_create_txbd_ring(%struct.mwifiex_adapter* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %21, i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %82

24:                                               ; preds = %1
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %26 = call i32 @mwifiex_pcie_create_rxbd_ring(%struct.mwifiex_adapter* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %79

33:                                               ; preds = %24
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %35 = call i32 @mwifiex_pcie_create_evtbd_ring(%struct.mwifiex_adapter* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %40 = load i32, i32* @ERROR, align 4
  %41 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %39, i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %76

42:                                               ; preds = %33
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %44 = call i32 @mwifiex_pcie_alloc_cmdrsp_buf(%struct.mwifiex_adapter* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %48, i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %73

51:                                               ; preds = %42
  %52 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %53 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %58 = call i32 @mwifiex_pcie_alloc_sleep_cookie_buf(%struct.mwifiex_adapter* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %63 = load i32, i32* @ERROR, align 4
  %64 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %62, i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %70

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %51
  %67 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %68 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %65
  store i32 0, i32* %2, align 4
  br label %84

70:                                               ; preds = %61
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %72 = call i32 @mwifiex_pcie_delete_cmdrsp_buf(%struct.mwifiex_adapter* %71)
  br label %73

73:                                               ; preds = %70, %47
  %74 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %75 = call i32 @mwifiex_pcie_delete_evtbd_ring(%struct.mwifiex_adapter* %74)
  br label %76

76:                                               ; preds = %73, %38
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %78 = call i32 @mwifiex_pcie_delete_rxbd_ring(%struct.mwifiex_adapter* %77)
  br label %79

79:                                               ; preds = %76, %29
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %81 = call i32 @mwifiex_pcie_delete_txbd_ring(%struct.mwifiex_adapter* %80)
  br label %82

82:                                               ; preds = %79, %20
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %69
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @mwifiex_pcie_create_txbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_pcie_create_rxbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_create_evtbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_alloc_cmdrsp_buf(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_alloc_sleep_cookie_buf(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_cmdrsp_buf(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_evtbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_rxbd_ring(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_delete_txbd_ring(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
