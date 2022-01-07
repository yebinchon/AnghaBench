; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_disable_MAC.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_disable_MAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FLAG_ENABLED = common dso_local global i32 0, align 4
@MAC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*, i32)* @disable_MAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_MAC(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 0
  %12 = call i64 @down_interruptible(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %46

15:                                               ; preds = %9, %2
  %16 = load i32, i32* @FLAG_ENABLED, align 4
  %17 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %18 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %26 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_carrier_off(i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 4)
  %31 = load i32, i32* @MAC_DISABLE, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %34 = call i32 @issuecommand(%struct.airo_info* %33, %struct.TYPE_4__* %5, i32* %6)
  %35 = load i32, i32* @FLAG_ENABLED, align 4
  %36 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %29, %15
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %44 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %43, i32 0, i32 0
  %45 = call i32 @up(i32* %44)
  br label %46

46:                                               ; preds = %14, %42, %39
  ret void
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @issuecommand(%struct.airo_info*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
