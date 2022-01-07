; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_setkeytable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_setkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.rc_map }
%struct.rc_map = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_map*)* @ir_setkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_setkeytable(%struct.rc_dev* %0, %struct.rc_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.rc_map*, align 8
  %6 = alloca %struct.rc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.rc_map* %1, %struct.rc_map** %5, align 8
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  store %struct.rc_map* %11, %struct.rc_map** %6, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %13 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %14 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %15 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %18 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %21 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ir_create_table(%struct.rc_dev* %12, %struct.rc_map* %13, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %68, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %32 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %29
  %36 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %37 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %38 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %39 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ir_establish_scancode(%struct.rc_dev* %36, %struct.rc_map* %37, i32 %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %49 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %71

55:                                               ; preds = %35
  %56 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %57 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.rc_map*, %struct.rc_map** %5, align 8
  %60 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ir_update_mapping(%struct.rc_dev* %56, %struct.rc_map* %57, i32 %58, i32 %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %29

71:                                               ; preds = %52, %29
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %76 = call i32 @ir_free_table(%struct.rc_map* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %26
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ir_create_table(%struct.rc_dev*, %struct.rc_map*, i32, i32, i32) #1

declare dso_local i32 @ir_establish_scancode(%struct.rc_dev*, %struct.rc_map*, i32, i32) #1

declare dso_local i32 @ir_update_mapping(%struct.rc_dev*, %struct.rc_map*, i32, i32) #1

declare dso_local i32 @ir_free_table(%struct.rc_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
