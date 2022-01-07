; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_config_res_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_config_res_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, %struct.TYPE_2__*, i32, %struct.ice_vf*, %struct.ice_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vf = type { i32, i32 }
%struct.ice_hw = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"Cannot allocate VF resources, try with fewer number of VFs\0A\00", align 1
@__ICE_OICR_INTR_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"VF-id %d has %d queues configured\0A\00", align 1
@__ICE_VF_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_config_res_vfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_config_res_vfs(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_vf*, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %7 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %7, i32 0, i32 5
  store %struct.ice_hw* %8, %struct.ice_hw** %4, align 8
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = call i64 @ice_check_avail_res(%struct.ice_pf* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load i32, i32* @__ICE_OICR_INTR_DIS, align 4
  %20 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %21 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_and_clear_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %27 = call i32 @ice_irq_dynamic_ena(%struct.ice_hw* %26, i32* null, i32* null)
  br label %28

28:                                               ; preds = %25, %18
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %32 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 4
  %38 = load %struct.ice_vf*, %struct.ice_vf** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %38, i64 %40
  store %struct.ice_vf* %41, %struct.ice_vf** %6, align 8
  %42 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %43 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ice_vf*, %struct.ice_vf** %6, align 8
  %46 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %48 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.ice_vf*, %struct.ice_vf** %6, align 8
  %52 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ice_vf*, %struct.ice_vf** %6, align 8
  %55 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.ice_vf*, %struct.ice_vf** %6, align 8
  %59 = call i32 @ice_cleanup_and_realloc_vf(%struct.ice_vf* %58)
  br label %60

60:                                               ; preds = %35
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %29

63:                                               ; preds = %29
  %64 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %65 = call i32 @ice_flush(%struct.ice_hw* %64)
  %66 = load i32, i32* @__ICE_VF_DIS, align 4
  %67 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %68 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clear_bit(i32 %66, i32 %69)
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @ice_check_avail_res(%struct.ice_pf*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @ice_irq_dynamic_ena(%struct.ice_hw*, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ice_cleanup_and_realloc_vf(%struct.ice_vf*) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
