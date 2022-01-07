; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_ipsec_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_ipsec_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.net_device*, %struct.ixgbevf_ipsec* }
%struct.net_device = type { i32 }
%struct.ixgbevf_ipsec = type { %struct.tx_sa*, %struct.rx_sa* }
%struct.tx_sa = type { i32, i64 }
%struct.rx_sa = type { i32, i64 }

@NETIF_F_HW_ESP = common dso_local global i32 0, align 4
@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"reload rx_tbl[%d] failed = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"reload tx_tbl[%d] failed = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbevf_ipsec_restore(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbevf_ipsec*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_sa*, align 8
  %7 = alloca %struct.tx_sa*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 1
  %11 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %10, align 8
  store %struct.ixgbevf_ipsec* %11, %struct.ixgbevf_ipsec** %3, align 8
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %83

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IXGBE_IPSEC_MAX_SA_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %30, i32 0, i32 1
  %32 = load %struct.rx_sa*, %struct.rx_sa** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %32, i64 %34
  store %struct.rx_sa* %35, %struct.rx_sa** %6, align 8
  %36 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %36, i32 0, i32 0
  %38 = load %struct.tx_sa*, %struct.tx_sa** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %38, i64 %40
  store %struct.tx_sa* %41, %struct.tx_sa** %7, align 8
  %42 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %43 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %29
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %48 = load %struct.rx_sa*, %struct.rx_sa** %6, align 8
  %49 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ixgbevf_ipsec_set_pf_sa(%struct.ixgbevf_adapter* %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %62 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %67 = load %struct.tx_sa*, %struct.tx_sa** %7, align 8
  %68 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ixgbevf_ipsec_set_pf_sa(%struct.ixgbevf_adapter* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %65
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %25

83:                                               ; preds = %23, %25
  ret void
}

declare dso_local i32 @ixgbevf_ipsec_set_pf_sa(%struct.ixgbevf_adapter*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
