; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_command_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_command_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%s: cmd done, tfr ongoing (CMD%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_command_done(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %6 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %12 = call i32 @mmc_complete_cmd(%struct.mmc_request* %11)
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = call i32 @mmc_hostname(%struct.mmc_host* %13)
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mmc_complete_cmd(%struct.mmc_request*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
