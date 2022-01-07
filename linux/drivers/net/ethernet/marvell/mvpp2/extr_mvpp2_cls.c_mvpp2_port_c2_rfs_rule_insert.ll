; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_port_c2_rfs_rule_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_port_c2_rfs_rule_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_rfs_rule = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_rfs_rule*)* @mvpp2_port_c2_rfs_rule_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_port_c2_rfs_rule_insert(%struct.mvpp2_port* %0, %struct.mvpp2_rfs_rule* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_rfs_rule*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store %struct.mvpp2_rfs_rule* %1, %struct.mvpp2_rfs_rule** %4, align 8
  %5 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %6 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %4, align 8
  %7 = call i32 @mvpp2_port_c2_tcam_rule_add(%struct.mvpp2_port* %5, %struct.mvpp2_rfs_rule* %6)
  ret i32 %7
}

declare dso_local i32 @mvpp2_port_c2_tcam_rule_add(%struct.mvpp2_port*, %struct.mvpp2_rfs_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
