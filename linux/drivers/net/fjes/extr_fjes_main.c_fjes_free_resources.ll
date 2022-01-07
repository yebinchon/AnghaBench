; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_adapter = type { i32, i32, %struct.fjes_hw, %struct.net_device* }
%struct.fjes_hw = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.ep_share_mem_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ep_share_mem_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.fjes_device_command_param = type { i8*, i8*, i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fjes_adapter*)* @fjes_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_free_resources(%struct.fjes_adapter* %0) #0 {
  %2 = alloca %struct.fjes_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fjes_device_command_param, align 8
  %5 = alloca %struct.ep_share_mem_info*, align 8
  %6 = alloca %struct.fjes_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fjes_adapter* %0, %struct.fjes_adapter** %2, align 8
  %11 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %3, align 8
  %14 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %14, i32 0, i32 2
  store %struct.fjes_hw* %15, %struct.fjes_hw** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %82, %1
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %19 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %25 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %82

29:                                               ; preds = %22
  %30 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %31 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @fjes_hw_unregister_buff_addr(%struct.fjes_hw* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %38 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %42 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %41, i32 0, i32 5
  %43 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %56 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %55, i32 0, i32 5
  %57 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %57, i64 %59
  store %struct.ep_share_mem_info* %60, %struct.ep_share_mem_info** %5, align 8
  %61 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %62 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %61, i32 0, i32 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %5, align 8
  %66 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %65, i32 0, i32 0
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @fjes_hw_setup_epbuf(i32* %66, i32 %69, i32 %72)
  %74 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %75 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %74, i32 0, i32 4
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %80 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %79, i32 0, i32 3
  %81 = call i32 @clear_bit(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %54, %28
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %16

85:                                               ; preds = %16
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %88, %85
  %94 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %95 = call i32 @fjes_hw_reset(%struct.fjes_hw* %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.fjes_adapter*, %struct.fjes_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %105 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = bitcast %struct.fjes_device_command_param* %4 to i8*
  %108 = call i32 @memset(i8* %107, i32 0, i32 40)
  %109 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %110 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %4, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %115 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @__pa(i32 %117)
  %119 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %4, i32 0, i32 3
  store i8* %118, i8** %119, align 8
  %120 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %121 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %4, i32 0, i32 2
  store i32 %123, i32* %124, align 8
  %125 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %126 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @__pa(i32 %128)
  %130 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %4, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %132 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @__pa(i32 %136)
  %138 = getelementptr inbounds %struct.fjes_device_command_param, %struct.fjes_device_command_param* %4, i32 0, i32 0
  store i8* %137, i8** %138, align 8
  %139 = load %struct.fjes_hw*, %struct.fjes_hw** %6, align 8
  %140 = call i32 @fjes_hw_init_command_registers(%struct.fjes_hw* %139, %struct.fjes_device_command_param* %4)
  br label %141

141:                                              ; preds = %103, %88
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fjes_hw_unregister_buff_addr(%struct.fjes_hw*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fjes_hw_setup_epbuf(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fjes_hw_reset(%struct.fjes_hw*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @__pa(i32) #1

declare dso_local i32 @fjes_hw_init_command_registers(%struct.fjes_hw*, %struct.fjes_device_command_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
