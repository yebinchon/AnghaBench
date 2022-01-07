; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_t4_cleanup_clip_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_t4_cleanup_clip_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.clip_tbl* }
%struct.clip_tbl = type { %struct.clip_tbl* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_cleanup_clip_tbl(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.clip_tbl*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load %struct.clip_tbl*, %struct.clip_tbl** %5, align 8
  store %struct.clip_tbl* %6, %struct.clip_tbl** %3, align 8
  %7 = load %struct.clip_tbl*, %struct.clip_tbl** %3, align 8
  %8 = icmp ne %struct.clip_tbl* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.clip_tbl*, %struct.clip_tbl** %3, align 8
  %11 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %10, i32 0, i32 0
  %12 = load %struct.clip_tbl*, %struct.clip_tbl** %11, align 8
  %13 = icmp ne %struct.clip_tbl* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.clip_tbl*, %struct.clip_tbl** %3, align 8
  %16 = getelementptr inbounds %struct.clip_tbl, %struct.clip_tbl* %15, i32 0, i32 0
  %17 = load %struct.clip_tbl*, %struct.clip_tbl** %16, align 8
  %18 = call i32 @kvfree(%struct.clip_tbl* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.clip_tbl*, %struct.clip_tbl** %3, align 8
  %21 = call i32 @kvfree(%struct.clip_tbl* %20)
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @kvfree(%struct.clip_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
