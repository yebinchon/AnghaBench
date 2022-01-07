; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_getkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32, i32, i32, i32 }
%struct.rc_dev = type { %struct.rc_map }
%struct.rc_map = type { i32, i32, %struct.rc_map_table* }
%struct.rc_map_table = type { i32, i32 }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @ir_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_getkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.input_keymap_entry*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca %struct.rc_map*, align 8
  %7 = alloca %struct.rc_map_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %4, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = call %struct.rc_dev* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.rc_dev* %13, %struct.rc_dev** %5, align 8
  %14 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 0
  store %struct.rc_map* %15, %struct.rc_map** %6, align 8
  %16 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %17 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %21 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %28 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %32 = call i32 @input_scancode_to_scalar(%struct.input_keymap_entry* %31, i32* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %88

36:                                               ; preds = %30
  %37 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ir_lookup_by_scancode(%struct.rc_map* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %43 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %40
  %47 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %48 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %47, i32 0, i32 2
  %49 = load %struct.rc_map_table*, %struct.rc_map_table** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %49, i64 %51
  store %struct.rc_map_table* %52, %struct.rc_map_table** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %55 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.rc_map_table*, %struct.rc_map_table** %7, align 8
  %57 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %60 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %62 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %61, i32 0, i32 2
  store i32 4, i32* %62, align 4
  %63 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %64 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rc_map_table*, %struct.rc_map_table** %7, align 8
  %67 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %66, i32 0, i32 0
  %68 = call i32 @memcpy(i32 %65, i32* %67, i32 4)
  br label %87

69:                                               ; preds = %40
  %70 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %71 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %79 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @KEY_RESERVED, align 4
  %81 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %4, align 8
  %82 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %69
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %88

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %46
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %83, %35
  %89 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %90 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %89, i32 0, i32 1
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local %struct.rc_dev* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @ir_lookup_by_scancode(%struct.rc_map*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
