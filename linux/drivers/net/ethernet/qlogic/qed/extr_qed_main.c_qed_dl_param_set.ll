; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_dl_param_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_dl_param_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qed_devlink = type { %struct.qed_dev* }
%struct.qed_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.devlink_param_gset_ctx*)* @qed_dl_param_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dl_param_set(%struct.devlink* %0, i32 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_param_gset_ctx*, align 8
  %7 = alloca %struct.qed_devlink*, align 8
  %8 = alloca %struct.qed_dev*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %6, align 8
  %9 = load %struct.devlink*, %struct.devlink** %4, align 8
  %10 = call %struct.qed_devlink* @devlink_priv(%struct.devlink* %9)
  store %struct.qed_devlink* %10, %struct.qed_devlink** %7, align 8
  %11 = load %struct.qed_devlink*, %struct.qed_devlink** %7, align 8
  %12 = getelementptr inbounds %struct.qed_devlink, %struct.qed_devlink* %11, i32 0, i32 0
  %13 = load %struct.qed_dev*, %struct.qed_dev** %12, align 8
  store %struct.qed_dev* %13, %struct.qed_dev** %8, align 8
  %14 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %19 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret i32 0
}

declare dso_local %struct.qed_devlink* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
