; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_check_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_check_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@XPCSS = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IXGB_XPCSS_ALIGN_STATUS = common dso_local global i32 0, align 4
@IXGB_STATUS_LU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"XPCSS Not Aligned while Status:LU is set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_check_for_link(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %5 = call i32 (...) @ENTER()
  %6 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %7 = load i32, i32* @XPCSS, align 4
  %8 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %10 = load i32, i32* @STATUS, align 4
  %11 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IXGB_XPCSS_ALIGN_STATUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IXGB_STATUS_LU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %48

24:                                               ; preds = %16, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IXGB_XPCSS_ALIGN_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IXGB_STATUS_LU, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %37 = call i8* @ixgb_link_reset(%struct.ixgb_hw* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %47

41:                                               ; preds = %29, %24
  %42 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %43 = call i8* @ixgb_link_reset(%struct.ixgb_hw* %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %46 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47, %21
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @ixgb_link_reset(%struct.ixgb_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
