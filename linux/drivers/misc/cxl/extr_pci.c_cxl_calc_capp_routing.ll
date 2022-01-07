; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_calc_capp_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_calc_capp_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ibm,chip-id\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cxl: invalid phb index\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"cxl: invalid capp unit id (phb_index: %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_calc_capp_routing(%struct.pci_dev* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %14 = call %struct.device_node* @pnv_pci_get_phb_node(%struct.pci_dev* %13)
  store %struct.device_node* %14, %struct.device_node** %11, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %69

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %30, %19
  %21 = load %struct.device_node*, %struct.device_node** %11, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.device_node*, %struct.device_node** %11, align 8
  %25 = call i32* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %25, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load %struct.device_node*, %struct.device_node** %11, align 8
  %32 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %31)
  store %struct.device_node* %32, %struct.device_node** %11, align 8
  br label %20

33:                                               ; preds = %28
  %34 = load %struct.device_node*, %struct.device_node** %11, align 8
  %35 = icmp ne %struct.device_node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %69

39:                                               ; preds = %33
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @be32_to_cpup(i32* %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.device_node*, %struct.device_node** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @get_phb_index(%struct.device_node* %43, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %69

51:                                               ; preds = %39
  %52 = load %struct.device_node*, %struct.device_node** %11, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_capp_unit_id(%struct.device_node* %52, i32 %54)
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.device_node*, %struct.device_node** %11, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %51
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %62, %48, %36, %16
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.device_node* @pnv_pci_get_phb_node(%struct.pci_dev*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @get_phb_index(%struct.device_node*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @get_capp_unit_id(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
