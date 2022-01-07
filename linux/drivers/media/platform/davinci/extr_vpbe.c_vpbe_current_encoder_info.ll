; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_current_encoder_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_current_encoder_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_config_info = type { i32 }
%struct.vpbe_device = type { i32, %struct.vpbe_config* }
%struct.vpbe_config = type { %struct.encoder_config_info*, %struct.encoder_config_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.encoder_config_info* (%struct.vpbe_device*)* @vpbe_current_encoder_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.encoder_config_info* @vpbe_current_encoder_info(%struct.vpbe_device* %0) #0 {
  %2 = alloca %struct.vpbe_device*, align 8
  %3 = alloca %struct.vpbe_config*, align 8
  %4 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %2, align 8
  %5 = load %struct.vpbe_device*, %struct.vpbe_device** %2, align 8
  %6 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %5, i32 0, i32 1
  %7 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  store %struct.vpbe_config* %7, %struct.vpbe_config** %3, align 8
  %8 = load %struct.vpbe_device*, %struct.vpbe_device** %2, align 8
  %9 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.vpbe_config*, %struct.vpbe_config** %3, align 8
  %15 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %14, i32 0, i32 1
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.vpbe_config*, %struct.vpbe_config** %3, align 8
  %18 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %17, i32 0, i32 0
  %19 = load %struct.encoder_config_info*, %struct.encoder_config_info** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.encoder_config_info, %struct.encoder_config_info* %19, i64 %22
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi %struct.encoder_config_info* [ %15, %13 ], [ %23, %16 ]
  ret %struct.encoder_config_info* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
