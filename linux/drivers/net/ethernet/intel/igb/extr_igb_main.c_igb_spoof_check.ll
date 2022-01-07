; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_spoof_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_spoof_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IGB_STAGGERED_QUEUE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Spoof event(s) detected on VF %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_spoof_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_spoof_check(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %4 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %57

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %54, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IGB_STAGGERED_QUEUE_OFFSET, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %24, %16
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @IGB_STAGGERED_QUEUE_OFFSET, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @BIT(i32 %45)
  %47 = or i32 %42, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %34, %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %10

57:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
