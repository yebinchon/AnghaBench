; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_write_ar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_write_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.1*, i32)* }
%struct.c2port_device.0 = type opaque
%struct.c2port_device.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2port_device*, i32)* @c2port_write_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2port_write_ar(%struct.c2port_device* %0, i32 %1) #0 {
  %3 = alloca %struct.c2port_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c2port_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.c2port_device* %0, %struct.c2port_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %8 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %7, i32 0, i32 0
  %9 = load %struct.c2port_ops*, %struct.c2port_ops** %8, align 8
  store %struct.c2port_ops* %9, %struct.c2port_ops** %5, align 8
  %10 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %11 = call i32 @c2port_strobe_ck(%struct.c2port_device* %10)
  %12 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %13 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %12, i32 0, i32 0
  %14 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %13, align 8
  %15 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %16 = bitcast %struct.c2port_device* %15 to %struct.c2port_device.0*
  %17 = call i32 %14(%struct.c2port_device.0* %16, i32 0)
  %18 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %19 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %18, i32 0, i32 1
  %20 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %19, align 8
  %21 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %22 = bitcast %struct.c2port_device* %21 to %struct.c2port_device.1*
  %23 = call i32 %20(%struct.c2port_device.1* %22, i32 1)
  %24 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %25 = call i32 @c2port_strobe_ck(%struct.c2port_device* %24)
  %26 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %27 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %26, i32 0, i32 1
  %28 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %27, align 8
  %29 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %30 = bitcast %struct.c2port_device* %29 to %struct.c2port_device.1*
  %31 = call i32 %28(%struct.c2port_device.1* %30, i32 1)
  %32 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %33 = call i32 @c2port_strobe_ck(%struct.c2port_device* %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %50, %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %39 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %38, i32 0, i32 1
  %40 = load i32 (%struct.c2port_device.1*, i32)*, i32 (%struct.c2port_device.1*, i32)** %39, align 8
  %41 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %42 = bitcast %struct.c2port_device* %41 to %struct.c2port_device.1*
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 1
  %45 = call i32 %40(%struct.c2port_device.1* %42, i32 %44)
  %46 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %47 = call i32 @c2port_strobe_ck(%struct.c2port_device* %46)
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  %55 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %55, align 8
  %57 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %58 = bitcast %struct.c2port_device* %57 to %struct.c2port_device.0*
  %59 = call i32 %56(%struct.c2port_device.0* %58, i32 1)
  %60 = load %struct.c2port_device*, %struct.c2port_device** %3, align 8
  %61 = call i32 @c2port_strobe_ck(%struct.c2port_device* %60)
  ret void
}

declare dso_local i32 @c2port_strobe_ck(%struct.c2port_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
