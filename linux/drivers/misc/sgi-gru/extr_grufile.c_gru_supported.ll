; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufile.c_gru_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@uv_hub_info = common dso_local global %struct.TYPE_2__* null, align 8
@UV3_HUB_REVISION_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gru_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_supported() #0 {
  %1 = call i64 (...) @is_uv_system()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_hub_info, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UV3_HUB_REVISION_BASE, align 8
  %8 = icmp slt i64 %6, %7
  br label %9

9:                                                ; preds = %3, %0
  %10 = phi i1 [ false, %0 ], [ %8, %3 ]
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i64 @is_uv_system(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
