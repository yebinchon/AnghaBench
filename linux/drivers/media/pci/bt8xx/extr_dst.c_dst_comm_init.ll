; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_comm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_comm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Initializing DST.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"PIO Enable Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RDC 8820 State RESET Failed.\0A\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_comm_init(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %6 = call i64 @dst_pio_enable(%struct.dst_state* %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %12 = call i64 @rdc_reset_state(%struct.dst_state* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %28

16:                                               ; preds = %10
  %17 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @msleep(i32 100)
  br label %27

25:                                               ; preds = %16
  %26 = call i32 @msleep(i32 5)
  br label %27

27:                                               ; preds = %25, %23
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %14, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i64 @dst_pio_enable(%struct.dst_state*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @rdc_reset_state(%struct.dst_state*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
