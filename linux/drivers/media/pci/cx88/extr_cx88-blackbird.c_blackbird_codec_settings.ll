; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_blackbird_codec_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_blackbird_codec_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_3__, %struct.cx88_core* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cx88_core = type { i32, i32, i32 }

@CX2341X_ENC_SET_FRAME_SIZE = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx8802_dev*)* @blackbird_codec_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blackbird_codec_settings(%struct.cx8802_dev* %0) #0 {
  %2 = alloca %struct.cx8802_dev*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %2, align 8
  %4 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %4, i32 0, i32 1
  %6 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  store %struct.cx88_core* %6, %struct.cx88_core** %3, align 8
  %7 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %8 = load i32, i32* @CX2341X_ENC_SET_FRAME_SIZE, align 4
  %9 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %10 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %13 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @blackbird_api_cmd(%struct.cx8802_dev* %7, i32 %8, i32 2, i32 0, i32 %11, i32 %14)
  %16 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %17 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %20 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %26 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %29 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %28, i32 0, i32 0
  %30 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %31 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %30, i32 0, i32 1
  %32 = load %struct.cx88_core*, %struct.cx88_core** %31, align 8
  %33 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_STD_625_50, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @cx2341x_handler_set_50hz(%struct.TYPE_3__* %29, i32 %36)
  %38 = load %struct.cx8802_dev*, %struct.cx8802_dev** %2, align 8
  %39 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %38, i32 0, i32 0
  %40 = call i32 @cx2341x_handler_setup(%struct.TYPE_3__* %39)
  ret void
}

declare dso_local i32 @blackbird_api_cmd(%struct.cx8802_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cx2341x_handler_set_50hz(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @cx2341x_handler_setup(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
