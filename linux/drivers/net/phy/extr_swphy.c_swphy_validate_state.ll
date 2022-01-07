; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_swphy.c_swphy_validate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_swphy.c_swphy_validate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed_phy_status = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"swphy: unknown speed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swphy_validate_state(%struct.fixed_phy_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fixed_phy_status*, align 8
  %4 = alloca i32, align 4
  store %struct.fixed_phy_status* %0, %struct.fixed_phy_status** %3, align 8
  %5 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %3, align 8
  %6 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %3, align 8
  %11 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @swphy_decode_speed(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @swphy_decode_speed(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
