; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32*, i32, i32 }

@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NIC Link is Up %d Mbps\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*, i32)* @vmxnet3_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_check_link(%struct.vmxnet3_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 4
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %13 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %14 = load i32, i32* @VMXNET3_CMD_GET_LINK, align 4
  %15 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %12, i32 %13, i32 %14)
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %17 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %18 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %19, i32 0, i32 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %2
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @netdev_info(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netif_carrier_on(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %59 = call i32 @vmxnet3_tq_start(i32* %57, %struct.vmxnet3_adapter* %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %30
  br label %97

65:                                               ; preds = %2
  %66 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @netdev_info(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netif_carrier_off(i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %91 = call i32 @vmxnet3_tq_stop(i32* %89, %struct.vmxnet3_adapter* %90)
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %77

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %64
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @vmxnet3_tq_start(i32*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @vmxnet3_tq_stop(i32*, %struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
