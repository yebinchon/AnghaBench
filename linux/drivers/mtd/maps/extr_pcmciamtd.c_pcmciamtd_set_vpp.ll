; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_set_vpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.pcmciamtd_dev = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"dev = %p on = %d vpp = %d\0A\0A\00", align 1
@pcmcia_vpp_lock = common dso_local global i32 0, align 4
@pcmcia_vpp_refcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @pcmciamtd_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmciamtd_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmciamtd_dev*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.map_info*, %struct.map_info** %3, align 8
  %9 = getelementptr inbounds %struct.map_info, %struct.map_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.pcmciamtd_dev*
  store %struct.pcmciamtd_dev* %11, %struct.pcmciamtd_dev** %5, align 8
  %12 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %12, i32 0, i32 1
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %13, align 8
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %6, align 8
  %15 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %18 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.pcmciamtd_dev* %15, i32 %16, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @pcmcia_vpp_lock, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @pcmcia_vpp_refcnt, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @pcmcia_vpp_refcnt, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %31 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pcmcia_fixup_vpp(%struct.pcmcia_device* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @pcmcia_vpp_refcnt, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @pcmcia_vpp_refcnt, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %42 = call i32 @pcmcia_fixup_vpp(%struct.pcmcia_device* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @pcmcia_vpp_lock, i64 %45)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.pcmciamtd_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcmcia_fixup_vpp(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
