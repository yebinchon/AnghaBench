; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_get_keymap_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_get_keymap_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_keymap_entry = type { i32, i32 }
%struct.rc_map_table = type { i32, i64 }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i64 0, align 8
@KEY_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_keymap_entry*, %struct.rc_map_table*, i32)* @legacy_dvb_usb_get_keymap_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_get_keymap_index(%struct.input_keymap_entry* %0, %struct.rc_map_table* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca %struct.rc_map_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.input_keymap_entry* %0, %struct.input_keymap_entry** %5, align 8
  store %struct.rc_map_table* %1, %struct.rc_map_table** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %11 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %18 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %22 = call i64 @input_scancode_to_scalar(%struct.input_keymap_entry* %21, i32* %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.rc_map_table*, %struct.rc_map_table** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %32, i64 %34
  %36 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %27

45:                                               ; preds = %40, %27
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load %struct.rc_map_table*, %struct.rc_map_table** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %55, i64 %57
  %59 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @KEY_RESERVED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.rc_map_table*, %struct.rc_map_table** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %64, i64 %66
  %68 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KEY_UNKNOWN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63, %54
  br label %77

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %50

77:                                               ; preds = %72, %50
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
