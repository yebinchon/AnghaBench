; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_reinit_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_reinit_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i64, %struct.hermes }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*)* @orinoco_reinit_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_reinit_firmware(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.hermes*, align 8
  %4 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %5 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %6 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %5, i32 0, i32 1
  store %struct.hermes* %6, %struct.hermes** %3, align 8
  %7 = load %struct.hermes*, %struct.hermes** %3, align 8
  %8 = getelementptr inbounds %struct.hermes, %struct.hermes* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.hermes*)*, i32 (%struct.hermes*)** %10, align 8
  %12 = load %struct.hermes*, %struct.hermes** %3, align 8
  %13 = call i32 %11(%struct.hermes* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %15 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %23 = call i32 @orinoco_download(%struct.orinoco_private* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %28 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %18, %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %35 = call i32 @orinoco_hw_allocate_fid(%struct.orinoco_private* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @orinoco_download(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_hw_allocate_fid(%struct.orinoco_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
