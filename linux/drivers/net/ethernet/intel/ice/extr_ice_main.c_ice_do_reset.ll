; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, %struct.ice_hw, %struct.TYPE_2__* }
%struct.ice_hw = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"reset_type 0x%x requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reset %d failed\0A\00", align 1
@__ICE_RESET_FAILED = common dso_local global i32 0, align 4
@__ICE_RESET_OICR_RECV = common dso_local global i32 0, align 4
@__ICE_PREPARED_FOR_RESET = common dso_local global i32 0, align 4
@__ICE_PFR_REQ = common dso_local global i32 0, align 4
@__ICE_CORER_REQ = common dso_local global i32 0, align 4
@__ICE_GLOBR_REQ = common dso_local global i32 0, align 4
@ICE_RESET_PFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*, i32)* @ice_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_do_reset(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ice_hw*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 2
  store %struct.ice_hw* %12, %struct.ice_hw** %6, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @in_interrupt()
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %19 = call i32 @ice_prepare_for_reset(%struct.ice_pf* %18)
  %20 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @ice_reset(%struct.ice_hw* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @__ICE_RESET_FAILED, align 4
  %29 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %30 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_bit(i32 %28, i32 %31)
  %33 = load i32, i32* @__ICE_RESET_OICR_RECV, align 4
  %34 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %35 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clear_bit(i32 %33, i32 %36)
  %38 = load i32, i32* @__ICE_PREPARED_FOR_RESET, align 4
  %39 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clear_bit(i32 %38, i32 %41)
  %43 = load i32, i32* @__ICE_PFR_REQ, align 4
  %44 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clear_bit(i32 %43, i32 %46)
  %48 = load i32, i32* @__ICE_CORER_REQ, align 4
  %49 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %50 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clear_bit(i32 %48, i32 %51)
  %53 = load i32, i32* @__ICE_GLOBR_REQ, align 4
  %54 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @clear_bit(i32 %53, i32 %56)
  br label %82

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ICE_RESET_PFR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %64 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ice_rebuild(%struct.ice_pf* %67, i32 %68)
  %70 = load i32, i32* @__ICE_PREPARED_FOR_RESET, align 4
  %71 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %72 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clear_bit(i32 %70, i32 %73)
  %75 = load i32, i32* @__ICE_PFR_REQ, align 4
  %76 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %77 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @clear_bit(i32 %75, i32 %78)
  %80 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %81 = call i32 @ice_reset_all_vfs(%struct.ice_pf* %80, i32 1)
  br label %82

82:                                               ; preds = %24, %62, %58
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @ice_prepare_for_reset(%struct.ice_pf*) #1

declare dso_local i64 @ice_reset(%struct.ice_hw*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ice_rebuild(%struct.ice_pf*, i32) #1

declare dso_local i32 @ice_reset_all_vfs(%struct.ice_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
