; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_syscon.c_syscon_regmap_lookup_by_phandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_syscon.c_syscon_regmap_lookup_by_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regmap*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %11, i8* %12, i32 0)
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.regmap* @ERR_PTR(i32 %21)
  store %struct.regmap* %22, %struct.regmap** %3, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %24)
  store %struct.regmap* %25, %struct.regmap** %7, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %28, %struct.regmap** %3, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.regmap*, %struct.regmap** %3, align 8
  ret %struct.regmap* %30
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
