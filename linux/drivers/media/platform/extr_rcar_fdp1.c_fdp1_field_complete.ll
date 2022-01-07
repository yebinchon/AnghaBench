; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_field_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_field_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { i32 }
%struct.fdp1_field_buffer = type { i32, i64 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_ctx*, %struct.fdp1_field_buffer*)* @fdp1_field_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_field_complete(%struct.fdp1_ctx* %0, %struct.fdp1_field_buffer* %1) #0 {
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.fdp1_field_buffer*, align 8
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %3, align 8
  store %struct.fdp1_field_buffer* %1, %struct.fdp1_field_buffer** %4, align 8
  %5 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %4, align 8
  %6 = icmp ne %struct.fdp1_field_buffer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %19

8:                                                ; preds = %2
  %9 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %18 = call i32 @v4l2_m2m_buf_done(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %7, %13, %8
  ret void
}

declare dso_local i32 @v4l2_m2m_buf_done(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
