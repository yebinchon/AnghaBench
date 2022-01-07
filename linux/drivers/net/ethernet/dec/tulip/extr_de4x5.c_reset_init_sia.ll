; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_reset_init_sia.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_reset_init_sia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@RESET_SIA = common dso_local global i32 0, align 4
@DE4X5_SICR = common dso_local global i32 0, align 4
@DE4X5_SIGR = common dso_local global i32 0, align 4
@DE4X5_STRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @reset_init_sia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_init_sia(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.de4x5_private*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %11)
  store %struct.de4x5_private* %12, %struct.de4x5_private** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @RESET_SIA, align 4
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %4
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @srom_exec(%struct.net_device* %27, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %40 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @srom_exec(%struct.net_device* %38, i32 %47)
  %49 = load i32, i32* @DE4X5_SICR, align 4
  %50 = call i32 @outl(i32 1, i32 %49)
  br label %93

51:                                               ; preds = %21
  %52 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %53 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  %56 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %57 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %61 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %66 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %64, %68
  %70 = load i32, i32* @DE4X5_SIGR, align 4
  %71 = call i32 @outl(i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %74 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %72, %76
  %78 = load i32, i32* @DE4X5_SIGR, align 4
  %79 = call i32 @outl(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %51
  br label %85

81:                                               ; preds = %4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @DE4X5_SIGR, align 4
  %84 = call i32 @outl(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @DE4X5_STRR, align 4
  %88 = call i32 @outl(i32 %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @DE4X5_SICR, align 4
  %91 = call i32 @outl(i32 %89, i32 %90)
  %92 = call i32 @mdelay(i32 10)
  br label %93

93:                                               ; preds = %85, %26
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @srom_exec(%struct.net_device*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
