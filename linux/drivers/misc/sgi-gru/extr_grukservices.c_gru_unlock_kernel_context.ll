; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_unlock_kernel_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_unlock_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i32 }

@gru_base = common dso_local global %struct.gru_blade_state** null, align 8
@unlock_kernel_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gru_unlock_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_unlock_kernel_context(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gru_blade_state*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.gru_blade_state**, %struct.gru_blade_state*** @gru_base, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.gru_blade_state*, %struct.gru_blade_state** %4, i64 %6
  %8 = load %struct.gru_blade_state*, %struct.gru_blade_state** %7, align 8
  store %struct.gru_blade_state* %8, %struct.gru_blade_state** %3, align 8
  %9 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %10 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %9, i32 0, i32 0
  %11 = call i32 @up_read(i32* %10)
  %12 = load i32, i32* @unlock_kernel_context, align 4
  %13 = call i32 @STAT(i32 %12)
  ret void
}

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
