; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_pg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_me_hw = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, i32)* @mei_me_pg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_pg_intr(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_me_hw*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %6)
  store %struct.mei_me_hw* %7, %struct.mei_me_hw** %5, align 8
  %8 = load %struct.mei_me_hw*, %struct.mei_me_hw** %5, align 8
  %9 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mei_me_d0i3_intr(%struct.mei_device* %13, i32 %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %18 = call i32 @mei_me_pg_legacy_intr(%struct.mei_device* %17)
  br label %19

19:                                               ; preds = %16, %12
  ret void
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_me_d0i3_intr(%struct.mei_device*, i32) #1

declare dso_local i32 @mei_me_pg_legacy_intr(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
