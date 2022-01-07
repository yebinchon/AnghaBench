; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_read_ar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_read_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i64 (%struct.c2port_device.0*)*, i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.2*, i32)* }
%struct.c2port_device.0 = type opaque
%struct.c2port_device.1 = type opaque
%struct.c2port_device.2 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*, i32*)* @c2port_read_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2port_read_ar(%struct.c2port_device* %0, i32* %1) #0 {
  %3 = alloca %struct.c2port_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.c2port_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %8 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %7, i32 0, i32 0
  %9 = load %struct.c2port_ops*, %struct.c2port_ops** %8, align 8
  store %struct.c2port_ops* %9, %struct.c2port_ops** %5, align 8
  %10 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %11 = call i32 @c2port_strobe_ck(%struct.c2port_device* %10)
  %12 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %13 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %12, i32 0, i32 1
  %14 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %13, align 8
  %15 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %16 = bitcast %struct.c2port_device* %15 to %struct.c2port_device.1*
  %17 = call i32 %14(%struct.c2port_device.1* %16, i32 0)
  %18 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %19 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %18, i32 0, i32 2
  %20 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %19, align 8
  %21 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %22 = bitcast %struct.c2port_device* %21 to %struct.c2port_device.2*
  %23 = call i32 %20(%struct.c2port_device.2* %22, i32 0)
  %24 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %25 = call i32 @c2port_strobe_ck(%struct.c2port_device* %24)
  %26 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %27 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %26, i32 0, i32 2
  %28 = load i32 (%struct.c2port_device.2*, i32)*, i32 (%struct.c2port_device.2*, i32)** %27, align 8
  %29 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %30 = bitcast %struct.c2port_device* %29 to %struct.c2port_device.2*
  %31 = call i32 %28(%struct.c2port_device.2* %30, i32 1)
  %32 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %33 = call i32 @c2port_strobe_ck(%struct.c2port_device* %32)
  %34 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %35 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %34, i32 0, i32 1
  %36 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %35, align 8
  %37 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %38 = bitcast %struct.c2port_device* %37 to %struct.c2port_device.1*
  %39 = call i32 %36(%struct.c2port_device.1* %38, i32 1)
  %40 = load i32*, i32** %4, align 8
  store i32 0, i32* %40, align 4
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %62, %2
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %49 = call i32 @c2port_strobe_ck(%struct.c2port_device* %48)
  %50 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %51 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %50, i32 0, i32 0
  %52 = load i64 (%struct.c2port_device.0*)*, i64 (%struct.c2port_device.0*)** %51, align 8
  %53 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %54 = bitcast %struct.c2port_device* %53 to %struct.c2port_device.0*
  %55 = call i64 %52(%struct.c2port_device.0* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, 128
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %57, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %67 = call i32 @c2port_strobe_ck(%struct.c2port_device* %66)
  ret i32 0
}

declare dso_local i32 @c2port_strobe_ck(%struct.c2port_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
