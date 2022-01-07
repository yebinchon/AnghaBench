; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_flow_entry = type { i32, %struct.tun_struct*, i32, i64, i32, i32 }
%struct.tun_struct = type { i32 }
%struct.hlist_head = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"create flow: hash %u index %u\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tun_flow_entry* (%struct.tun_struct*, %struct.hlist_head*, i32, i32)* @tun_flow_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tun_flow_entry* @tun_flow_create(%struct.tun_struct* %0, %struct.hlist_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tun_struct*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tun_flow_entry*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %5, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.tun_flow_entry* @kmalloc(i32 40, i32 %10)
  store %struct.tun_flow_entry* %11, %struct.tun_flow_entry** %9, align 8
  %12 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %13 = icmp ne %struct.tun_flow_entry* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %4
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @tun_debug(i32 %15, %struct.tun_struct* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %22 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %25 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %27 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %30 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %32 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %33 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %32, i32 0, i32 1
  store %struct.tun_struct* %31, %struct.tun_struct** %33, align 8
  %34 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  %35 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %34, i32 0, i32 0
  %36 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %37 = call i32 @hlist_add_head_rcu(i32* %35, %struct.hlist_head* %36)
  %38 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %39 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %14, %4
  %43 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %9, align 8
  ret %struct.tun_flow_entry* %43
}

declare dso_local %struct.tun_flow_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @tun_debug(i32, %struct.tun_struct*, i8*, i32, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
