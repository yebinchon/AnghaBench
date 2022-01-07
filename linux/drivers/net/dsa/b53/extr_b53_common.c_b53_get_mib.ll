; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_mib_desc = type { i32 }
%struct.b53_device = type { i32 }

@b53_mibs_65 = common dso_local global %struct.b53_mib_desc* null, align 8
@b53_mibs_63xx = common dso_local global %struct.b53_mib_desc* null, align 8
@b53_mibs_58xx = common dso_local global %struct.b53_mib_desc* null, align 8
@b53_mibs = common dso_local global %struct.b53_mib_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b53_mib_desc* (%struct.b53_device*)* @b53_get_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b53_mib_desc* @b53_get_mib(%struct.b53_device* %0) #0 {
  %2 = alloca %struct.b53_mib_desc*, align 8
  %3 = alloca %struct.b53_device*, align 8
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  %4 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %5 = call i64 @is5365(%struct.b53_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_65, align 8
  store %struct.b53_mib_desc* %8, %struct.b53_mib_desc** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %11 = call i64 @is63xx(%struct.b53_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_63xx, align 8
  store %struct.b53_mib_desc* %14, %struct.b53_mib_desc** %2, align 8
  br label %23

15:                                               ; preds = %9
  %16 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %17 = call i64 @is58xx(%struct.b53_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_58xx, align 8
  store %struct.b53_mib_desc* %20, %struct.b53_mib_desc** %2, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs, align 8
  store %struct.b53_mib_desc* %22, %struct.b53_mib_desc** %2, align 8
  br label %23

23:                                               ; preds = %21, %19, %13, %7
  %24 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %2, align 8
  ret %struct.b53_mib_desc* %24
}

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i64 @is63xx(%struct.b53_device*) #1

declare dso_local i64 @is58xx(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
