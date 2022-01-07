; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_clsu32_add_hnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_clsu32_add_hnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IXGBE_MAX_LINK_HANDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.tc_cls_u32_offload*)* @ixgbe_configure_clsu32_add_hnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_configure_clsu32_add_hnode(%struct.ixgbe_adapter* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  %7 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %8 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @TC_U32_USERHTID(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IXGBE_MAX_LINK_HANDLE, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %20 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i64 %29, i32* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %24, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @TC_U32_USERHTID(i32) #1

declare dso_local i32 @set_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
