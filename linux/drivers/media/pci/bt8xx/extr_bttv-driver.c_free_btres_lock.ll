; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_free_btres_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_free_btres_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.bttv_fh = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"BUG! (btres)\0A\00", align 1
@VIDEO_RESOURCES = common dso_local global i32 0, align 4
@VBI_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_fh*, i32)* @free_btres_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_btres_lock(%struct.bttv* %0, %struct.bttv_fh* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.bttv_fh*, align 8
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.bttv_fh* %1, %struct.bttv_fh** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %8 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.bttv_fh*, %struct.bttv_fh** %5, align 8
  %20 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.bttv*, %struct.bttv** %4, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.bttv*, %struct.bttv** %4, align 8
  %30 = getelementptr inbounds %struct.bttv, %struct.bttv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VIDEO_RESOURCES, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %16
  %37 = load %struct.bttv*, %struct.bttv** %4, align 8
  %38 = call i32 @disclaim_video_lines(%struct.bttv* %37)
  br label %39

39:                                               ; preds = %36, %16
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @VBI_RESOURCES, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 0, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.bttv*, %struct.bttv** %4, align 8
  %46 = call i32 @disclaim_vbi_lines(%struct.bttv* %45)
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @disclaim_video_lines(%struct.bttv*) #1

declare dso_local i32 @disclaim_vbi_lines(%struct.bttv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
