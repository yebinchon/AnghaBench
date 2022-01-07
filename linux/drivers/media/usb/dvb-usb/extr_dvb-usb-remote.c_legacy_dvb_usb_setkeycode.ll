; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_setkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.rc_map_table* }
%struct.rc_map_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @legacy_dvb_usb_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_setkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_keymap_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.rc_map_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = call %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.rc_map_table*, %struct.rc_map_table** %18, align 8
  store %struct.rc_map_table* %19, %struct.rc_map_table** %9, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %27 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @legacy_dvb_usb_get_keymap_index(%struct.input_keymap_entry* %26, %struct.rc_map_table* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %94

36:                                               ; preds = %3
  %37 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %37, i64 %39
  %41 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %45 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %48 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %50 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__set_bit(i32 %51, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @KEY_RESERVED, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %36
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__clear_bit(i32 %62, i32 %65)
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %89, %60
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load %struct.rc_map_table*, %struct.rc_map_table** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %72, i64 %74
  %76 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__set_bit(i32 %83, i32 %86)
  br label %92

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %67

92:                                               ; preds = %81, %67
  br label %93

93:                                               ; preds = %92, %36
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %33
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.dvb_usb_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @legacy_dvb_usb_get_keymap_index(%struct.input_keymap_entry*, %struct.rc_map_table*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
