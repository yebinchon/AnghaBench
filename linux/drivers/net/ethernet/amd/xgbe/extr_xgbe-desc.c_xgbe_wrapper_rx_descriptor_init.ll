; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_wrapper_rx_descriptor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_wrapper_rx_descriptor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_channel**, %struct.xgbe_hw_if }
%struct.xgbe_channel = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { i32, i32, i64, i64, %struct.xgbe_ring_desc* }
%struct.xgbe_ring_desc = type { i32 }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_channel.0*)* }
%struct.xgbe_channel.0 = type opaque
%struct.xgbe_ring_data = type { i32, %struct.xgbe_ring_desc* }

@.str = private unnamed_addr constant [36 x i8] c"-->xgbe_wrapper_rx_descriptor_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"<--xgbe_wrapper_rx_descriptor_init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_wrapper_rx_descriptor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_wrapper_rx_descriptor_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_hw_if*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca %struct.xgbe_ring*, align 8
  %6 = alloca %struct.xgbe_ring_desc*, align 8
  %7 = alloca %struct.xgbe_ring_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 2
  store %struct.xgbe_hw_if* %12, %struct.xgbe_hw_if** %3, align 8
  %13 = call i32 @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %84, %1
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %14
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 1
  %23 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %23, i64 %25
  %27 = load %struct.xgbe_channel*, %struct.xgbe_channel** %26, align 8
  store %struct.xgbe_channel* %27, %struct.xgbe_channel** %4, align 8
  %28 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %28, i32 0, i32 0
  %30 = load %struct.xgbe_ring*, %struct.xgbe_ring** %29, align 8
  store %struct.xgbe_ring* %30, %struct.xgbe_ring** %5, align 8
  %31 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %32 = icmp ne %struct.xgbe_ring* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %87

34:                                               ; preds = %20
  %35 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %36 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %35, i32 0, i32 4
  %37 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %36, align 8
  store %struct.xgbe_ring_desc* %37, %struct.xgbe_ring_desc** %6, align 8
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %70, %34
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %44 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %48, i32 %49)
  store %struct.xgbe_ring_data* %50, %struct.xgbe_ring_data** %7, align 8
  %51 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %52 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %53 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %52, i32 0, i32 1
  store %struct.xgbe_ring_desc* %51, %struct.xgbe_ring_desc** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %56 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %59 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %7, align 8
  %60 = call i64 @xgbe_map_rx_buffer(%struct.xgbe_prv_data* %57, %struct.xgbe_ring* %58, %struct.xgbe_ring_data* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %73

63:                                               ; preds = %47
  %64 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %6, align 8
  %65 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %64, i32 1
  store %struct.xgbe_ring_desc* %65, %struct.xgbe_ring_desc** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %41

73:                                               ; preds = %62, %41
  %74 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %75 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.xgbe_ring*, %struct.xgbe_ring** %5, align 8
  %77 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %3, align 8
  %79 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %78, i32 0, i32 0
  %80 = load i32 (%struct.xgbe_channel.0*)*, i32 (%struct.xgbe_channel.0*)** %79, align 8
  %81 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %82 = bitcast %struct.xgbe_channel* %81 to %struct.xgbe_channel.0*
  %83 = call i32 %80(%struct.xgbe_channel.0* %82)
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %14

87:                                               ; preds = %33, %14
  %88 = call i32 @DBGPR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i64 @xgbe_map_rx_buffer(%struct.xgbe_prv_data*, %struct.xgbe_ring*, %struct.xgbe_ring_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
