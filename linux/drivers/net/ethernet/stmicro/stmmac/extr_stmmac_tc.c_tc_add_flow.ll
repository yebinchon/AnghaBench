; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*, %struct.stmmac_flow_entry*)* }
%struct.stmmac_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.stmmac_flow_entry = type { i32, i32 }
%struct.flow_rule = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@tc_flow_parsers = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*)* @tc_add_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_add_flow(%struct.stmmac_priv* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.stmmac_flow_entry*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %10 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %11 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %12 = call %struct.stmmac_flow_entry* @tc_find_flow(%struct.stmmac_priv* %10, %struct.flow_cls_offload* %11, i32 0)
  store %struct.stmmac_flow_entry* %12, %struct.stmmac_flow_entry** %6, align 8
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %14 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %13)
  store %struct.flow_rule* %14, %struct.flow_rule** %7, align 8
  %15 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %16 = icmp ne %struct.stmmac_flow_entry* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %19 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %20 = call %struct.stmmac_flow_entry* @tc_find_flow(%struct.stmmac_priv* %18, %struct.flow_cls_offload* %19, i32 1)
  store %struct.stmmac_flow_entry* %20, %struct.stmmac_flow_entry** %6, align 8
  %21 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %22 = icmp ne %struct.stmmac_flow_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %29 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %30 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %29, i32 0, i32 0
  %31 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %32 = call i32 @tc_parse_flow_actions(%struct.stmmac_priv* %28, i32* %30, %struct.stmmac_flow_entry* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %77

37:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tc_flow_parsers, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tc_flow_parsers, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*, %struct.stmmac_flow_entry*)*, i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*, %struct.stmmac_flow_entry*)** %48, align 8
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %51 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %52 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %53 = call i32 %49(%struct.stmmac_priv* %50, %struct.flow_cls_offload* %51, %struct.stmmac_flow_entry* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %58 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %65 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %63
  %72 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %73 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %6, align 8
  %76 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %68, %35, %23
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.stmmac_flow_entry* @tc_find_flow(%struct.stmmac_priv*, %struct.flow_cls_offload*, i32) #1

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @tc_parse_flow_actions(%struct.stmmac_priv*, i32*, %struct.stmmac_flow_entry*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
