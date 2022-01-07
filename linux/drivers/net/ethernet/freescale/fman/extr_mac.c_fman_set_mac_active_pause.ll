; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_fman_set_mac_active_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_fman_set_mac_active_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { i32, i32 (%struct.fman_mac*, i32)*, i32, i32 (%struct.fman_mac.0*, i32, i32, i32)*, %struct.fman_mac.1* }
%struct.fman_mac = type opaque
%struct.fman_mac.0 = type opaque
%struct.fman_mac.1 = type { i32 }

@FSL_FM_PAUSE_TIME_ENABLE = common dso_local global i32 0, align 4
@FSL_FM_PAUSE_TIME_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_set_mac_active_pause(%struct.mac_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fman_mac.1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mac_device* %0, %struct.mac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %11 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %10, i32 0, i32 4
  %12 = load %struct.fman_mac.1*, %struct.fman_mac.1** %11, align 8
  store %struct.fman_mac.1* %12, %struct.fman_mac.1** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %15 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %20 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %19, i32 0, i32 1
  %21 = load i32 (%struct.fman_mac*, i32)*, i32 (%struct.fman_mac*, i32)** %20, align 8
  %22 = load %struct.fman_mac.1*, %struct.fman_mac.1** %7, align 8
  %23 = bitcast %struct.fman_mac.1* %22 to %struct.fman_mac*
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %21(%struct.fman_mac* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %34 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %18
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %39 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @FSL_FM_PAUSE_TIME_ENABLE, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @FSL_FM_PAUSE_TIME_DISABLE, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %9, align 4
  %51 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %52 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %51, i32 0, i32 3
  %53 = load i32 (%struct.fman_mac.0*, i32, i32, i32)*, i32 (%struct.fman_mac.0*, i32, i32, i32)** %52, align 8
  %54 = load %struct.fman_mac.1*, %struct.fman_mac.1** %7, align 8
  %55 = bitcast %struct.fman_mac.1* %54 to %struct.fman_mac.0*
  %56 = load i32, i32* %9, align 4
  %57 = call i32 %53(%struct.fman_mac.0* %55, i32 0, i32 %56, i32 0)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @likely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.mac_device*, %struct.mac_device** %4, align 8
  %66 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %49
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
