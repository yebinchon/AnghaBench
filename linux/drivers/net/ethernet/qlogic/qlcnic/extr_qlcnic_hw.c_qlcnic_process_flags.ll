; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_process_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_process_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32 }

@BIT_0 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_process_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_process_flags(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @BIT_0, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BIT_1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @NETIF_F_TSO, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @NETIF_F_TSO, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @BIT_2, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @NETIF_F_TSO6, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @NETIF_F_TSO6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %13
  br label %78

56:                                               ; preds = %2
  %57 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %58 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load i32, i32* @NETIF_F_TSO, align 4
  %70 = load i32, i32* @NETIF_F_TSO6, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %68, %56
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %55
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
