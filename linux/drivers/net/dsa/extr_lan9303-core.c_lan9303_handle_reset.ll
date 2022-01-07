; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_handle_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_handle_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan9303*)* @lan9303_handle_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan9303_handle_reset(%struct.lan9303* %0) #0 {
  %2 = alloca %struct.lan9303*, align 8
  store %struct.lan9303* %0, %struct.lan9303** %2, align 8
  %3 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %4 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %10 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %15 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @msleep(i64 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %20 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @gpiod_set_value_cansleep(i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
