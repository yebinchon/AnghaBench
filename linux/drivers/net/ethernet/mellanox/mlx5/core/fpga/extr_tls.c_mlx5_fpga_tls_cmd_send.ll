; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { %struct.mlx5_fpga_tls* }
%struct.mlx5_fpga_tls = type { i32, i32, i32 }
%struct.mlx5_fpga_tls_command_context = type { i32, %struct.TYPE_2__, i32 (i32, %struct.mlx5_fpga_device.0*, %struct.mlx5_fpga_tls_command_context*, i32*)*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_fpga_device.0 = type opaque

@mlx5_fpga_cmd_send_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)*)* @mlx5_fpga_tls_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_tls_cmd_send(%struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_tls_command_context* %1, i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)* %2) #0 {
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca %struct.mlx5_fpga_tls_command_context*, align 8
  %6 = alloca i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)*, align 8
  %7 = alloca %struct.mlx5_fpga_tls*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %4, align 8
  store %struct.mlx5_fpga_tls_command_context* %1, %struct.mlx5_fpga_tls_command_context** %5, align 8
  store i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)* %2, i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)** %6, align 8
  %10 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %10, i32 0, i32 0
  %12 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %11, align 8
  store %struct.mlx5_fpga_tls* %12, %struct.mlx5_fpga_tls** %7, align 8
  %13 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %13, i32 0, i32 3
  %15 = call i32 @refcount_set(i32* %14, i32 2)
  %16 = load i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)*, i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)** %6, align 8
  %17 = bitcast i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)* %16 to i32 (i32, %struct.mlx5_fpga_device.0*, %struct.mlx5_fpga_tls_command_context*, i32*)*
  %18 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %18, i32 0, i32 2
  store i32 (i32, %struct.mlx5_fpga_device.0*, %struct.mlx5_fpga_tls_command_context*, i32*)* %17, i32 (i32, %struct.mlx5_fpga_device.0*, %struct.mlx5_fpga_tls_command_context*, i32*)** %19, align 8
  %20 = load i32, i32* @mlx5_fpga_cmd_send_complete, align 4
  %21 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %31, i32 0, i32 1
  %33 = call i32 @mlx5_fpga_sbu_conn_sendmsg(i32 %30, %struct.TYPE_2__* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %3
  %41 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, %struct.mlx5_fpga_tls_command_context* %41, i32 0, i32 0
  %43 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %43, i32 0, i32 2
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  br label %54

46:                                               ; preds = %3
  %47 = load i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)*, i32 (i32, %struct.mlx5_fpga_device*, %struct.mlx5_fpga_tls_command_context*, i32*)** %6, align 8
  %48 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %52 = load %struct.mlx5_fpga_tls_command_context*, %struct.mlx5_fpga_tls_command_context** %5, align 8
  %53 = call i32 %47(i32 %50, %struct.mlx5_fpga_device* %51, %struct.mlx5_fpga_tls_command_context* %52, i32* null)
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx5_fpga_sbu_conn_sendmsg(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
