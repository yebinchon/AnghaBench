; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_pvc_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_pvc_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvc_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pvc_device*)* @pvc_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvc_carrier(i32 %0, %struct.pvc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvc_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pvc_device* %1, %struct.pvc_device** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %2
  %8 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %9 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %14 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @netif_carrier_ok(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %20 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @netif_carrier_on(i64 %21)
  br label %23

23:                                               ; preds = %18, %12
  br label %24

24:                                               ; preds = %23, %7
  %25 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %26 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %31 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @netif_carrier_ok(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %37 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @netif_carrier_on(i64 %38)
  br label %40

40:                                               ; preds = %35, %29
  br label %41

41:                                               ; preds = %40, %24
  br label %77

42:                                               ; preds = %2
  %43 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %44 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %49 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @netif_carrier_ok(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %55 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @netif_carrier_off(i64 %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %61 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %66 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @netif_carrier_ok(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.pvc_device*, %struct.pvc_device** %4, align 8
  %72 = getelementptr inbounds %struct.pvc_device, %struct.pvc_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @netif_carrier_off(i64 %73)
  br label %75

75:                                               ; preds = %70, %64
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %41
  ret void
}

declare dso_local i64 @netif_carrier_ok(i64) #1

declare dso_local i32 @netif_carrier_on(i64) #1

declare dso_local i32 @netif_carrier_off(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
