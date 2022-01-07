; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to register switch: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lan9303_probe(%struct.lan9303* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %8 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %7, i32 0, i32 2
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %11 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %10, i32 0, i32 1
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @lan9303_probe_reset_gpio(%struct.lan9303* %13, %struct.device_node* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %22 = call i32 @lan9303_handle_reset(%struct.lan9303* %21)
  %23 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %24 = call i32 @lan9303_check_device(%struct.lan9303* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %31 = call i32 @lan9303_register_switch(%struct.lan9303* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %36 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34, %27, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lan9303_probe_reset_gpio(%struct.lan9303*, %struct.device_node*) #1

declare dso_local i32 @lan9303_handle_reset(%struct.lan9303*) #1

declare dso_local i32 @lan9303_check_device(%struct.lan9303*) #1

declare dso_local i32 @lan9303_register_switch(%struct.lan9303*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
