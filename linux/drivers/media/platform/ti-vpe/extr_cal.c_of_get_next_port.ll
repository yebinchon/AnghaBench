; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_of_get_next_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_of_get_next_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device_node*, %struct.device_node*)* @of_get_next_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @of_get_next_port(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %55

12:                                               ; preds = %2
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %21, %struct.device_node** %4, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %24, %struct.device_node** %6, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  br label %53

27:                                               ; preds = %12
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call %struct.device_node* @of_get_parent(%struct.device_node* %28)
  store %struct.device_node* %29, %struct.device_node** %8, align 8
  %30 = load %struct.device_node*, %struct.device_node** %8, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %55

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %45, %33
  %35 = load %struct.device_node*, %struct.device_node** %8, align 8
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call %struct.device_node* @of_get_next_child(%struct.device_node* %35, %struct.device_node* %36)
  store %struct.device_node* %37, %struct.device_node** %6, align 8
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = icmp ne %struct.device_node* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.device_node*, %struct.device_node** %8, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %55

43:                                               ; preds = %34
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %44, %struct.device_node** %5, align 8
  br label %45

45:                                               ; preds = %43
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i32 @of_node_name_eq(%struct.device_node* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %34, label %50

50:                                               ; preds = %45
  %51 = load %struct.device_node*, %struct.device_node** %8, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  br label %53

53:                                               ; preds = %50, %22
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %54, %struct.device_node** %3, align 8
  br label %55

55:                                               ; preds = %53, %40, %32, %11
  %56 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %56
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @of_node_name_eq(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
