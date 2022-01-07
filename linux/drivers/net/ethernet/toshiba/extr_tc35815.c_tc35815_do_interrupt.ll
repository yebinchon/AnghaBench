; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc35815_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tc35815_local = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@FATAL_ERROR_INT = common dso_local global i32 0, align 4
@Int_IntFDAEx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Free Descriptor Area Exhausted (%#x).\0A\00", align 1
@Int_IntBLEx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Buffer List Exhausted (%#x).\0A\00", align 1
@Int_IntExBD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Excessive Buffer Descriptors (%#x).\0A\00", align 1
@Int_IntMacRx = common dso_local global i32 0, align 4
@Int_IntMacTx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @tc35815_do_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc35815_do_interrupt(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tc35815_local*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %10)
  store %struct.tc35815_local* %11, %struct.tc35815_local** %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FATAL_ERROR_INT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tc35815_fatal_error_interrupt(%struct.net_device* %17, i32 %18)
  store i32 0, i32* %4, align 4
  br label %119

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @Int_IntFDAEx, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %27 = call i64 @netif_msg_rx_err(%struct.tc35815_local* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %20
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @Int_IntBLEx, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %47 = call i64 @netif_msg_rx_err(%struct.tc35815_local* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_warn(i32* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %54, %40
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @Int_IntExBD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %67 = call i64 @netif_msg_rx_err(%struct.tc35815_local* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dev_warn(i32* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %74, %60
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @Int_IntMacRx, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @tc35815_rx(%struct.net_device* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %90 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %80
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @Int_IntMacTx, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %101 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %106 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %105, i32 0, i32 0
  %107 = call i32 @spin_lock_irq(i32* %106)
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = call i32 @tc35815_txdone(%struct.net_device* %108)
  %110 = load %struct.tc35815_local*, %struct.tc35815_local** %8, align 8
  %111 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock_irq(i32* %111)
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %94
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %16
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tc35815_fatal_error_interrupt(%struct.net_device*, i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.tc35815_local*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @tc35815_rx(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @tc35815_txdone(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
