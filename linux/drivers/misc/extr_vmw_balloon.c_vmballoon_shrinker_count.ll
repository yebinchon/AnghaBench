; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_shrinker_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_shrinker_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32 }
%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32 }

@balloon = common dso_local global %struct.vmballoon zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shrinker*, %struct.shrink_control*)* @vmballoon_shrinker_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmballoon_shrinker_count(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca %struct.shrinker*, align 8
  %4 = alloca %struct.shrink_control*, align 8
  %5 = alloca %struct.vmballoon*, align 8
  store %struct.shrinker* %0, %struct.shrinker** %3, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %4, align 8
  store %struct.vmballoon* @balloon, %struct.vmballoon** %5, align 8
  %6 = load %struct.vmballoon*, %struct.vmballoon** %5, align 8
  %7 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %6, i32 0, i32 0
  %8 = call i64 @atomic64_read(i32* %7)
  ret i64 %8
}

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
