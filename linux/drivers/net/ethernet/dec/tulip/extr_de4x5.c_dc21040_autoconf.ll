; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc21040_autoconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc21040_autoconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i32, i32, i32 }

@DE4X5_AUTOSENSE_MS = common dso_local global i32 0, align 4
@DISABLE_IRQs = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@test_tp = common dso_local global i32 0, align 4
@ping_media = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dc21040_autoconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc21040_autoconf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de4x5_private* %8, %struct.de4x5_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %14 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %120 [
    i32 131, label %16
    i32 129, label %73
    i32 128, label %77
    i32 136, label %81
    i32 137, label %81
    i32 135, label %81
    i32 134, label %85
    i32 133, label %89
    i32 132, label %93
    i32 130, label %97
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @DISABLE_IRQs, align 4
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %21 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %20, i32 0, i32 2
  store i32 -1, i32* %21, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @de4x5_save_skbs(%struct.net_device* %22)
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AUTO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %16
  %35 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %36 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  br label %68

37:                                               ; preds = %29
  %38 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %39 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 136
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %44 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 137
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %49 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 135
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42, %37
  %53 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %54 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %53, i32 0, i32 0
  store i32 135, i32* %54, align 4
  br label %67

55:                                               ; preds = %47
  %56 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %57 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 133
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %62 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %61, i32 0, i32 0
  store i32 133, i32* %62, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %65 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %64, i32 0, i32 0
  store i32 130, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %34
  %69 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %70 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %69, i32 0, i32 5
  store i32 0, i32* %70, align 4
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = call i32 @dc21040_autoconf(%struct.net_device* %71)
  store i32 %72, i32* %5, align 4
  br label %120

73:                                               ; preds = %1
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @test_tp, align 4
  %76 = call i32 @dc21040_state(%struct.net_device* %74, i32 36609, i32 65535, i32 0, i32 3000, i32 135, i32 128, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %120

77:                                               ; preds = %1
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i32, i32* @test_tp, align 4
  %80 = call i32 @de4x5_suspect_state(%struct.net_device* %78, i32 1000, i32 129, i32 %79, i32 (%struct.net_device*)* @dc21040_autoconf)
  store i32 %80, i32* %5, align 4
  br label %120

81:                                               ; preds = %1, %1, %1
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @ping_media, align 4
  %84 = call i32 @dc21040_state(%struct.net_device* %82, i32 36617, i32 1797, i32 6, i32 3000, i32 133, i32 134, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %120

85:                                               ; preds = %1
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i32, i32* @ping_media, align 4
  %88 = call i32 @de4x5_suspect_state(%struct.net_device* %86, i32 1000, i32 135, i32 %87, i32 (%struct.net_device*)* @dc21040_autoconf)
  store i32 %88, i32* %5, align 4
  br label %120

89:                                               ; preds = %1
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load i32, i32* @ping_media, align 4
  %92 = call i32 @dc21040_state(%struct.net_device* %90, i32 12353, i32 0, i32 6, i32 3000, i32 130, i32 132, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %120

93:                                               ; preds = %1
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i32, i32* @ping_media, align 4
  %96 = call i32 @de4x5_suspect_state(%struct.net_device* %94, i32 1000, i32 133, i32 %95, i32 (%struct.net_device*)* @dc21040_autoconf)
  store i32 %96, i32* %5, align 4
  br label %120

97:                                               ; preds = %1
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = call i32 @reset_init_sia(%struct.net_device* %98, i32 36609, i32 65535, i32 0)
  %100 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %101 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %104 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = call i32 @de4x5_dbg_media(%struct.net_device* %108)
  %110 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %111 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %114 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %97
  %116 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %117 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %116, i32 0, i32 0
  store i32 131, i32* %117, align 4
  %118 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %119 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %1, %115, %93, %89, %85, %81, %77, %73, %68
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_save_skbs(%struct.net_device*) #1

declare dso_local i32 @dc21040_state(%struct.net_device*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @de4x5_suspect_state(%struct.net_device*, i32, i32, i32, i32 (%struct.net_device*)*) #1

declare dso_local i32 @reset_init_sia(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @de4x5_dbg_media(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
