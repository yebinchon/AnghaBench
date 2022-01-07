; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_dm6446_vid0_pingpong.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_dm6446_vid0_pingpong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.osd_layer_config = type { i64, i32 }
%struct.osd_platform_data = type { i64 }

@OSD_VIDWIN0ADR = common dso_local global i32 0, align 4
@OSD_PPVWIN0ADR = common dso_local global i32 0, align 4
@OSD_MISCCTL_PPSW = common dso_local global i32 0, align 4
@OSD_MISCCTL_PPRV = common dso_local global i32 0, align 4
@OSD_MISCCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd_state*, i32, i64, %struct.osd_layer_config*)* @_osd_dm6446_vid0_pingpong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_osd_dm6446_vid0_pingpong(%struct.osd_state* %0, i32 %1, i64 %2, %struct.osd_layer_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.osd_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.osd_layer_config*, align 8
  %10 = alloca %struct.osd_platform_data*, align 8
  %11 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.osd_layer_config* %3, %struct.osd_layer_config** %9, align 8
  %12 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %13 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.osd_platform_data*
  store %struct.osd_platform_data* %17, %struct.osd_platform_data** %10, align 8
  %18 = load %struct.osd_platform_data*, %struct.osd_platform_data** %10, align 8
  %19 = icmp ne %struct.osd_platform_data* %18, null
  br i1 %19, label %20, label %77

20:                                               ; preds = %4
  %21 = load %struct.osd_platform_data*, %struct.osd_platform_data** %10, align 8
  %22 = getelementptr inbounds %struct.osd_platform_data, %struct.osd_platform_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %30 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, -32
  %37 = load i32, i32* @OSD_VIDWIN0ADR, align 4
  %38 = call i32 @osd_write(%struct.osd_state* %34, i64 %36, i32 %37)
  %39 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = and i64 %40, -32
  %42 = load i32, i32* @OSD_PPVWIN0ADR, align 4
  %43 = call i32 @osd_write(%struct.osd_state* %39, i64 %41, i32 %42)
  %44 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %45 = load i32, i32* @OSD_MISCCTL_PPSW, align 4
  %46 = load i32, i32* @OSD_MISCCTL_PPRV, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @OSD_MISCCTL, align 4
  %49 = call i32 @osd_modify(%struct.osd_state* %44, i32 %47, i32 0, i32 %48)
  store i32 0, i32* %5, align 4
  br label %78

50:                                               ; preds = %28
  %51 = load i32, i32* @OSD_MISCCTL_PPRV, align 4
  store i32 %51, i32* %11, align 4
  %52 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = and i64 %53, -32
  %55 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %56 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = load i32, i32* @OSD_VIDWIN0ADR, align 4
  %60 = call i32 @osd_write(%struct.osd_state* %52, i64 %58, i32 %59)
  %61 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = and i64 %62, -32
  %64 = load %struct.osd_layer_config*, %struct.osd_layer_config** %9, align 8
  %65 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = load i32, i32* @OSD_PPVWIN0ADR, align 4
  %69 = call i32 @osd_write(%struct.osd_state* %61, i64 %67, i32 %68)
  %70 = load %struct.osd_state*, %struct.osd_state** %6, align 8
  %71 = load i32, i32* @OSD_MISCCTL_PPSW, align 4
  %72 = load i32, i32* @OSD_MISCCTL_PPRV, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @OSD_MISCCTL, align 4
  %76 = call i32 @osd_modify(%struct.osd_state* %70, i32 %73, i32 %74, i32 %75)
  store i32 1, i32* %5, align 4
  br label %78

77:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %50, %33
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @osd_write(%struct.osd_state*, i64, i32) #1

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
