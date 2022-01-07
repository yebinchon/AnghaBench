; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_rule_offload_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_ocelot_ace_rule_offload_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocelot_ace_rule = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@acl_block = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_ace_rule_offload_del(%struct.ocelot_ace_rule* %0) #0 {
  %2 = alloca %struct.ocelot_ace_rule*, align 8
  %3 = alloca %struct.ocelot_ace_rule, align 8
  %4 = alloca %struct.ocelot_ace_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocelot_ace_rule* %0, %struct.ocelot_ace_rule** %2, align 8
  %7 = call i32 @memset(%struct.ocelot_ace_rule* %3, i32 0, i32 8)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %9 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %10 = call i32 @ocelot_ace_rule_get_index_id(%struct.TYPE_7__* %8, %struct.ocelot_ace_rule* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %12 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %13 = call i32 @ocelot_ace_rule_del(%struct.TYPE_7__* %11, %struct.ocelot_ace_rule* %12)
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.ocelot_ace_rule* @ocelot_ace_rule_get_rule_index(%struct.TYPE_7__* %22, i32 %23)
  store %struct.ocelot_ace_rule* %24, %struct.ocelot_ace_rule** %4, align 8
  %25 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %26 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %4, align 8
  %32 = call i32 @is2_entry_set(i32 %29, i32 %30, %struct.ocelot_ace_rule* %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %2, align 8
  %38 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @acl_block, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @is2_entry_set(i32 %41, i32 %44, %struct.ocelot_ace_rule* %3)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ocelot_ace_rule*, i32, i32) #1

declare dso_local i32 @ocelot_ace_rule_get_index_id(%struct.TYPE_7__*, %struct.ocelot_ace_rule*) #1

declare dso_local i32 @ocelot_ace_rule_del(%struct.TYPE_7__*, %struct.ocelot_ace_rule*) #1

declare dso_local %struct.ocelot_ace_rule* @ocelot_ace_rule_get_rule_index(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @is2_entry_set(i32, i32, %struct.ocelot_ace_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
