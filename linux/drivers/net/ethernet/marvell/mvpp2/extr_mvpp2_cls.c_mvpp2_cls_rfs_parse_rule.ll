; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_rfs_parse_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_rfs_parse_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_rfs_rule = type { i32, %struct.flow_rule* }
%struct.flow_rule = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@FLOW_ACTION_QUEUE = common dso_local global i64 0, align 8
@FLOW_ACTION_DROP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MVPP22_CLS_ENGINE_C2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_rfs_rule*)* @mvpp2_cls_rfs_parse_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_cls_rfs_parse_rule(%struct.mvpp2_rfs_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_rfs_rule*, align 8
  %4 = alloca %struct.flow_rule*, align 8
  %5 = alloca %struct.flow_action_entry*, align 8
  store %struct.mvpp2_rfs_rule* %0, %struct.mvpp2_rfs_rule** %3, align 8
  %6 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %7 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %6, i32 0, i32 1
  %8 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  store %struct.flow_rule* %8, %struct.flow_rule** %4, align 8
  %9 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %10 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.flow_action_entry*, %struct.flow_action_entry** %11, align 8
  %13 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %12, i64 0
  store %struct.flow_action_entry* %13, %struct.flow_action_entry** %5, align 8
  %14 = load %struct.flow_action_entry*, %struct.flow_action_entry** %5, align 8
  %15 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FLOW_ACTION_QUEUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.flow_action_entry*, %struct.flow_action_entry** %5, align 8
  %21 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FLOW_ACTION_DROP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %19, %1
  %29 = load %struct.flow_action_entry*, %struct.flow_action_entry** %5, align 8
  %30 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.flow_action_entry*, %struct.flow_action_entry** %5, align 8
  %36 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %34, %28
  %44 = load i32, i32* @MVPP22_CLS_ENGINE_C2, align 4
  %45 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %46 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %48 = call i64 @mvpp2_cls_c2_build_match(%struct.mvpp2_rfs_rule* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %40, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @mvpp2_cls_c2_build_match(%struct.mvpp2_rfs_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
