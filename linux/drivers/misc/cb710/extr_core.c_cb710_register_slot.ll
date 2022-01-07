; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_register_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_register_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_chip = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, %struct.cb710_slot* }
%struct.TYPE_5__ = type { i32 }
%struct.cb710_slot = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [54 x i8] c"register: %s.%d; slot %d; mask %d; IO offset: 0x%02X\0A\00", align 1
@cb710_release_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_chip*, i32, i32, i8*)* @cb710_register_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_register_slot(%struct.cb710_chip* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cb710_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cb710_slot*, align 8
  %12 = alloca i32, align 4
  store %struct.cb710_chip* %0, %struct.cb710_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %14 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %17 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %16, i32 0, i32 6
  %18 = load %struct.cb710_slot*, %struct.cb710_slot** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %18, i64 %20
  store %struct.cb710_slot* %21, %struct.cb710_slot** %11, align 8
  %22 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %23 = call i32 @cb710_chip_dev(%struct.cb710_chip* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %26 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %33 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = call i32 (...) @smp_wmb()
  %37 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %38 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %39, %40
  %42 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %43 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %46 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %49 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %52 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %55 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %59 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32* %57, i32** %61, align 8
  %62 = load i32, i32* @cb710_release_slot, align 4
  %63 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %64 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %68 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %67, i32 0, i32 1
  %69 = call i32 @platform_device_register(%struct.TYPE_7__* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %4
  %73 = load %struct.cb710_slot*, %struct.cb710_slot** %11, align 8
  %74 = getelementptr inbounds %struct.cb710_slot, %struct.cb710_slot* %73, i32 0, i32 1
  %75 = call i32 @platform_device_put(%struct.TYPE_7__* %74)
  %76 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %77 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %87

81:                                               ; preds = %4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.cb710_chip*, %struct.cb710_chip** %6, align 8
  %84 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %72
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cb710_chip_dev(%struct.cb710_chip*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
