; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_close_vpaths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_close_vpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.TYPE_2__, %struct.vxge_vpath* }
%struct.TYPE_2__ = type { i32 }
%struct.vxge_vpath = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*, i32)* @vxge_close_vpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_close_vpaths(%struct.vxgedev* %0, i32 %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_vpath*, align 8
  %6 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %16 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %15, i32 0, i32 2
  %17 = load %struct.vxge_vpath*, %struct.vxge_vpath** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %17, i64 %19
  store %struct.vxge_vpath* %20, %struct.vxge_vpath** %5, align 8
  %21 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %22 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  %26 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %27 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %32 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @vxge_hw_vpath_close(i32* %33)
  %35 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %36 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %30, %25, %14
  %41 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %42 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.vxge_vpath*, %struct.vxge_vpath** %5, align 8
  %44 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i32 @vxge_hw_vpath_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
