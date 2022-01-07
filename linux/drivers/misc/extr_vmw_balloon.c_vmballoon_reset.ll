; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32, i32, i32 }

@VMW_BALLOON_CAPABILITIES = common dso_local global i32 0, align 4
@VMW_BALLOON_BATCHED_CMDS = common dso_local global i32 0, align 4
@VMW_BALLOON_BASIC_CMDS = common dso_local global i32 0, align 4
@VMW_BALLOON_STAT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to initialize vmci doorbell\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to send guest ID to the host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmballoon*)* @vmballoon_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmballoon_reset(%struct.vmballoon* %0) #0 {
  %2 = alloca %struct.vmballoon*, align 8
  %3 = alloca i32, align 4
  store %struct.vmballoon* %0, %struct.vmballoon** %2, align 8
  %4 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %5 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %4, i32 0, i32 2
  %6 = call i32 @down_write(i32* %5)
  %7 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %8 = call i32 @vmballoon_vmci_cleanup(%struct.vmballoon* %7)
  %9 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %10 = call i32 @vmballoon_pop(%struct.vmballoon* %9)
  %11 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %12 = load i32, i32* @VMW_BALLOON_CAPABILITIES, align 4
  %13 = call i32 @vmballoon_send_start(%struct.vmballoon* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %18 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VMW_BALLOON_BATCHED_CMDS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %25 = call i64 @vmballoon_init_batching(%struct.vmballoon* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %29 = call i32 @vmballoon_send_start(%struct.vmballoon* %28, i32 0)
  br label %61

30:                                               ; preds = %23
  br label %42

31:                                               ; preds = %16
  %32 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %33 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VMW_BALLOON_BASIC_CMDS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %40 = call i32 @vmballoon_deinit_batching(%struct.vmballoon* %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %44 = load i32, i32* @VMW_BALLOON_STAT_RESET, align 4
  %45 = call i32 @vmballoon_stats_gen_inc(%struct.vmballoon* %43, i32 %44)
  %46 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %47 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %49 = call i32 @vmballoon_vmci_init(%struct.vmballoon* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %42
  %55 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %56 = call i64 @vmballoon_send_guest_id(%struct.vmballoon* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %27, %15
  %62 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %63 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %62, i32 0, i32 2
  %64 = call i32 @up_write(i32* %63)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @vmballoon_vmci_cleanup(%struct.vmballoon*) #1

declare dso_local i32 @vmballoon_pop(%struct.vmballoon*) #1

declare dso_local i32 @vmballoon_send_start(%struct.vmballoon*, i32) #1

declare dso_local i64 @vmballoon_init_batching(%struct.vmballoon*) #1

declare dso_local i32 @vmballoon_deinit_batching(%struct.vmballoon*) #1

declare dso_local i32 @vmballoon_stats_gen_inc(%struct.vmballoon*, i32) #1

declare dso_local i32 @vmballoon_vmci_init(%struct.vmballoon*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @vmballoon_send_guest_id(%struct.vmballoon*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
