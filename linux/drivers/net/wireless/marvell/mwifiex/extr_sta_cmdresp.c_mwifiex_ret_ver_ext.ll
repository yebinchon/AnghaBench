; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_ver_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_ver_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_version_ext }
%struct.host_cmd_ds_version_ext = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, %struct.host_cmd_ds_version_ext*)* @mwifiex_ret_ver_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_ver_ext(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_version_ext* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_version_ext*, align 8
  %7 = alloca %struct.host_cmd_ds_version_ext*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store %struct.host_cmd_ds_version_ext* %2, %struct.host_cmd_ds_version_ext** %6, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.host_cmd_ds_version_ext* %10, %struct.host_cmd_ds_version_ext** %7, align 8
  %11 = load %struct.host_cmd_ds_version_ext*, %struct.host_cmd_ds_version_ext** %6, align 8
  %12 = icmp ne %struct.host_cmd_ds_version_ext* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.host_cmd_ds_version_ext*, %struct.host_cmd_ds_version_ext** %7, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_version_ext, %struct.host_cmd_ds_version_ext* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.host_cmd_ds_version_ext*, %struct.host_cmd_ds_version_ext** %6, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_version_ext, %struct.host_cmd_ds_version_ext* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.host_cmd_ds_version_ext*, %struct.host_cmd_ds_version_ext** %6, align 8
  %20 = getelementptr inbounds %struct.host_cmd_ds_version_ext, %struct.host_cmd_ds_version_ext* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.host_cmd_ds_version_ext*, %struct.host_cmd_ds_version_ext** %7, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_version_ext, %struct.host_cmd_ds_version_ext* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 128)
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.host_cmd_ds_version_ext*, %struct.host_cmd_ds_version_ext** %7, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_version_ext, %struct.host_cmd_ds_version_ext* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 128)
  br label %33

33:                                               ; preds = %13, %3
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
