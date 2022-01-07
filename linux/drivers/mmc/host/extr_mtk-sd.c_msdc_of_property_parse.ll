; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_of_property_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_of_property_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msdc_host = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"mediatek,latch-ck\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"hs400-ds-delay\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"mediatek,hs200-cmd-int-delay\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"mediatek,hs400-cmd-int-delay\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"mediatek,hs400-cmd-resp-sel-rising\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.msdc_host*)* @msdc_of_property_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_of_property_parse(%struct.platform_device* %0, %struct.msdc_host* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msdc_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.msdc_host* %1, %struct.msdc_host** %4, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %10 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %9, i32 0, i32 4
  %11 = call i32 @of_property_read_u32(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %17 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %16, i32 0, i32 3
  %18 = call i32 @of_property_read_u32(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %24 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %23, i32 0, i32 2
  %25 = call i32 @of_property_read_u32(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %31 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %30, i32 0, i32 1
  %32 = call i32 @of_property_read_u32(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @of_property_read_bool(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %41 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %44 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
