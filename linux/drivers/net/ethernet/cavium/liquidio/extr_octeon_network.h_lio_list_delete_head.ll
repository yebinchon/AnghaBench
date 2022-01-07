; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_network.h_lio_list_delete_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_network.h_lio_list_delete_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (%struct.list_head*)* @lio_list_delete_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @lio_list_delete_head(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %4 = load %struct.list_head*, %struct.list_head** %2, align 8
  %5 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1
  %6 = load %struct.list_head*, %struct.list_head** %5, align 8
  %7 = load %struct.list_head*, %struct.list_head** %2, align 8
  %8 = icmp eq %struct.list_head* %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.list_head*, %struct.list_head** %2, align 8
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  %13 = load %struct.list_head*, %struct.list_head** %2, align 8
  %14 = icmp eq %struct.list_head* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store %struct.list_head* null, %struct.list_head** %3, align 8
  br label %20

16:                                               ; preds = %9, %1
  %17 = load %struct.list_head*, %struct.list_head** %2, align 8
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  store %struct.list_head* %19, %struct.list_head** %3, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.list_head*, %struct.list_head** %3, align 8
  %22 = icmp ne %struct.list_head* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.list_head*, %struct.list_head** %3, align 8
  %25 = call i32 @list_del(%struct.list_head* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.list_head*, %struct.list_head** %3, align 8
  ret %struct.list_head* %27
}

declare dso_local i32 @list_del(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
