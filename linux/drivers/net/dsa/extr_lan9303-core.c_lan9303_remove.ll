; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"shutting down failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lan9303_remove(%struct.lan9303* %0) #0 {
  %2 = alloca %struct.lan9303*, align 8
  %3 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %2, align 8
  %4 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %5 = call i32 @lan9303_disable_processing(%struct.lan9303* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %10 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_warn(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %15 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dsa_unregister_switch(i32 %16)
  %18 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %19 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpiod_set_value_cansleep(i32 %20, i32 1)
  %22 = load %struct.lan9303*, %struct.lan9303** %2, align 8
  %23 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_unexport(i32 %24)
  ret i32 0
}

declare dso_local i32 @lan9303_disable_processing(%struct.lan9303*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dsa_unregister_switch(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @gpiod_unexport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
