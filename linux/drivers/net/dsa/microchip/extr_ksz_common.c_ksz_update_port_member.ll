; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_update_port_member.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_update_port_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32, i32, %struct.TYPE_2__*, %struct.ksz_port* }
%struct.TYPE_2__ = type { i32 (%struct.ksz_device*, i32, i64)* }
%struct.ksz_port = type { i64, i64 }

@BR_STATE_FORWARDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksz_update_port_member(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_port*, align 8
  %6 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %7
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %20 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %13
  br label %68

24:                                               ; preds = %17
  %25 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %26 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %25, i32 0, i32 4
  %27 = load %struct.ksz_port*, %struct.ksz_port** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %27, i64 %29
  store %struct.ksz_port* %30, %struct.ksz_port** %5, align 8
  %31 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %32 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  br label %68

39:                                               ; preds = %24
  %40 = load %struct.ksz_port*, %struct.ksz_port** %5, align 8
  %41 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.ksz_port*, %struct.ksz_port** %5, align 8
  %47 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %50 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %56 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.ksz_device*, i32, i64)*, i32 (%struct.ksz_device*, i32, i64)** %58, align 8
  %60 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %63 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = call i32 %59(%struct.ksz_device* %60, i32 %61, i64 %65)
  br label %67

67:                                               ; preds = %54, %45, %39
  br label %68

68:                                               ; preds = %67, %38, %23
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %7

71:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
