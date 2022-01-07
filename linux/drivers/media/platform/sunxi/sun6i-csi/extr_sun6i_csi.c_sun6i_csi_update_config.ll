; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi = type { i32 }
%struct.sun6i_csi_config = type { i32 }
%struct.sun6i_csi_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun6i_csi_update_config(%struct.sun6i_csi* %0, %struct.sun6i_csi_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun6i_csi*, align 8
  %5 = alloca %struct.sun6i_csi_config*, align 8
  %6 = alloca %struct.sun6i_csi_dev*, align 8
  store %struct.sun6i_csi* %0, %struct.sun6i_csi** %4, align 8
  store %struct.sun6i_csi_config* %1, %struct.sun6i_csi_config** %5, align 8
  %7 = load %struct.sun6i_csi*, %struct.sun6i_csi** %4, align 8
  %8 = call %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi* %7)
  store %struct.sun6i_csi_dev* %8, %struct.sun6i_csi_dev** %6, align 8
  %9 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %5, align 8
  %10 = icmp ne %struct.sun6i_csi_config* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.sun6i_csi*, %struct.sun6i_csi** %4, align 8
  %16 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %15, i32 0, i32 0
  %17 = load %struct.sun6i_csi_config*, %struct.sun6i_csi_config** %5, align 8
  %18 = call i32 @memcpy(i32* %16, %struct.sun6i_csi_config* %17, i32 4)
  %19 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %20 = call i32 @sun6i_csi_setup_bus(%struct.sun6i_csi_dev* %19)
  %21 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %22 = call i32 @sun6i_csi_set_format(%struct.sun6i_csi_dev* %21)
  %23 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %24 = call i32 @sun6i_csi_set_window(%struct.sun6i_csi_dev* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi*) #1

declare dso_local i32 @memcpy(i32*, %struct.sun6i_csi_config*, i32) #1

declare dso_local i32 @sun6i_csi_setup_bus(%struct.sun6i_csi_dev*) #1

declare dso_local i32 @sun6i_csi_set_format(%struct.sun6i_csi_dev*) #1

declare dso_local i32 @sun6i_csi_set_window(%struct.sun6i_csi_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
