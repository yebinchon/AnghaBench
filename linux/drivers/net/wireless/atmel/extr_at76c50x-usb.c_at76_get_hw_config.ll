; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_get_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_get_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%union.at76_hwcfg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot get HW Config (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*)* @at76_get_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_get_hw_config(%struct.at76_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at76_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.at76_hwcfg*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %union.at76_hwcfg* @kmalloc(i32 8, i32 %6)
  store %union.at76_hwcfg* %7, %union.at76_hwcfg** %5, align 8
  %8 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %9 = icmp ne %union.at76_hwcfg* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %117

13:                                               ; preds = %1
  %14 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %15 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @at76_is_intersil(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %21 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %24 = call i32 @at76_get_hw_cfg_intersil(i32 %22, %union.at76_hwcfg* %23, i32 8)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %102

28:                                               ; preds = %19
  %29 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %33 = bitcast %union.at76_hwcfg* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcpy(i32 %31, i32 %35, i32 %36)
  %38 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %39 = bitcast %union.at76_hwcfg* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %43 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %101

44:                                               ; preds = %13
  %45 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %46 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @at76_is_503rfmd(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %52 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %55 = call i32 @at76_get_hw_cfg(i32 %53, %union.at76_hwcfg* %54, i32 8)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %102

59:                                               ; preds = %50
  %60 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %61 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %64 = bitcast %union.at76_hwcfg* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i32 @memcpy(i32 %62, i32 %66, i32 %67)
  %69 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %70 = bitcast %union.at76_hwcfg* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %74 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %100

75:                                               ; preds = %44
  %76 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %77 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %80 = call i32 @at76_get_hw_cfg(i32 %78, %union.at76_hwcfg* %79, i32 8)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %102

84:                                               ; preds = %75
  %85 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %86 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %89 = bitcast %union.at76_hwcfg* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @memcpy(i32 %87, i32 %91, i32 %92)
  %94 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %95 = bitcast %union.at76_hwcfg* %94 to %struct.TYPE_7__*
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %99 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %84, %59
  br label %101

101:                                              ; preds = %100, %28
  br label %102

102:                                              ; preds = %101, %83, %58, %27
  %103 = load %union.at76_hwcfg*, %union.at76_hwcfg** %5, align 8
  %104 = call i32 @kfree(%union.at76_hwcfg* %103)
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %109 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @wiphy_err(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %107, %102
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %10
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %union.at76_hwcfg* @kmalloc(i32, i32) #1

declare dso_local i64 @at76_is_intersil(i32) #1

declare dso_local i32 @at76_get_hw_cfg_intersil(i32, %union.at76_hwcfg*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @at76_is_503rfmd(i32) #1

declare dso_local i32 @at76_get_hw_cfg(i32, %union.at76_hwcfg*, i32) #1

declare dso_local i32 @kfree(%union.at76_hwcfg*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
