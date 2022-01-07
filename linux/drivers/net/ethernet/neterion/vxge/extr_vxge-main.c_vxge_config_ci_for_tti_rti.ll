; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_config_ci_for_tti_rti.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_config_ci_for_tti_rti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.__vxge_hw_fifo* }
%struct.__vxge_hw_fifo = type { i32 }
%struct.TYPE_5__ = type { %struct.__vxge_hw_ring* }
%struct.__vxge_hw_ring = type { i32 }

@MSI_X = common dso_local global i64 0, align 8
@INTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*)* @vxge_config_ci_for_tti_rti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_config_ci_for_tti_rti(%struct.vxgedev* %0) #0 {
  %2 = alloca %struct.vxgedev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.__vxge_hw_ring*, align 8
  %5 = alloca %struct.__vxge_hw_fifo*, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %7 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MSI_X, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %16 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %21 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %27, align 8
  store %struct.__vxge_hw_ring* %28, %struct.__vxge_hw_ring** %4, align 8
  %29 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %4, align 8
  %30 = call i32 @vxge_hw_vpath_dynamic_rti_ci_set(%struct.__vxge_hw_ring* %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %13

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %1
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %39 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %44 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %50, align 8
  store %struct.__vxge_hw_fifo* %51, %struct.__vxge_hw_fifo** %5, align 8
  %52 = load %struct.__vxge_hw_fifo*, %struct.__vxge_hw_fifo** %5, align 8
  %53 = call i32 @vxge_hw_vpath_tti_ci_set(%struct.__vxge_hw_fifo* %52)
  %54 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %55 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INTA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %68

64:                                               ; preds = %60, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %36

68:                                               ; preds = %63, %36
  ret void
}

declare dso_local i32 @vxge_hw_vpath_dynamic_rti_ci_set(%struct.__vxge_hw_ring*) #1

declare dso_local i32 @vxge_hw_vpath_tti_ci_set(%struct.__vxge_hw_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
