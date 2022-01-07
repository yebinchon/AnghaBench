; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_slot_is_switched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_slot_is_switched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"cxl: np = NULL\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pciex\00", align 1
@CXL_MAX_PCIEX_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_slot_is_switched(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %6)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @of_node_get(%struct.device_node* %14)
  br label %16

16:                                               ; preds = %26, %13
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %20)
  store %struct.device_node* %21, %struct.device_node** %4, align 8
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_node_is_type(%struct.device_node* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %25, %16
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CXL_MAX_PCIEX_PARENT, align 4
  %34 = icmp sgt i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_is_type(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
