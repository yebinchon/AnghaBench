; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11_key_material.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11_key_material.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_cmd_ds_command = type { i32 }
%struct.mwifiex_ds_encrypt_key = type { i32 }

@KEY_API_VER_MAJOR_V2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32, %struct.mwifiex_ds_encrypt_key*)* @mwifiex_cmd_802_11_key_material to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_802_11_key_material(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32 %2, i32 %3, %struct.mwifiex_ds_encrypt_key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_private*, align 8
  %8 = alloca %struct.host_cmd_ds_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mwifiex_ds_encrypt_key*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %7, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mwifiex_ds_encrypt_key* %4, %struct.mwifiex_ds_encrypt_key** %11, align 8
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KEY_API_VER_MAJOR_V2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %21 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %11, align 8
  %25 = call i32 @mwifiex_cmd_802_11_key_material_v2(%struct.mwifiex_private* %20, %struct.host_cmd_ds_command* %21, i32 %22, i32 %23, %struct.mwifiex_ds_encrypt_key* %24)
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %5
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %7, align 8
  %28 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.mwifiex_ds_encrypt_key*, %struct.mwifiex_ds_encrypt_key** %11, align 8
  %32 = call i32 @mwifiex_cmd_802_11_key_material_v1(%struct.mwifiex_private* %27, %struct.host_cmd_ds_command* %28, i32 %29, i32 %30, %struct.mwifiex_ds_encrypt_key* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @mwifiex_cmd_802_11_key_material_v2(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32, %struct.mwifiex_ds_encrypt_key*) #1

declare dso_local i32 @mwifiex_cmd_802_11_key_material_v1(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32, %struct.mwifiex_ds_encrypt_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
