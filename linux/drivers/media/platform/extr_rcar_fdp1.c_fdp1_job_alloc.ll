; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_job_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_job_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_job = type { i32 }
%struct.fdp1_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fdp1_job* (%struct.fdp1_dev*)* @fdp1_job_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fdp1_job* @fdp1_job_alloc(%struct.fdp1_dev* %0) #0 {
  %2 = alloca %struct.fdp1_dev*, align 8
  store %struct.fdp1_dev* %0, %struct.fdp1_dev** %2, align 8
  %3 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %4 = load %struct.fdp1_dev*, %struct.fdp1_dev** %2, align 8
  %5 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %4, i32 0, i32 0
  %6 = call %struct.fdp1_job* @list_remove_job(%struct.fdp1_dev* %3, i32* %5)
  ret %struct.fdp1_job* %6
}

declare dso_local %struct.fdp1_job* @list_remove_job(%struct.fdp1_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
