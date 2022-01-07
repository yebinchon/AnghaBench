; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.velocity_info*, i8)* @velocity_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @velocity_set_power_state(%struct.velocity_info* %0, i8 signext %1) #0 {
  %3 = alloca %struct.velocity_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %10 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %15 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @pci_set_power_state(i64 %16, i8 signext %17)
  br label %24

19:                                               ; preds = %2
  %20 = load i8, i8* %4, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr i8, i8* %21, i64 340
  %23 = call i32 @writeb(i8 signext %20, i8* %22)
  br label %24

24:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @pci_set_power_state(i64, i8 signext) #1

declare dso_local i32 @writeb(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
