; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.vio_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vio_dev = type { i32 }

@IBMVETH_BUFF_OH = common dso_local global i32 0, align 4
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ibmveth_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibmveth_adapter*, align 8
  %7 = alloca %struct.vio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ibmveth_adapter* %13, %struct.ibmveth_adapter** %6, align 8
  %14 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %14, i32 0, i32 3
  %16 = load %struct.vio_dev*, %struct.vio_dev** %15, align 8
  store %struct.vio_dev* %16, %struct.vio_dev** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %37, %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %25, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %119

47:                                               ; preds = %40
  %48 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @netif_running(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  %54 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ibmveth_close(i32 %58)
  %60 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %53, %47
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %63
  %68 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %75, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %67
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %90 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %91 = call i32 @ibmveth_get_desired_dma(%struct.vio_dev* %90)
  %92 = call i32 @vio_cmo_set_dev_desired(%struct.vio_dev* %89, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %97 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ibmveth_open(i32 %98)
  store i32 %99, i32* %3, align 4
  br label %119

100:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %119

101:                                              ; preds = %67
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %63

105:                                              ; preds = %63
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ibmveth_open(i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %119

116:                                              ; preds = %108, %105
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %114, %100, %95, %44
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @ibmveth_close(i32) #1

declare dso_local i32 @vio_cmo_set_dev_desired(%struct.vio_dev*, i32) #1

declare dso_local i32 @ibmveth_get_desired_dma(%struct.vio_dev*) #1

declare dso_local i32 @ibmveth_open(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
