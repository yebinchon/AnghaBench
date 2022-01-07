; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_dst_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_dst_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }
%struct.vxlan_rdst = type { i32, i32 }

@RTM_DELNEIGH = common dso_local global i32 0, align 4
@vxlan_dst_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32)* @vxlan_fdb_dst_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_dst_destroy(%struct.vxlan_dev* %0, %struct.vxlan_fdb* %1, %struct.vxlan_rdst* %2, i32 %3) #0 {
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.vxlan_fdb*, align 8
  %7 = alloca %struct.vxlan_rdst*, align 8
  %8 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %5, align 8
  store %struct.vxlan_fdb* %1, %struct.vxlan_fdb** %6, align 8
  store %struct.vxlan_rdst* %2, %struct.vxlan_rdst** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %10 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %9, i32 0, i32 1
  %11 = call i32 @list_del_rcu(i32* %10)
  %12 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %13 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %6, align 8
  %14 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %15 = load i32, i32* @RTM_DELNEIGH, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %12, %struct.vxlan_fdb* %13, %struct.vxlan_rdst* %14, i32 %15, i32 %16, i32* null)
  %18 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %19 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %18, i32 0, i32 0
  %20 = load i32, i32* @vxlan_dst_free, align 4
  %21 = call i32 @call_rcu(i32* %19, i32 %20)
  ret void
}

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32, i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
