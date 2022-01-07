; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_filter_field_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_filter_field_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FT_FCOE_W = common dso_local global i32 0, align 4
@FT_PORT_W = common dso_local global i32 0, align 4
@FT_VNIC_ID_W = common dso_local global i32 0, align 4
@FT_VLAN_W = common dso_local global i32 0, align 4
@FT_TOS_W = common dso_local global i32 0, align 4
@FT_PROTOCOL_W = common dso_local global i32 0, align 4
@FT_ETHERTYPE_W = common dso_local global i32 0, align 4
@FT_MACMATCH_W = common dso_local global i32 0, align 4
@FT_MPSHITTYPE_W = common dso_local global i32 0, align 4
@FT_FRAGMENTATION_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_filter_field_shift(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %69, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %68 [
    i32 136, label %28
    i32 132, label %32
    i32 128, label %36
    i32 129, label %40
    i32 130, label %44
    i32 131, label %48
    i32 137, label %52
    i32 134, label %56
    i32 133, label %60
    i32 135, label %64
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @FT_FCOE_W, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %68

32:                                               ; preds = %24
  %33 = load i32, i32* @FT_PORT_W, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %68

36:                                               ; preds = %24
  %37 = load i32, i32* @FT_VNIC_ID_W, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %68

40:                                               ; preds = %24
  %41 = load i32, i32* @FT_VLAN_W, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %68

44:                                               ; preds = %24
  %45 = load i32, i32* @FT_TOS_W, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %68

48:                                               ; preds = %24
  %49 = load i32, i32* @FT_PROTOCOL_W, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %68

52:                                               ; preds = %24
  %53 = load i32, i32* @FT_ETHERTYPE_W, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %68

56:                                               ; preds = %24
  %57 = load i32, i32* @FT_MACMATCH_W, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %68

60:                                               ; preds = %24
  %61 = load i32, i32* @FT_MPSHITTYPE_W, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %24
  %65 = load i32, i32* @FT_FRAGMENTATION_W, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %24, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %20

72:                                               ; preds = %20
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
