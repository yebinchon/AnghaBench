; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32 }

@VMXNET3_STATE_BIT_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vmxnet3_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.vmxnet3_adapter* %5, %struct.vmxnet3_adapter** %3, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 0
  %10 = call i64 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %6

14:                                               ; preds = %6
  %15 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %16 = call i32 @vmxnet3_quiesce_dev(%struct.vmxnet3_adapter* %15)
  %17 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %18 = call i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter* %17)
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %20 = call i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter* %19)
  %21 = load i32, i32* @VMXNET3_STATE_BIT_RESETTING, align 4
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  ret i32 0
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vmxnet3_quiesce_dev(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_destroy_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_tq_destroy_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
