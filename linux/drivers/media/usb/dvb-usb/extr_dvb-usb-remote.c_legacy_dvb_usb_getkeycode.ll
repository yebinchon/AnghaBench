; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_getkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32, i32, i32 }
%struct.dvb_usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.rc_map_table* }
%struct.rc_map_table = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KEY_UNKNOWN = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @legacy_dvb_usb_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_getkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.rc_map_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = call %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.dvb_usb_device* %11, %struct.dvb_usb_device** %6, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.rc_map_table*, %struct.rc_map_table** %16, align 8
  store %struct.rc_map_table* %17, %struct.rc_map_table** %7, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %25 = load %struct.rc_map_table*, %struct.rc_map_table** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @legacy_dvb_usb_get_keymap_index(%struct.input_keymap_entry* %24, %struct.rc_map_table* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %2
  %35 = load %struct.rc_map_table*, %struct.rc_map_table** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %35, i64 %37
  %39 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %42 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %44 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @KEY_UNKNOWN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @KEY_RESERVED, align 4
  %50 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %51 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %34
  %53 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %54 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %56 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %55, i32 0, i32 2
  %57 = load %struct.rc_map_table*, %struct.rc_map_table** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %57, i64 %59
  %61 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %60, i32 0, i32 0
  %62 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %63 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32* %56, i32* %61, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %68 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %52, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @legacy_dvb_usb_get_keymap_index(%struct.input_keymap_entry*, %struct.rc_map_table*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
