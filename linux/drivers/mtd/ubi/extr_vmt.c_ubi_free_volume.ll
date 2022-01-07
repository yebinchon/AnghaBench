; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_ubi_free_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_ubi_free_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32** }
%struct.ubi_volume = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"free volume %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_free_volume(%struct.ubi_device* %0, %struct.ubi_volume* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %4, align 8
  %5 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %6 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @dbg_gen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32*, i32** %11, i64 %14
  store i32* null, i32** %15, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 2
  %18 = call i32 @cdev_del(i32* %17)
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 1
  %21 = call i32 @device_unregister(i32* %20)
  ret void
}

declare dso_local i32 @dbg_gen(i8*, i64) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
