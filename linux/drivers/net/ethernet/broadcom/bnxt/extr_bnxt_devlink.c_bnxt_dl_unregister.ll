; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.devlink* }
%struct.devlink = type { i32 }

@bnxt_dl_port_params = common dso_local global i32 0, align 4
@bnxt_dl_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_dl_unregister(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.devlink*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %4 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %5 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %4, i32 0, i32 1
  %6 = load %struct.devlink*, %struct.devlink** %5, align 8
  store %struct.devlink* %6, %struct.devlink** %3, align 8
  %7 = load %struct.devlink*, %struct.devlink** %3, align 8
  %8 = icmp ne %struct.devlink* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = call i32 @bnxt_dl_fw_reporters_destroy(%struct.bnxt* %11)
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 0
  %15 = load i32, i32* @bnxt_dl_port_params, align 4
  %16 = load i32, i32* @bnxt_dl_port_params, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @devlink_port_params_unregister(i32* %14, i32 %15, i32 %17)
  %19 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 0
  %21 = call i32 @devlink_port_unregister(i32* %20)
  %22 = load %struct.devlink*, %struct.devlink** %3, align 8
  %23 = load i32, i32* @bnxt_dl_params, align 4
  %24 = load i32, i32* @bnxt_dl_params, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = call i32 @devlink_params_unregister(%struct.devlink* %22, i32 %23, i32 %25)
  %27 = load %struct.devlink*, %struct.devlink** %3, align 8
  %28 = call i32 @devlink_unregister(%struct.devlink* %27)
  %29 = load %struct.devlink*, %struct.devlink** %3, align 8
  %30 = call i32 @devlink_free(%struct.devlink* %29)
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @bnxt_dl_fw_reporters_destroy(%struct.bnxt*) #1

declare dso_local i32 @devlink_port_params_unregister(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devlink_port_unregister(i32*) #1

declare dso_local i32 @devlink_params_unregister(%struct.devlink*, i32, i32) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

declare dso_local i32 @devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
