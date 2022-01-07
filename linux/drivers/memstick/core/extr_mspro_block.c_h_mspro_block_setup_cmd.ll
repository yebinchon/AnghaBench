; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_h_mspro_block_setup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_h_mspro_block_setup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, i32 }
%struct.mspro_block_data = type { i64, i32, i32 }
%struct.mspro_param_register = type { i32, i32, i32, i32 }

@h_mspro_block_req_init = common dso_local global i32 0, align 4
@h_mspro_block_transfer_data = common dso_local global i32 0, align 4
@MS_TPC_WRITE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_dev*, i64, i64)* @h_mspro_block_setup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_mspro_block_setup_cmd(%struct.memstick_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mspro_block_data*, align 8
  %8 = alloca %struct.mspro_param_register, align 4
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %10 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %9)
  store %struct.mspro_block_data* %10, %struct.mspro_block_data** %7, align 8
  %11 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %8, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %8, i32 0, i32 2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.mspro_block_data*, %struct.mspro_block_data** %7, align 8
  %16 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = udiv i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @cpu_to_be16(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %8, i32 0, i32 3
  %22 = load %struct.mspro_block_data*, %struct.mspro_block_data** %7, align 8
  %23 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.mspro_block_data*, %struct.mspro_block_data** %7, align 8
  %27 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @do_div(i64 %25, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @cpu_to_be32(i32 %31)
  %33 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %8, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @h_mspro_block_req_init, align 4
  %35 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %36 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @h_mspro_block_transfer_data, align 4
  %38 = load %struct.mspro_block_data*, %struct.mspro_block_data** %7, align 8
  %39 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %41 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %40, i32 0, i32 0
  %42 = load i32, i32* @MS_TPC_WRITE_REG, align 4
  %43 = call i32 @memstick_init_req(i32* %41, i32 %42, %struct.mspro_param_register* %8, i32 16)
  ret void
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memstick_init_req(i32*, i32, %struct.mspro_param_register*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
