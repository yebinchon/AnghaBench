; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_readBSSListRid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_readBSSListRid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@FLAG_RADIO_MASK = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@CMD_LISTBSS = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i32*)* @readBSSListRid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readBSSListRid(%struct.airo_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %14 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FLAG_RADIO_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @ENETDOWN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %12
  %23 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 4)
  %24 = load i32, i32* @CMD_LISTBSS, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %27 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %26, i32 0, i32 5
  %28 = call i64 @down_interruptible(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %22
  %34 = load i32*, i32** @current, align 8
  %35 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %36 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %38 = call i32 @issuecommand(%struct.airo_info* %37, %struct.TYPE_4__* %8, i32* %9)
  %39 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %40 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %39, i32 0, i32 5
  %41 = call i32 @up(i32* %40)
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 3, %42
  %44 = call i32 @schedule_timeout_uninterruptible(i32 %43)
  %45 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %33, %3
  %48 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %53 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %57 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %63 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @PC4500_readrid(%struct.airo_info* %48, i32 %60, i32* %61, i32 %64, i32 1)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %30, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @issuecommand(%struct.airo_info*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @PC4500_readrid(%struct.airo_info*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
