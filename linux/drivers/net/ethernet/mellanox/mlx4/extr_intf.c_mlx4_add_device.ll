; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_intf.c_mlx4_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_intf.c_mlx4_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_interface = type { i32 (i32*, i64)*, i64 (i32*)* }
%struct.mlx4_priv = type { i32, i32, i32 }
%struct.mlx4_device_context = type { i64, i32, %struct.mlx4_interface* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_interface*, %struct.mlx4_priv*)* @mlx4_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_add_device(%struct.mlx4_interface* %0, %struct.mlx4_priv* %1) #0 {
  %3 = alloca %struct.mlx4_interface*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca %struct.mlx4_device_context*, align 8
  store %struct.mlx4_interface* %0, %struct.mlx4_interface** %3, align 8
  store %struct.mlx4_priv* %1, %struct.mlx4_priv** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlx4_device_context* @kmalloc(i32 24, i32 %6)
  store %struct.mlx4_device_context* %7, %struct.mlx4_device_context** %5, align 8
  %8 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %9 = icmp ne %struct.mlx4_device_context* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.mlx4_interface*, %struct.mlx4_interface** %3, align 8
  %13 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_device_context, %struct.mlx4_device_context* %13, i32 0, i32 2
  store %struct.mlx4_interface* %12, %struct.mlx4_interface** %14, align 8
  %15 = load %struct.mlx4_interface*, %struct.mlx4_interface** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_interface, %struct.mlx4_interface* %15, i32 0, i32 1
  %17 = load i64 (i32*)*, i64 (i32*)** %16, align 8
  %18 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %18, i32 0, i32 0
  %20 = call i64 %17(i32* %19)
  %21 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_device_context, %struct.mlx4_device_context* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_device_context, %struct.mlx4_device_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %11
  %28 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_device_context, %struct.mlx4_device_context* %31, i32 0, i32 1
  %33 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %33, i32 0, i32 2
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load %struct.mlx4_interface*, %struct.mlx4_interface** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_interface, %struct.mlx4_interface* %39, i32 0, i32 0
  %41 = load i32 (i32*, i64)*, i32 (i32*, i64)** %40, align 8
  %42 = icmp ne i32 (i32*, i64)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %27
  %44 = load %struct.mlx4_interface*, %struct.mlx4_interface** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_interface, %struct.mlx4_interface* %44, i32 0, i32 0
  %46 = load i32 (i32*, i64)*, i32 (i32*, i64)** %45, align 8
  %47 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %47, i32 0, i32 0
  %49 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %50 = getelementptr inbounds %struct.mlx4_device_context, %struct.mlx4_device_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 %46(i32* %48, i64 %51)
  br label %53

53:                                               ; preds = %43, %27
  br label %57

54:                                               ; preds = %11
  %55 = load %struct.mlx4_device_context*, %struct.mlx4_device_context** %5, align 8
  %56 = call i32 @kfree(%struct.mlx4_device_context* %55)
  br label %57

57:                                               ; preds = %10, %54, %53
  ret void
}

declare dso_local %struct.mlx4_device_context* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_device_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
