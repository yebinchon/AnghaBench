; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_flower_tun_is_gre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_flower_tun_is_gre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64, i32 }

@FLOW_ACTION_REDIRECT = common dso_local global i64 0, align 8
@FLOW_ACTION_MIRRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, i32)* @nfp_flower_tun_is_gre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_tun_is_gre(%struct.flow_cls_offload* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_action_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %10 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.flow_action_entry*, %struct.flow_action_entry** %13, align 8
  store %struct.flow_action_entry* %14, %struct.flow_action_entry** %6, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %16 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %54, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %28, i64 %30
  %32 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FLOW_ACTION_REDIRECT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FLOW_ACTION_MIRRED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36, %27
  %46 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %46, i64 %48
  %50 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_is_gretap(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %23

57:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @netif_is_gretap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
