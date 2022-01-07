; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }
%struct.tun_flow_entry = type { i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"delete flow: hash %u index %u\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, %struct.tun_flow_entry*)* @tun_flow_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_flow_delete(%struct.tun_struct* %0, %struct.tun_flow_entry* %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca %struct.tun_flow_entry*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store %struct.tun_flow_entry* %1, %struct.tun_flow_entry** %4, align 8
  %5 = load i32, i32* @KERN_INFO, align 4
  %6 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %7 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %4, align 8
  %8 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %4, align 8
  %11 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tun_debug(i32 %5, %struct.tun_struct* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %4, align 8
  %15 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %14, i32 0, i32 0
  %16 = call i32 @hlist_del_rcu(i32* %15)
  %17 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %4, align 8
  %18 = load i32, i32* @rcu, align 4
  %19 = call i32 @kfree_rcu(%struct.tun_flow_entry* %17, i32 %18)
  %20 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %21 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @tun_debug(i32, %struct.tun_struct*, i8*, i32, i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tun_flow_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
