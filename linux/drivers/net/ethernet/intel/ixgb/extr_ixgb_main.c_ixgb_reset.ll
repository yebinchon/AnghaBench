; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, %struct.ixgb_hw }
%struct.ixgb_hw = type { i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ixgb_init_hw failed\0A\00", align 1
@MFS = common dso_local global i32 0, align 4
@IXGB_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS = common dso_local global i32 0, align 4
@ENET_FCS_LENGTH = common dso_local global i32 0, align 4
@CTRL0 = common dso_local global i32 0, align 4
@IXGB_CTRL0_JFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_reset(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %5 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %5, i32 0, i32 1
  store %struct.ixgb_hw* %6, %struct.ixgb_hw** %3, align 8
  %7 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %8 = call i32 @ixgb_adapter_stop(%struct.ixgb_hw* %7)
  %9 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %10 = call i32 @ixgb_init_hw(%struct.ixgb_hw* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %14 = load i32, i32* @probe, align 4
  %15 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_err(%struct.ixgb_adapter* %13, i32 %14, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %21 = load i32, i32* @MFS, align 4
  %22 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IXGB_MFS_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %20, i32 %21, i32 %26)
  %28 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS, align 4
  %32 = load i32, i32* @ENET_FCS_LENGTH, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %19
  %36 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %37 = load i32, i32* @CTRL0, align 4
  %38 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %48 = load i32, i32* @CTRL0, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  br label %52

52:                                               ; preds = %51, %19
  ret void
}

declare dso_local i32 @ixgb_adapter_stop(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_init_hw(%struct.ixgb_hw*) #1

declare dso_local i32 @netif_err(%struct.ixgb_adapter*, i32, i32, i8*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
