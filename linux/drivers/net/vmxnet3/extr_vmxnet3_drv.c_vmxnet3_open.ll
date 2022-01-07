; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_TXDATA_DESC_SIZE = common dso_local global i32 0, align 4
@VMXNET3_TXDATA_DESC_MIN_SIZE = common dso_local global i32 0, align 4
@VMXNET3_TXDATA_DESC_MAX_SIZE = common dso_local global i32 0, align 4
@VMXNET3_TXDATA_DESC_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vmxnet3_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.vmxnet3_adapter* %10, %struct.vmxnet3_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %18, i32 0, i32 7
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_init(i32* %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %31 = call i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %34, i32 0, i32 6
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %39 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %40 = load i32, i32* @VMXNET3_CMD_GET_TXDATA_DESC_SIZE, align 4
  %41 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %38, i32 %39, i32 %40)
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %43 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %44 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %45, i32 0, i32 6
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VMXNET3_TXDATA_DESC_MIN_SIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @VMXNET3_TXDATA_DESC_MAX_SIZE, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @VMXNET3_TXDATA_DESC_SIZE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %52, %33
  %62 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %62, i32 0, i32 1
  store i32 4, i32* %63, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %61
  br label %72

69:                                               ; preds = %29
  %70 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %70, i32 0, i32 1
  store i32 4, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %74 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @vmxnet3_create_queues(%struct.vmxnet3_adapter* %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %105

93:                                               ; preds = %72
  %94 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %95 = call i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %107

100:                                              ; preds = %98
  %101 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %102 = call i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter* %101)
  %103 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %104 = call i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter* %103)
  br label %105

105:                                              ; preds = %100, %92
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %99
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmxnet3_create_queues(%struct.vmxnet3_adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
