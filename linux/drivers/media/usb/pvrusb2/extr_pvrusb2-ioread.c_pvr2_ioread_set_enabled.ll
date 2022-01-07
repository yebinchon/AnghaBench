; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_set_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_ioread_set_enabled(%struct.pvr2_ioread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ioread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %10, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %22 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %29 = call i32 @pvr2_ioread_start(%struct.pvr2_ioread* %28)
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %32 = call i32 @pvr2_ioread_stop(%struct.pvr2_ioread* %31)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %4, align 8
  %36 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_ioread_start(%struct.pvr2_ioread*) #1

declare dso_local i32 @pvr2_ioread_stop(%struct.pvr2_ioread*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
