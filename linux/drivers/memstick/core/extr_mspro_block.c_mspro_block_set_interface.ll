; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_set_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { %struct.TYPE_2__, i32, i32, %struct.memstick_host* }
%struct.TYPE_2__ = type { i32 }
%struct.memstick_host = type { i32 }
%struct.mspro_block_data = type { i32 }
%struct.mspro_param_register = type { i8, i32, i32, i32 }

@h_mspro_block_req_init = common dso_local global i32 0, align 4
@h_mspro_block_default = common dso_local global i32 0, align 4
@MS_TPC_WRITE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, i8)* @mspro_block_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_set_interface(%struct.memstick_dev* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.memstick_host*, align 8
  %6 = alloca %struct.mspro_block_data*, align 8
  %7 = alloca %struct.mspro_param_register, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %9 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %8, i32 0, i32 3
  %10 = load %struct.memstick_host*, %struct.memstick_host** %9, align 8
  store %struct.memstick_host* %10, %struct.memstick_host** %5, align 8
  %11 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %12 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %11)
  store %struct.mspro_block_data* %12, %struct.mspro_block_data** %6, align 8
  %13 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %7, i32 0, i32 0
  %14 = load i8, i8* %4, align 1
  store i8 %14, i8* %13, align 4
  %15 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %7, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %7, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %7, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @h_mspro_block_req_init, align 4
  %19 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %20 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @h_mspro_block_default, align 4
  %22 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %23 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %25 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %24, i32 0, i32 0
  %26 = load i32, i32* @MS_TPC_WRITE_REG, align 4
  %27 = call i32 @memstick_init_req(%struct.TYPE_2__* %25, i32 %26, %struct.mspro_param_register* %7, i32 16)
  %28 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %29 = call i32 @memstick_new_req(%struct.memstick_host* %28)
  %30 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %31 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %30, i32 0, i32 1
  %32 = call i32 @wait_for_completion(i32* %31)
  %33 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %34 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  ret i32 %36
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @memstick_init_req(%struct.TYPE_2__*, i32, %struct.mspro_param_register*, i32) #1

declare dso_local i32 @memstick_new_req(%struct.memstick_host*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
