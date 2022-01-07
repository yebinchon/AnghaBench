; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_config_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_config_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@VPIF_CHANNEL3_VIDEO = common dso_local global i64 0, align 8
@ch3_set_videobuf_addr = common dso_local global i32 0, align 4
@ch2_set_videobuf_addr_yc_nmux = common dso_local global i32 0, align 4
@ch2_set_videobuf_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*, i32)* @vpif_config_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_config_addr(%struct.channel_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.channel_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.common_obj*, align 8
  store %struct.channel_obj* %0, %struct.channel_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %7 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %6, i32 0, i32 1
  %8 = load %struct.common_obj*, %struct.common_obj** %7, align 8
  %9 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %10 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %8, i64 %9
  store %struct.common_obj* %10, %struct.common_obj** %5, align 8
  %11 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %12 = load %struct.channel_obj*, %struct.channel_obj** %3, align 8
  %13 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ch3_set_videobuf_addr, align 4
  %18 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 2, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @ch2_set_videobuf_addr_yc_nmux, align 4
  %25 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @ch2_set_videobuf_addr, align 4
  %29 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %30 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
