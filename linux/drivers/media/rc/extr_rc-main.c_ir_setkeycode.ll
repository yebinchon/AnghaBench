; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_setkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32, i32 }
%struct.rc_dev = type { %struct.rc_map }
%struct.rc_map = type { i32, i32 }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @ir_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_setkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca %struct.rc_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = call %struct.rc_dev* @input_get_drvdata(%struct.input_dev* %13)
  store %struct.rc_dev* %14, %struct.rc_dev** %7, align 8
  %15 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %16 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %15, i32 0, i32 0
  store %struct.rc_map* %16, %struct.rc_map** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %18 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %17, i32 0, i32 1
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %22 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %29 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %33 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %69

39:                                               ; preds = %27
  br label %60

40:                                               ; preds = %3
  %41 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %42 = call i32 @input_scancode_to_scalar(%struct.input_keymap_entry* %41, i32* %10)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %69

46:                                               ; preds = %40
  %47 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %48 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ir_establish_scancode(%struct.rc_dev* %47, %struct.rc_map* %48, i32 %49, i32 1)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %53 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %69

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %62 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %65 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ir_update_mapping(%struct.rc_dev* %61, %struct.rc_map* %62, i32 %63, i32 %66)
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %60, %56, %45, %36
  %70 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %71 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %70, i32 0, i32 1
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local %struct.rc_dev* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @ir_establish_scancode(%struct.rc_dev*, %struct.rc_map*, i32, i32) #1

declare dso_local i32 @ir_update_mapping(%struct.rc_dev*, %struct.rc_map*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
