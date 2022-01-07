; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_rule_offload_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_rule_offload_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocelot_ace_rule = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@acl_block = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_ace_rule_offload_add(%struct.ocelot_ace_rule* %0) #0 {
  %2 = alloca %struct.ocelot_ace_rule*, align 8
  %3 = alloca %struct.ocelot_ace_rule*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocelot_ace_rule* %0, %struct.ocelot_ace_rule** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %7 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %8 = call i32 @ocelot_ace_rule_add(%struct.TYPE_7__* %6, %struct.ocelot_ace_rule* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %10 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %11 = call i32 @ocelot_ace_rule_get_index_id(%struct.TYPE_7__* %9, %struct.ocelot_ace_rule* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.ocelot_ace_rule* @ocelot_ace_rule_get_rule_index(%struct.TYPE_7__* %21, i32 %22)
  store %struct.ocelot_ace_rule* %23, %struct.ocelot_ace_rule** %3, align 8
  %24 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %25 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %3, align 8
  %31 = call i32 @is2_entry_set(i32 %28, i32 %29, %struct.ocelot_ace_rule* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %37 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %43 = call i32 @is2_entry_set(i32 %40, i32 %41, %struct.ocelot_ace_rule* %42)
  ret i32 0
}

declare dso_local i32 @ocelot_ace_rule_add(%struct.TYPE_7__*, %struct.ocelot_ace_rule*) #1

declare dso_local i32 @ocelot_ace_rule_get_index_id(%struct.TYPE_7__*, %struct.ocelot_ace_rule*) #1

declare dso_local %struct.ocelot_ace_rule* @ocelot_ace_rule_get_rule_index(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @is2_entry_set(i32, i32, %struct.ocelot_ace_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
